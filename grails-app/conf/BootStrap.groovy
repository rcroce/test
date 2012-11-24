import com.test.SecRole
import com.test.SecUser
import com.test.SecUserSecRole

class BootStrap {

    def init = { servletContext ->
		
		def userRole = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(flush: true)
		def adminRole = SecRole.findByAuthority('ROLE_ADMIN') ?: new SecRole(authority: 'ROLE_ADMIN').save(flush: true)
		def facebRole = SecRole.findByAuthority('ROLE_FACEBOOK') ?: new SecRole(authority: 'ROLE_FACEBOOK').save(flush: true)
		
		def adminUser = SecUser.findByUsername('admin') ?: new SecUser(
			username: 'admin',
			password: 'admin',
			enabled: true).save(flush: true)

		def user1 = SecUser.findByUsername('rodrigo') ?: new SecUser(
			username: 'rodrigo',
			password: 'pass',
			enabled: true).save(flush: true)

		if (!adminUser.authorities.contains(adminRole)) {
			SecUserSecRole.create adminUser, adminRole
		}

		if (!user1.authorities.contains(userRole)) {
			SecUserSecRole.create user1, userRole
		}
	
    }
    def destroy = {
    }
}
