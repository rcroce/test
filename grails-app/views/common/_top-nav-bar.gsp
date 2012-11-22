<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container">
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-responsive-collapse">
				<sec:ifLoggedIn>
					<span class="icon-bar"></span>
				</sec:ifLoggedIn>
			</a>
			<g:link controller="home" class="brand">Home</g:link>
			<div class="nav-collapse collapse navbar-responsive-collapse">
				<sec:ifLoggedIn>
					<ul class="nav pull-right">
                      <li class="dropdown">
                        <a href="<g:createLink controller="home"/>" class="dropdown-toggle" data-toggle="dropdown"><sec:username/><b class="caret"></b></a>
                        <ul class="dropdown-menu">
                          <li><g:link controller="profile">Settings</g:link></li>
                          <li><g:link controller="logout">Sign out</g:link></li>
                        </ul>
                      </li>
                    </ul>
				</sec:ifLoggedIn>
			</div>
		</div>
	</div>
</div>