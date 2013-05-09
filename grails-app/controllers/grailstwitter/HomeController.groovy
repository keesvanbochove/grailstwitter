package grailstwitter

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
        def person = statusService.findPersonByUsername(username)
        boolean isFollowing;
        if(springSecurityService.isLoggedIn()) {
            isFollowing = springSecurityService.currentUser.followed.contains(person)
        }
        [statusMessages: messages, person: person, isFollowing: isFollowing]
    }

    def follow(String username) {
        statusService.follow(username)
        redirect controller: 'home',action: 'user', params: [username: username]
    }

    def unfollow(String username) {
        statusService.unFollow(username)
        redirect controller: 'home',action: 'user', params: [username: username]
    }
}
