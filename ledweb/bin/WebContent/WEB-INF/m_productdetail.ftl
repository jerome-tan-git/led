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

</head>
<body>
<div data-role="page" id="demo-page" data-theme="d">

    <div data-role="header" data-theme="b" data-position="fixed">
        <h1>Swipe left or right</h1>
		<a href="#left-panel" data-theme="d" data-icon="arrow-r" data-iconpos="notext" data-shadow="false" data-iconshadow="false" class="ui-icon-nodisc">Open left panel</a>
		<a href="#right-panel" data-theme="d" data-icon="arrow-l" data-iconpos="notext" data-shadow="false" data-iconshadow="false" class="ui-icon-nodisc">Open right panel</a>
    </div><!-- /header -->

    <div data-role="content">
	   <p>/</p>
	   <p>/</p>
	   <p>/</p>
	   <p>/</p>
	   <p>/</p>
	   <p>/</p>
	   <p>/</p>
	   <p>/</p>
	   <p>/</p>
	   <p>/</p>
	   <p>/</p>
	   <p>/</p>
	   <p>/</p>
	   <p>/</p>
    </div><!-- /content -->

    <div data-role="panel" id="left-panel" data-theme="b" data-display="push">
		<ol data-role="listview">
		    <li>Acura</li>
		    <li>Audi</li>
		    <li>BMW</li>
		    <li>Cadillac</li>
		    <li>Ferrari</li>
		</ol>

    </div><!-- /panel -->

    <div data-role="panel" id="right-panel" data-display="push" data-position="right" data-theme="c">

    	<p>Right push panel.</p>
		<a href="#" data-rel="close" data-role="button" data-mini="true" data-inline="true" data-icon="delete" data-iconpos="right">Close</a>

    </div><!-- /panel -->

</div><!-- /page -->
</body>
</html>