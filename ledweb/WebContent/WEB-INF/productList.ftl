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
    <a href="../" class="navbar-brand">Lyrc Lighting backend</a>
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
			    	Product management </a>
			    	</li>
			    <li class="">
			    	<a href="./sysManagement.do" <#if module??><#if module=="system management">style="background-color: #e5e3e9;"</#if></#if>">
			    	System management
		  			</a>
				</li>
			    <li class="">
		  			 <a href="./userManagement.do" <#if module??><#if module=="user management">style="background-color: #e5e3e9;"</#if></#if>">
		  			 User management
		  			</a>
		  		</li>
			    <li class="">
			    	<a href="./orderManagement.do" <#if module??><#if module=="order management">style="background-color: #e5e3e9;"</#if></#if>"">Order management
		  		</a></li>
				<li class="">
			    	<a href="./fileManagement.do" <#if module??><#if module=="file management">style="background-color: #e5e3e9;"</#if></#if>"">File management
		  		</a></li>
			</ul>
          </div> <!-- <div class="bs-sidebar pull-right"> -->
			</div>

			<div class="col-lg-8">
			
			<#if products??>
				<#list products as product>
				<!-- a product-->
				<div class="bs-callout bs-callout-info">
				<div class="row">
				<div class="col-lg-3">
					<div class="nailthumb-container square" style="overflow: hidden; padding: 0px; width: 170px; height: 170px;">
						<img onerror="this.src='./images/no.jpg'" src="${(product.productImage)!""}" class="nailthumb-image">
					</div>
				</div>
				
				<div class="col-lg-9">
					<div class="row">
						<div class="col-lg-9">
				      		<a href="./newProduct.do?productID=${product.productID}" style="color:#666"><h3>${product.productName!""}</h3></a>
				      	</div>
				      	<div class="col-lg-3">
				      		 <a href="./newProduct.do?productID=${product.productID}" ><img class="pull-right" src="./images/1375543402_edit.png" /></a><div class="pull-right"> &nbsp;&nbsp;</div>
				      		<a href="#" data-toggle="tooltip" title="first tooltip" onClick="showConfirm('${product.productName!""}','${product.productID!""}')"><img class="pull-right" src="./images/1375543476_cancel.png" /></a>
				      	</div>
			      	</div>
			      <p>
			      <span class="label label-info"><span style="color: #bce9f7">Category | </span><span><b>${(product.category.categoryName)!""}</b></span></span>
			      <span class="label label-danger"><span style="color:#e8bebd">Price | </span><span><b>${product.price?string('#.00')}</b></span></span>
			      <span class="label label-success"> 
			      <#if (product.types)??>
						<span style="color: #c9f0c9">Types |</span> 
					  <#list product.types as productType>
					  	 ${productType.type.typeName!""} 
					  	 <#if productType_index+1 != (product.types)?size>
					  	 	,
					  	 </#if>
					  	 
					  </#list>
				  </#if>	
				  </span>
			      </p>
			      <b>Specs</b>
				<div class="bs-callout bs-callout-info">
				<#if (product.specs)??>
						<#list (product.specs) as productSpec>
							<#if productSpec.spec??>
					        <span class="label label-warning"><span style="color: #f1e7bc">${(productSpec.spec.specName)!""} | </span><b>${productSpec.specValue}</b></span>
					        </#if>
				        </#list>

				</div>
				 </#if>
			 	<br /><b>Description:</b>
			 	<div class="bs-callout bs-callout-info">
			      ${product.productDesc!""}
			     </div>
				 <br />
				  
				 
				  
				  
			    </div></div></div><!--div class="bs-callout bs-callout-info"-->
			    
			    <br />
			    <!-- a product-->
			    </#list>
			    </#if>
			    
			</div><!--div class="col-lg-8"-->
			
			
			
			
	</div>
	
</body>
</html>