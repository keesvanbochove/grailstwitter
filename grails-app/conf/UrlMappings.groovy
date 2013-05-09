class UrlMappings {

	static mappings = {
        "/person/$username"(controller: "home", action: "user")

        "/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(controller: "home", action: "index")
		"500"(view:'/error')
	}
}
