<r:require modules='application, login'/>
<div class='container'>
	<g:if test='${flash.message}'>
      <div class='alert alert-error'>${flash.message}</div>
	</g:if>
	<form id='loginForm' action='${resource(file: 'j_spring_security_check')}' method='POST' class='form-signin' autocomplete='off'>
	  <input name='j_username' id='username' type='text' class='input-block-level' placeholder='Email address' autofocus="autofocus"/>
	  <input name='j_password' id='password' type='password' class='input-block-level' placeholder='Password'/>
	  <label class="checkbox muted">
	    <input type='checkbox' name='_spring_security_remember_me' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>Remember me
	  </label>
	  <input name='login' id='submit' type='submit' value='sign in' class='btn btn-large btn-primary'/>
	  <facebookAuth:init>
        FB.Event.subscribe('auth.login', function() {
          if (typeof(console) === 'object' && typeof(console.log) === 'function') {
            console.log('Process auth.login...');
          }
          window.location.reload();
        });
      </facebookAuth:init>
      <sec:ifNotGranted roles="ROLE_FACEBOOK">
        <h3> Sign in with Facebook </h3>
        <facebookAuth:connect permissions="email"/>
      </sec:ifNotGranted>      
	</form>
</div>
