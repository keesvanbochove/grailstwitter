package grailstwitter

import grails.plugins.springsecurity.Secured

class HomeController {
	
	def statusService
	def timelineService
	def springSecurityService
	
    def index() {
        def messages = timelineService.getTimeline()
		println(messages)
        [statusMessages: messages]
	}

    def user(String username) {
        def messages = timelineService.getTimelineForUser(username)
        [statusMessages: messages]
    }

    def test() {
    }
}
