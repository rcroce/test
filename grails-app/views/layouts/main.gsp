<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta name="description" content="Application Test">
	    <meta name="author" content="Rodrigo">
		<r:require modules='bootstrap-css, bootstrap-js'/>
		<g:layoutHead/>
		<r:layoutResources />
	    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
	    <!--[if lt IE 9]>
	      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	    <![endif]-->
	    <style type="text/css">
			body {
				padding-top: 80px;
				padding-bottom: 40px;
				<!--background-color: #f5f5f5;-->
			}
	    </style>
	</head>
	<body>
		<div id="top-nav-bar">
			<g:render template="/common/top-nav-bar"/>
		</div>
		<g:layoutBody/>
		<r:layoutResources />
	</body>
</html>
