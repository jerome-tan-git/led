<#assign s=JspTaglibs["/WEB-INF/struts-tags.tld"] />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lyrc management tool | Order management</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.nailthumb.1.1.min.css" />
<link rel="stylesheet" type="text/css" href="./globalCss.do" />

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
    <a href="./login.do" class="navbar-brand">Lyrc Lighting backend</a>
    <button class="navbar-toggle" type="button" data-toggle="collapse">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <div class="nav-collapse collapse bs-navbar-collapse">
      <ul class="nav navbar-nav">
      </ul>
    </div>
  </div>
</div>


	<div class="row" style="padding-top:70px">
		<div class="col-lg-1"></div>
		  <div class="col-lg-2">
		  		 <div class="bs-sidebar pull-right">
            <ul class="nav bs-sidenav">           
			    <li class="">
			    	<a href="./productList.do" <#if module??><#if module=="product management">style="background-color: #e5e3e9;"</#if></#if>"> 
			    	Products </a>
			    	</li>
			    <li class="">
			    	<a href="./sysManagement.do" <#if module??><#if module=="system management">style="background-color: #e5e3e9;"</#if></#if>">
			    	System
		  			</a>
				</li>
				<!--
			    <li class="">
		  			 <a href="./userManagement.do" <#if module??><#if module=="user management">style="background-color: #e5e3e9;"</#if></#if>">
		  			 Users
		  			</a>
		  		</li>
		  		-->
			    <li class="">
			    	<a href="./orderManagement.do" <#if module??><#if module=="order management">style="background-color: #e5e3e9;"</#if></#if>"">Orders
		  		</a></li>
				<li class="">
			    	<a href="./fileManagement.do" <#if module??><#if module=="file management">style="background-color: #e5e3e9;"</#if></#if>"">Files
		  		</a></li>
		  		<li class="">
			    	<a href="./benefitsManagement.do" <#if module??><#if module=="benifits">style="background-color: #e5e3e9;"</#if></#if>"">LED benifits
		  		</a></li>
		  		<li class="">
			    	<a href="./glossaryManagement.do" <#if module??><#if module=="glossary">style="background-color: #e5e3e9;"</#if></#if>"">Glossary
		  		</a></li>
		  		<li class="">
			    	<a href="./aboutUsManagement.do" <#if module??><#if module=="about us">style="background-color: #e5e3e9;"</#if></#if>"">About us
		  		</a></li>
		  		<li class="">
			    	<a href="./contactUsManagement.do" <#if module??><#if module=="contact us">style="background-color: #e5e3e9;"</#if></#if>"">Contact us
		  		</a></li>
		  		<li class="">
			    	<a href="./typeManagement.do" <#if module??><#if module=="type">style="background-color: #e5e3e9;"</#if></#if>"">Types
		  		</a></li>		  		
			</ul>
          </div> <!-- <div class="bs-sidebar pull-right"> -->
	</div>
			<div class="col-lg-8">
			<#list allOrder as order>
			<!-- a product-->
				<div class="bs-callout bs-callout-info">

				<div class="row">
				<div class="col-lg-12">
					<div class="row">
						<div class="col-lg-11">
				      		<a href="./productdetail.do?productID=${(order.product.productID)!""}" style="color:#666; font-size:16pt">${(order.product.productName)!""}</a>
				      	</div>
				      	<div class="col-lg-1" style="padding-left: 50px;margin-top: -6px;">
				      		<a href="?deleteOrder=${(order.orderID)!""}""><img src="./images/1375543476_cancel.png" /></a>
				      	</div>
				      	
			      	</div>
			      	<div class="row" style="margin-top: 11px;margin-bottom: 12px;margin-left: -19px;;">
			      	<div class="col-lg-12">
						<span class="label label-default" style="margin-left: 4px;"><span style="color: #cccccc">Order No.: | </span><b>${(order.orderNo)!""}</b></span>
					</div>
				</div>
			      <p>
			      <span class="label label-info"><span style="color: #bce9f7">Quantity | </span><span><b>${(order.quantity)!""}</b></span></span>
			      <span class="label label-success"> <span style="color: #c9f0c9">Type |</span> 
			      	<#assign oTypes = order.orderTypes>
						  	<#list oTypes as ot>
						  		${(ot.type.typeGroup.groupName)!""} : <b>${(ot.type.typeName)!""}</b>, 
						  	</#list>
			      </span>
			      <span class="label label-warning" style="margin-left: 4px;"><span style="color: #f1e7bc">Order Date | </span><b>${(order.orderDateTime)!""}</b></span>
			      
			      </p>

			      <b>Message:</b>
			 		<div class="bs-callout bs-callout-warning">
			 		<p> ${(order.message)!""}</p>
			 		</div>
				 	<br />
				 	<b>User Info:</b>
			 		<div class="bs-callout bs-callout-success">
			 		<div class="row">
			 			<div class="col-lg-2" style="padding-right:0px">
			 				<span class="pull-right"><b>User name</b></span>
			 			</div>
			 			<div class="col-lg-10" >
			 				<span class="pull-left">${(order.user.userName)!""} ${(order.user.reserve1)!""}</span>
			 			</div>
			 		</div>	
			 		<div class="row">
			 			<div class="col-lg-2" style="padding-right:0px">
			 				<span class="pull-right"><b>Phone</b></span>
			 			</div>
			 			<div class="col-lg-10">
			 				<span class="pull-left">${(order.user.phone)!""}</span>
			 			</div>
					</div>
					
					<div class="row">			 			
			 			<div class="col-lg-2" style="padding-right:0px">
			 				<span class="pull-right"><b>State</b></span>
			 			</div>
			 			<div class="col-lg-10">
			 				<span class="pull-left">${(order.user.reserve4)!""}</span>
			 			</div>
			 		</div>	
						
			 		<div class="row">			 			
			 			<div class="col-lg-2" style="padding-right:0px">
			 				<span class="pull-right"><b>Suburb</b></span>
			 			</div>
			 			<div class="col-lg-10">
			 				<span class="pull-left">${(order.user.reserve3)!""}</span>
			 			</div>
			 		</div>
			 			
			 		<div class="row">	
			 			<div class="col-lg-2" style="padding-right:0px">
			 				<span class="pull-right"><b>Address</b></span>
			 			</div>
			 			<div class="col-lg-10">
			 				<span class="pull-left">${(order.user.address)!""}</span>
			 			</div>
			 		</div>
			 		
			 		<div class="row">			 			
			 			<div class="col-lg-2" style="padding-right:0px">
			 				<span class="pull-right"><b>Post code</b></span>
			 			</div>
			 			<div class="col-lg-10">
			 				<span class="pull-left">${(order.user.reserve2)!""}</span>
			 			</div>
			 		</div>
			 		
			     </div>
				 
				  
				 
				  
				  
			    </div></div></div><!--div class="bs-callout bs-callout-info"-->
			    
			    <br />
				
				
			    <!-- a product-->
			    </#list>
			</div><!--div class="col-lg-8"-->
			
			
			
			
	</div>
	
</body>
</html>