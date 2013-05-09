package grailstwitter

import grails.plugins.springsecurity.Secured

class HomeController {
	
	def timelineService
	def springSecurityService
	
    def index() {
        def messages = timelineService.getTimelineForUser(springSecurityService.principal.username)
        [statusMessages: messages]
	}
}
