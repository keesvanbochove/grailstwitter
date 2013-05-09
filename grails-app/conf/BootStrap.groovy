import org.grails.twitter.Status
import org.grails.twitter.auth.Authority
import org.grails.twitter.auth.Person
import org.grails.twitter.auth.PersonAuthority

class BootStrap {

    def springSecurityService

    def init = { servletContext ->
        if (!Person.count()) {
            createData()
        }
    }

    def destroy = {
    }

    private void createData() {
        def userRole = new Authority(authority: 'ROLE_USER').save()

        String password = springSecurityService.encodePassword('password')

        []

        [jeff: 'Jeff Brown', graeme: 'Graeme Rocher', burt: 'Burt Beckwith', peter: 'Peter Ledbrook'].each { userName, realName ->
            def user = new Person(username: userName, realName: realName, password: password, enabled: true).save()
            def status = new Status(message: "I'm enjoying a cup of coffee", author: user)
            def status2 = new Status(message: "Today the sun shines bright", author: user)
            PersonAuthority.create user, userRole, true
            status.save()
            status2.save()
        }
    }
}
