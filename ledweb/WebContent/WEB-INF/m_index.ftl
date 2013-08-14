<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Demos - jQuery Mobile Demos</title>
	<link rel="stylesheet"  href="../css/jquery.mobile-1.3.2.min.css">
	<link rel="stylesheet" href="../css/jqm-demos.css">
	<link rel="stylesheet" href="../css/demo.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script src="../js/jquery.mobile-1.3.2.min.js"></script> 
<script type="text/javascript" src="../js/jquery.flexslider.js"></script>
<script type="text/javascript">
	$(window).load(function() {
	  $('.flexslider').flexslider({
	    animation: "slide",
	    slideshow: true,
	    pauseOnAction: false,
		pauseOnHover: false,
	  });
	});	
</script>
<style>
img{   
        max-width:100%;height:auto;   
} 		
</style>
</head>
<body>
<div data-role="page" id="demo-page" data-theme="d">

    <div data-role="header" data-theme="b">
        <h1>Swipe left or right</h1>
		<a href="#left-panel" data-theme="d" data-icon="arrow-r" data-iconpos="notext" data-shadow="false" data-iconshadow="false" class="ui-icon-nodisc">Open left panel</a>
		<a href="#right-panel" data-theme="d" data-icon="arrow-l" data-iconpos="notext" data-shadow="false" data-iconshadow="false" class="ui-icon-nodisc">Open right panel</a>
    </div><!-- /header -->

    <div data-role="content" style="padding: 0 0 0 0">
		 <div class="flexslider">
		  <ul class="slides">
		    <li>
		      <img src="../images/example-slide-1.jpg" />
		    </li>
		    <li>
		      <img src="../images/example-slide-2.jpg" />
		    </li>
		    <li>
		      <img src="../images/example-slide-3.jpg" />
		    </li>
		    <li>
		      <img src="../images/example-slide-4.jpg" />
		    </li>
		  </ul>
		</div>
	    <fieldset class="ui-grid-a" style="margin-top:-7px">
			<div class="ui-block-a"><img src="../images/templatemo_image_02.png" style="width:100%" /></div>
			<div class="ui-block-b"><img src="../images/templatemo_image_03.png" style="width:100%" /></div>	   
		</fieldset>
		<fieldset class="ui-grid-a" style="margin-top:-7px">
			<div class="ui-block-a"><a href="./productDetail.do"><img src="../images/templatemo_image_04.png" style="width:100%" /></a></div>
			<div class="ui-block-b"><img src="../images/templatemo_image_05.png" style="width:100%" /></div>	   
		</fieldset>
		<div data-role="footer" style="margin-top:-7px"> 
			<h4>Footer content</h4>  
		</div>
    </div>
    </div><!-- /content -->

    <div data-role="panel" id="left-panel" data-theme="b">
		<ul data-role="listview">
		    <li><a href="#">Acura</a></li>
		    <li><a href="#">Audi</a></li>
		    <li><a href="#">BMW</a></li>
		    <li><a href="#">Cadillac</a></li>
		    <li><a href="#">Ferrari</a></li>
		</ul>

    </div><!-- /panel -->

    <div data-role="panel" id="right-panel" data-display="push" data-position="right" data-theme="c">

    	<p>Right push panel.</p>
		<a href="#" data-rel="close" data-role="button" data-mini="true" data-inline="true" data-icon="delete" data-iconpos="right">Close</a>

    </div><!-- /panel -->

</div><!-- /page -->

  <script>
   
  </script>

</body>
</html>