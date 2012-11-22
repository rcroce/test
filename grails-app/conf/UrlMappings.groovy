class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(view:"/index")
		"500"(view:'/error')
		
		"/error"(controller: "home", action: "error")
		
//		"/login/$action?"(controller: "login")
//		"/logout/$action?"(controller: "logout")
	}	
}
