<#assign s=JspTaglibs["/WEB-INF/struts-tags.tld"] />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.nailthumb.1.1.min.css" />
<link rel="stylesheet" type="text/css" href="css/global.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.nailthumb.1.1.min.js"></script>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
</head>
<style>
.bs-callout {
padding: 15px 30px 15px 15px;
border-left: 5px solid #eee;
}

.bs-callout-warning {
background-color: #fefbed;
border-color: #f1e7bc;
}
.bs-callout-gray {
background-color: #fefefe;
border-color: #d0e3f0;
}

.bs-callout-info {
background-color: #f0f7fd;
border-color: #d0e3f0;
}

.bs-callout-danger {
background-color: #fcf2f2;
border-color: #dFb5b4;
}
</style>



<script>
jQuery(document).ready(function() {
    jQuery('.nailthumb-container ').nailthumb({width:170,height:170});
});
</script>
<body>
<div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title" id="summary">Modal title</h4>
        </div>
        <div class="modal-body">
          <div id="messageBox"></div>
        </div>
        <div class="modal-footer">

          <a href="#" class="btn btn-default" data-dismiss="modal">Close</a>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->

<div class="navbar navbar-fixed-top">
  <div class="container">
    <a href="../" class="navbar-brand">Bootstrap 3 RC1</a>
    <button class="navbar-toggle" type="button" data-toggle="collapse">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <div class="nav-collapse collapse bs-navbar-collapse">
      <ul class="nav navbar-nav">
        <li>
          <a href="../getting-started">Getting started</a>
        </li>
        <li>
          <a href="../css">CSS</a>
        </li>
        <li class="active">
          <a href="../components">Components</a>
        </li>
        <li>
          <a href="../javascript">JavaScript</a>
        </li>
        <li>
          <a href="../customize">Customize</a>
        </li>
      </ul>
    </div>
  </div>
