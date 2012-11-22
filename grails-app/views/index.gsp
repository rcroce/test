<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Test3</title>
	</head>
	<body>
		<div class="container">
			<div class="well">
				<h2 class="text-info">Find your favorite food, places, and prices.</h2>
			</div>
			<sec:ifNotLoggedIn>
				<div id="login-box">
					<g:render template="/login/login-box"/>
				</div>
			</sec:ifNotLoggedIn>
			<hr>
			<footer>
				<p class="muted credit pull-right">&copy; 2012 Giro4 - <g:meta name="app.version"/> on Grails <g:meta name="app.grails.version"/></p>
			</footer>
		</div>
	</body>
</html>
