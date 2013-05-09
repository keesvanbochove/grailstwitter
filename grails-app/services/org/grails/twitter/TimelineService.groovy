package org.grails.twitter

import grails.plugin.cache.CacheEvict
import grails.plugin.cache.Cacheable
import org.codehaus.groovy.grails.commons.ConfigurationHolder
import org.grails.twitter.auth.Person

class TimelineService {

	static transactional = false
	
    @CacheEvict('timeline')
    void clearTimelineCacheForUser(String username) {}

    def getTimeline() {
        println("test timeline")
        def messages = Status.findAll("from Status as s order by s.dateCreated desc")
        messages
    }
    
    @Cacheable('timeline')
    def getTimelineForUser(String username) {
        def per = Person.findByUsername(username)
        def query = Status.whereAny {
            author { username == per.username }
            if(per.followed) author in per.followed
        }.order 'dateCreated', 'desc'
        def messages = query.list(max: 10)
        messages
    }
}
