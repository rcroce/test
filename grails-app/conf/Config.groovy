// locations to search for config files that get merged into the main config;
// config files can be ConfigSlurper scripts, Java properties files, or classes
// in the classpath in ConfigSlurper format

//grails.config.locations = [ "classpath:${appName}-config.properties",
//                            "classpath:${appName}-config.groovy",
//                            "file:${userHome}/.grails/${appName}-config.properties",
//                            "file:${userHome}/.grails/${appName}-config.groovy"]
//
//if (System.properties["${appName}.config.location"]) {
//	grails.config.locations << "file:" + System.properties["${appName}.config.location"]
//}

def ENV_NAME = "GRAILS_CONFIG"

if(!grails.config.location || !(grails.config.location instanceof List)) {
	grails.config.location = []
}

if(System.getenv(ENV_NAME)) {
	println "Including configuration file specified in environment: " + System.getenv(ENV_NAME);
	grails.config.location << "file:" + System.getenv(ENV_NAME)
 
} else if(System.getProperty(ENV_NAME)) {
	println "Including configuration file specified on command line: " + System.getProperty(ENV_NAME);
	grails.config.location << "file:" + System.getProperty(ENV_NAME)
 
} else {
	println "No external configuration file defined."
}
