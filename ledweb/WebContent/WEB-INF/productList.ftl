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
			<#if products??>
				<#list products as product>
				<div class="bs-callout bs-callout-info">
				<div class="row">
				<div class="col-lg-3">
					<div class="nailthumb-container square" style="overflow: hidden; padding: 0px; width: 170px; height: 170px;"><img onerror="this.src='./images/no.jpg'" src="${(product.productImage)!""}" class="nailthumb-image"></div>
				</div>
				
				<div class="col-lg-9">
					<div class="row">
						<div class="col-lg-9">
				      		<h3>${product.productName!""}</h3>
				      	</div>
				      	<div class="col-lg-3">
				      		 <img class="pull-right" src="./images/1375543402_edit.png" /><div class="pull-right"> &nbsp;&nbsp;</div>
				      		<a href="#" data-toggle="tooltip" title="first tooltip"><img class="pull-right" src="./images/1375543476_cancel.png" /></a>
				      	</div>
			      	</div>
			      <p>
			      <span class="label label-info">${(product.category.categoryName)!""}</span>&nbsp;&nbsp;&nbsp;  <span class="label label-danger">${product.price?string('#.00')}</span>
			      </p>

			 
			      <p>${product.productDesc!""}</p>
			     <#if (product.specs)??>
				<br />
			     <div class="bs-callout bs-callout-gray">
					<dl class="dl-horizontal">
						<#list (product.specs) as productSpec>
							<#if productSpec.spec??>
					        <dt>${(productSpec.spec.specName)!""}</dt>
					        <dd>${productSpec.specValue}</dd>
					        </#if>
				        </#list>
				      </dl>
				 </div>
				 </#if>
				 <br />
				  
				  <#if (product.types)??>
				  <div class="bs-callout bs-callout-gray">
				  <#list product.types as productType>
				  	<span class="label">${productType.type.typeName!""}</span>&nbsp;&nbsp;&nbsp;
				  	</#list>
				  </div>
				  </#if>	
				  
				  
			    </div></div></div><!--div class="bs-callout bs-callout-info"-->
			    
			    <br />
			    </#list>
			    </#if>
			    <!-- a product-->
			</div><!--div class="col-lg-8"-->
			
			
			
			
	</div>
	
</body>
</html>