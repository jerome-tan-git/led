<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Demos - jQuery Mobile Demos</title>
	<link rel="stylesheet"  href="../css/jquery.mobile-1.3.2.min.css">
	<link rel="stylesheet" href="../css/jqm-demos.css">
	
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script src="../js/jquery.mobile-1.3.2.min.js"></script> 
<script type="text/javascript" src="../js/jquery.slides.js"></script>
<script>
$(document).ready(function() {
     $width = $('#content').width();
     $('#content img').css({
          'max-width' : $width , 'height' : 'auto'
          });
     });
 $(document).bind('orientationchange', function() {
	$width = $('#content').width();
	$('#content img').css({
	'max-width' : $width , 'height' : 'auto'
	});
	});
	
 $(document).ready(function() {
      $('#slides').slidesjs({
	       play: {
	          active: true,
	          auto: true,
	          interval: 4000,
	          swap: true,
	          restartDelay: 2500
	        }
      });
    });	
</script>
<style>
#slides {
      display: none
    }

    #slides .slidesjs-navigation {
      margin-top:5px;
    }

    a.slidesjs-next,
    a.slidesjs-previous,
    a.slidesjs-play,
    a.slidesjs-stop {
      background-image: url(../images/btns-next-prev.png);
      background-repeat: no-repeat;
      display:block;
      width:12px;
      height:18px;
      overflow: hidden;
      text-indent: -9999px;
      float: left;
      margin-right:5px;
      display:none;
    }

    a.slidesjs-next {
      margin-right:10px;
      background-position: -12px 0;
      display:none;
    }

    a:hover.slidesjs-next {
      background-position: -12px -18px;
      display:none;
    }

    a.slidesjs-previous {
      background-position: 0 0;
      display:none;
    }

    a:hover.slidesjs-previous {
      background-position: 0 -18px;
      display:none;
    }

    a.slidesjs-play {
      width:15px;
      background-position: -25px 0;
      display:none;
    }

    a:hover.slidesjs-play {
      background-position: -25px -18px;
      display:none;
    }

    a.slidesjs-stop {
      width:18px;
      background-position: -41px 0;
      display:none !important;
    }

    a:hover.slidesjs-stop {
      background-position: -41px -18px;
      display:none;
    }

    .slidesjs-pagination {
      margin: 7px 0 0;
      float: right;
      list-style: none;
    }

    .slidesjs-pagination li {
      float: left;
      margin: 0 1px;
      display:none;
    }

    .slidesjs-pagination li a {
      display: block;
      width: 13px;
      height: 0;
      padding-top: 13px;
      background-image: url(../images/pagination.png);
      background-position: 0 0;
      float: left;
      overflow: hidden;
      display:none;
    }

    .slidesjs-pagination li a.active,
    .slidesjs-pagination li a:hover.active {
      background-position: 0 -13px
    }

    .slidesjs-pagination li a:hover {
      background-position: 0 -26px
    }

    #slides a:link,
    #slides a:visited {
      color: #333
    }

    #slides a:hover,
    #slides a:active {
      color: #9e2020
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
	   <div id="slides">
	      <img src="../images/example-slide-1.jpg" alt="Photo by: Missy S Link: http://www.flickr.com/photos/listenmissy/5087404401/">
	      <img src="../images/example-slide-2.jpg" alt="Photo by: Daniel Parks Link: http://www.flickr.com/photos/parksdh/5227623068/">
	      <img src="../images/example-slide-3.jpg" alt="Photo by: Mike Ranweiler Link: http://www.flickr.com/photos/27874907@N04/4833059991/">
	      <img src="../images/example-slide-4.jpg" alt="Photo by: Stuart SeegerLink: http://www.flickr.com/photos/stuseeger/97577796/">
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