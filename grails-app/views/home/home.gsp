<!DOCTYPE html>
<html>
	<head>
		<title>Test</title>
		<meta name="layout" content="main"/>
	    <style type="text/css">
	    </style>
	    <script type="text/javascript"
	      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD2HXwXanthlBvi_5_wpujlDB-I_eEXb2M&sensor=false">
	    </script>
	    <script type="text/javascript">
	      function initialize() {
	        var mapOptions = {
	          center: new google.maps.LatLng(-34.397, 150.644),
	          zoom: 8,
	          mapTypeId: google.maps.MapTypeId.ROADMAP
	        };
	        var map = new google.maps.Map(document.getElementById("map_canvas"),
	            mapOptions);
	      }
	    </script>
	</head>
  <body onload="initialize()">
		<div class="container">
            <div class="row-fluid">
	            <div class='span6'>
					<div class="input-append">
					  <input class='input-block-level' placeholder='Where are you?' id="where-input" type="text" autofocus="autofocus">
					  <button class="btn btn-info" type="button">Find me</button>
					</div>
	            </div>
	            <div class='span6'>
    				<div id="map_canvas"></div>
	            </div>
			</div>
			<hr>
			<footer>
				<p class="muted credit pull-right">&copy; 2012 Giro4 - <g:meta name="app.version"/> on Grails <g:meta name="app.grails.version"/></p>
			</footer>
		</div>
  </body>
</html>
