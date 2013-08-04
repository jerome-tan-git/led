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

.bs-callout-success {
background-color: #f7fff8;
border-color: #c0e7c5;
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

function showConfirm(productName, productID)
{
	$('#messageBox').html("Are you sure to delete product: <span class=\"text-danger\"><b>"+ productName+"</span></b> ?")
	$('#deletebutton').click(function()
	{
		window.location.href="./productList.do?deleteProduct="+productID
	});
	$('#myModal').modal('show');
}
</script>
<body>
<div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title" id="summary">Delete Product</h4>
        </div>
        <div class="modal-body">
          <div id="messageBox"></div>
        </div>
        <div class="modal-footer">
        
			<div class="row">
			<div class="col-lg-8" >
			</div>
			<div class="col-lg-2 full-right" style="padding-top: 20;">
				<span href="#" data-dismiss="modal" style="font-size: 16px; font-weight: normal; line-height: 0; color: #ccc; cursor:hand;"><b>Cancel</b></span> 
          	</div>
          	<div class="col-lg-2">
          		<button id="deletebutton" type="button" class="btn btn-danger">Delete</button>
			</div>
          
          </div><!--div class="row"-->
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
		  <a href="./productList.do" class="list-group-item <#if module??><#if module=="product management">active</#if></#if>">
		    Product management 
		  </a>
		  <a href="./sysManagement.do" class="list-group-item <#if module??><#if module=="system management">active</#if></#if>">System management
		  </a>
		   <a href="./userManagement.do" class="list-group-item <#if module??><#if module=="user management">active</#if></#if>">User management
		  </a>
		  <a href="./orderManagement.do" class="list-group-item <#if module??><#if module=="order management">active</#if></#if>"">Order management
		  </a>
		</div>
	</div>
			<div class="col-lg-8">
			<!-- a product-->
				<div class="bs-callout bs-callout-info">
				<div class="row">

				
				<div class="col-lg-12">
					<div class="row">
						<div class="col-lg-12">
				      		<a href="./newProduct.do?productID=384f0c77-5b7a-42a6-bbe6-d89e1a127208" style="color:#666; font-size:16pt">aaaaa</a>
				      	</div>
				      	
			      	</div>
			      <p>
			      <span class="label label-info"><span style="color: #bce9f7">Quantity | </span><span><b>1000</b></span></span>
			      <span class="label label-success"> <span style="color: #c9f0c9">Type |</span> <b>type name</b></span>
			      <span class="label label-warning"><span style="color: #f1e7bc">Order Date | </span><b>2013-08-19</b></span>
			      </p>
	
			      <b>Message:</b>
			 		<div class="bs-callout bs-callout-warning">
			 		<p> adf jaslkfjasja;sfja;sjf;asdf </p>
			 		</div>
				 	<br />
				 	<b>User Info:</b>
			 		<div class="bs-callout bs-callout-success">
			 		<div class="row">
			 			<div class="col-lg-2" style="padding-right:0px">
			 				<span class="pull-right"><b>User name</b></span>
			 			</div>
			 			<div class="col-lg-1" >
			 				<span class="pull-left">XXXXXX</span>
			 			</div>
			 		</div>	
			 		<div class="row">
			 			<div class="col-lg-2" style="padding-right:0px">
			 				<span class="pull-right"><b>Phone</b></span>
			 			</div>
			 			<div class="col-lg-1">
			 				<span class="pull-left">123456789</span>
			 			</div>
					</div>			
			 		<div class="row">			 			
			 			<div class="col-lg-2" style="padding-right:0px">
			 				<span class="pull-right"><b>Address</b></span>
			 			</div>
			 			<div class="col-lg-1">
			 				<span class="pull-left">adffffffffasdfasssffff</span>
			 			</div>
			 		</div>	
			 		<div class="row">	
			 			<div class="col-lg-2" style="padding-right:0px">
			 				<span class="pull-right"><b>Email</b></span>
			 			</div>
			 			<div class="col-lg-1">
			 				<span class="pull-left">adfasfasfasdf</span>
			 			</div>
			 		</div>
			 		
			     </div>
				 
				  
				 
				  
				  
			    </div></div></div><!--div class="bs-callout bs-callout-info"-->
			    
			    <br />
				
				
			    <!-- a product-->
			</div><!--div class="col-lg-8"-->
			
			
			
			
	</div>
	
</body>
</html>