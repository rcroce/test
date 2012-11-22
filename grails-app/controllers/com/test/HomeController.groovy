package com.test

import grails.plugins.springsecurity.Secured

class HomeController {

	@Secured(['ROLE_USER','ROLE_ADMIN'])
    def index() { render view: 'home'}
	
	@Secured(['ROLE_ADMIN'])
	def admin = { render 'Admin' }

	@Secured(['IS_AUTHENTICATED_FULLY'])
	def add = { render 'Adding...' }
 
	def global = { render 'No authentication required.' }
 
	def error = { render 'Error...' }
 
	@Secured(['IS_AUTHENTICATED_REMEMBERED'])
	def personal = { render 'Personal Remember' }

}