</div>


	<div class="row" style="padding-top:70px">
	<div class="col-lg-1"></div>
	  <div class="col-lg-2">
	  <div class="list-group"  style="background-color:#f5f5f5">
	  <a href="#" class="list-group-item active">
	    Cras justo odio
	  </a>
	  <a href="#" class="list-group-item">Product management
	  </a>
	  <a href="#" class="list-group-item">Category/Spec/Type management
	  </a>
	  <a href="#" class="list-group-item">Porta ac consectetur ac
	  </a>
	  <a href="#" class="list-group-item">Vestibulum at eros
	  </a>
	</div>
	</div>
			<div class="col-lg-8">
			<!-- a product-->
				<div class="bs-callout bs-callout-info">
				<div class="row">
				<div class="col-lg-3">
					<div class="nailthumb-container square" style="overflow: hidden; padding: 0px; width: 170px; height: 170px;"><img }"="" src="http://localhost/ledweb/UploadedImages/1375458018640_Water%20lilies.jpg" style="position: relative; width: 226.66666666666666px; height: 170px; top: 0px; left: -28.33333333333333px;" class="nailthumb-image"></div>
				</div>
				
				<div class="col-lg-9">
					<div class="row">
						<div class="col-lg-9">
				      		<h3>Need more examples?</h3>
				      	</div>
				      	<div class="col-lg-3">
				      		 <img class="pull-right" src="./images/1375543402_edit.png" /><div class="pull-right"> &nbsp;&nbsp;</div>
				      		<a href="#" data-toggle="tooltip" title="first tooltip"><img class="pull-right" src="./images/1375543476_cancel.png" /></a>
				      	</div>
			      	</div>
			      <p>
			      <span class="label label-info">Category</span>&nbsp;&nbsp;&nbsp;  <span class="label label-danger">13.25</span>
			      </p>

			 
			      <p>We dive into more grid layouts in a separate page, free of chrome and documentation to better show you the power of the grid.</p>
				<br />
			     <div class="bs-callout bs-callout-gray">
					<dl class="dl-horizontal">
				        <dt>Description lists</dt>
				        <dd>A description list is perfect for defining terms.</dd>
				        <dt>Euismod</dt>
				        <dd>Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</dd>
				        <dt>Malesuada porta</dt>
				        <dd>Etiam porta sem malesuada magna mollis euismod.</dd>
				        <dt>Felis euismod semper eget lacinia</dt>
				        <dd>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</dd>
				      </dl>
				 </div>
				 <br />
				  <div class="bs-callout bs-callout-gray">
				  	<span class="label">New</span>
				  	<span class="label">New</span>
				  	<span class="label">New</span>
				  	<span class="label">New</span>
				  </div>
			    </div></div></div><!--div class="bs-callout bs-callout-info"-->
			    
			    <br />
			    <!-- a product-->
			    
			    
			    <!-- a product-->
				<div class="bs-callout bs-callout-info">
				<div class="row">
				<div class="col-lg-3">
					<div class="nailthumb-container square" style="overflow: hidden; padding: 0px; width: 170px; height: 170px;"><img }"="" src="http://localhost/ledweb/UploadedImages/1375458018640_Water%20lilies.jpg" style="position: relative; width: 226.66666666666666px; height: 170px; top: 0px; left: -28.33333333333333px;" class="nailthumb-image"></div>
				</div>
				
				<div class="col-lg-9">
					<div class="row">
						<div class="col-lg-9">
				      		<h3>Need more examples?</h3>
				      	</div>
				      	<div class="col-lg-3">
				      		 <img class="pull-right" src="./images/1375543402_edit.png" /><div class="pull-right"> &nbsp;&nbsp;</div>
				      		<a href="#" data-toggle="tooltip" title="first tooltip"><img class="pull-right" src="./images/1375543476_cancel.png" /></a>
				      	</div>
			      	</div>
			      <p>
			      <span class="label label-info">Category</span>&nbsp;&nbsp;&nbsp;  <span class="label label-danger">13.25</span>
			      </p>

			 
			      <p>We dive into more grid layouts in a separate page, free of chrome and documentation to better show you the power of the grid.</p>
				<br />
			     <div class="bs-callout bs-callout-gray">
					<dl class="dl-horizontal">
				        <dt>Description lists</dt>
				        <dd>A description list is perfect for defining terms.</dd>
				        <dt>Euismod</dt>
				        <dd>Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</dd>
				        <dt>Malesuada porta</dt>
				        <dd>Etiam porta sem malesuada magna mollis euismod.</dd>
				        <dt>Felis euismod semper eget lacinia</dt>
				        <dd>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</dd>
				      </dl>
				 </div>
				 <br />
				  <div class="bs-callout bs-callout-gray">
				  	<span class="label">New</span>
				  	<span class="label">New</span>
				  	<span class="label">New</span>
				  	<span class="label">New</span>
				  </div>
			    </div></div></div><!--div class="bs-callout bs-callout-info"-->
			    
			    <br />
			    <!-- a product-->
			    <!-- a product-->
				<div class="bs-callout bs-callout-info">
				<div class="row">
				<div class="col-lg-3">
					<div class="nailthumb-container square" style="overflow: hidden; padding: 0px; width: 170px; height: 170px;"><img }"="" src="http://localhost/ledweb/UploadedImages/1375458018640_Water%20lilies.jpg" style="position: relative; width: 226.66666666666666px; height: 170px; top: 0px; left: -28.33333333333333px;" class="nailthumb-image"></div>
				</div>
				
				<div class="col-lg-9">
					<div class="row">
						<div class="col-lg-9">
				      		<h3>Need more examples?</h3>
				      	</div>
				      	<div class="col-lg-3">
				      		 <img class="pull-right" src="./images/1375543402_edit.png" /><div class="pull-right"> &nbsp;&nbsp;</div>
				      		<a href="#" data-toggle="tooltip" title="first tooltip"><img class="pull-right" src="./images/1375543476_cancel.png" /></a>
				      	</div>
			      	</div>
			      <p>
			      <span class="label label-info">Category</span>&nbsp;&nbsp;&nbsp;  <span class="label label-danger">13.25</span>
			      </p>

			 
			      <p>We dive into more grid layouts in a separate page, free of chrome and documentation to better show you the power of the grid.</p>
				<br />
			     <div class="bs-callout bs-callout-gray">
					<dl class="dl-horizontal">
				        <dt>Description lists</dt>
				        <dd>A description list is perfect for defining terms.</dd>
				        <dt>Euismod</dt>
				        <dd>Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</dd>
				        <dt>Malesuada porta</dt>
				        <dd>Etiam porta sem malesuada magna mollis euismod.</dd>
				        <dt>Felis euismod semper eget lacinia</dt>
				        <dd>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</dd>
				      </dl>
				 </div>
				 <br />
				  <div class="bs-callout bs-callout-gray">
				  	<span class="label">New</span>
				  	<span class="label">New</span>
				  	<span class="label">New</span>
				  	<span class="label">New</span>
				  </div>
			    </div></div></div><!--div class="bs-callout bs-callout-info"-->
			    
			    <br />
			    <!-- a product-->
			    <!-- a product-->
				<div class="bs-callout bs-callout-info">
				<div class="row">
				<div class="col-lg-3">
					<div class="nailthumb-container square" style="overflow: hidden; padding: 0px; width: 170px; height: 170px;"><img }"="" src="http://localhost/ledweb/UploadedImages/1375458018640_Water%20lilies.jpg" style="position: relative; width: 226.66666666666666px; height: 170px; top: 0px; left: -28.33333333333333px;" class="nailthumb-image"></div>
				</div>
				
				<div class="col-lg-9">
					<div class="row">
						<div class="col-lg-9">
				      		<h3>Need more examples?</h3>
				      	</div>
				      	<div class="col-lg-3">
				      		 <img class="pull-right" src="./images/1375543402_edit.png" /><div class="pull-right"> &nbsp;&nbsp;</div>
				      		<a href="#" data-toggle="tooltip" title="first tooltip"><img class="pull-right" src="./images/1375543476_cancel.png" /></a>
				      	</div>
			      	</div>
			      <p>
			      <span class="label label-info">Category</span>&nbsp;&nbsp;&nbsp;  <span class="label label-danger">13.25</span>
			      </p>

			 
			      <p>We dive into more grid layouts in a separate page, free of chrome and documentation to better show you the power of the grid.</p>
				<br />
			     <div class="bs-callout bs-callout-gray">
					<dl class="dl-horizontal">
				        <dt>Description lists</dt>
				        <dd>A description list is perfect for defining terms.</dd>
				        <dt>Euismod</dt>
				        <dd>Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</dd>
				        <dt>Malesuada porta</dt>
				        <dd>Etiam porta sem malesuada magna mollis euismod.</dd>
				        <dt>Felis euismod semper eget lacinia</dt>
				        <dd>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</dd>
				      </dl>
				 </div>
				 <br />
				  <div class="bs-callout bs-callout-gray">
				  	<span class="label">New</span>
				  	<span class="label">New</span>
				  	<span class="label">New</span>
				  	<span class="label">New</span>
				  </div>
			    </div></div></div><!--div class="bs-callout bs-callout-info"-->
			    
			    <br />
			    <!-- a product-->
			    <!-- a product-->
				<div class="bs-callout bs-callout-info">
				<div class="row">
				<div class="col-lg-3">
					<div class="nailthumb-container square" style="overflow: hidden; padding: 0px; width: 170px; height: 170px;"><img }"="" src="http://localhost/ledweb/UploadedImages/1375458018640_Water%20lilies.jpg" style="position: relative; width: 226.66666666666666px; height: 170px; top: 0px; left: -28.33333333333333px;" class="nailthumb-image"></div>
				</div>
				
				<div class="col-lg-9">
					<div class="row">
						<div class="col-lg-9">
				      		<h3>Need more examples?</h3>
				      	</div>
				      	<div class="col-lg-3">
				      		 <img class="pull-right" src="./images/1375543402_edit.png" /><div class="pull-right"> &nbsp;&nbsp;</div>
				      		<a href="#" data-toggle="tooltip" title="first tooltip"><img class="pull-right" src="./images/1375543476_cancel.png" /></a>
				      	</div>
			      	</div>
			      <p>
			      <span class="label label-info">Category</span>&nbsp;&nbsp;&nbsp;  <span class="label label-danger">13.25</span>
			      </p>

			 
			      <p>We dive into more grid layouts in a separate page, free of chrome and documentation to better show you the power of the grid.</p>
				<br />
			     <div class="bs-callout bs-callout-gray">
					<dl class="dl-horizontal">
				        <dt>Description lists</dt>
				        <dd>A description list is perfect for defining terms.</dd>
				        <dt>Euismod</dt>
				        <dd>Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</dd>
				        <dt>Malesuada porta</dt>
				        <dd>Etiam porta sem malesuada magna mollis euismod.</dd>
				        <dt>Felis euismod semper eget lacinia</dt>
				        <dd>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</dd>
				      </dl>
				 </div>
				 <br />
				  <div class="bs-callout bs-callout-gray">
				  	<span class="label">New</span>
				  	<span class="label">New</span>
				  	<span class="label">New</span>
				  	<span class="label">New</span>
				  </div>
			    </div></div></div><!--div class="bs-callout bs-callout-info"-->
			    
			    <br />
			    <!-- a product-->
			    
			</div><!--div class="col-lg-8"-->
			
			
			
			
	</div>
	
</body>
</html>