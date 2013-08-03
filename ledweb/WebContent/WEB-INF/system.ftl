<#assign s=JspTaglibs["/WEB-INF/struts-tags.tld"] />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.nailthumb.1.1.min.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.nailthumb.1.1.min.js"></script>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
</head>
<style>
.panel-success li
{
	color: #468847;
}

.panel-warning li
{
	color: #c09853;
}

.panel-danger li
{
	color: #b94a48;
}

.selectedCategory
{
	background-color:#dff0d8; 
	color: #468847
}

.selectedCategoryBadge
{
	background-color:#468847;
}


.selectedSpec
{
	background-color:#fcf8e3; 
	color: #c09853;
}

.selectedType
{
	background-color:#f2dede; 
	color: #b94a48;
}

.selectedCategory a
{
	color:#468847;
}

.selectedType a
{
	color:#b94a48;
}

.selectedSpec a
{
	color:#c09853;
}
</style>



<script>
$().ready(
	function() {$("#commentForm").validate(
	{
		rules:
		{
			"product.price": 
			{
				required:true,
				number:true,
				min:0.01
			},
			"product.productName":
			{
				required:true,
			}
		},
		messages:
		{
			"product.price": 
			{
				required:"please input product price",
				number:"product price must be a number",
				min:"product price must be greater than 0.01"
				
			},
			"product.productName":
			{
				required:"please input product title"
			}
		},
		errorLabelContainer:"#messageBox",
		errorElement:"div",
		onfocusout: false,
		onkeyup: false,
		focusCleanup: true,
		focusInvalid: false,
		wrapper:"li",
		showErrors:function(errorMap,errorList) {
	        $("#summary").text("Your form contains " + this.numberOfInvalids() + " errors,see details below.");		        
			this.defaultShowErrors();
			if (this.numberOfInvalids()>0)
			{
				$('#myModal').modal('show');
			}
		}
	}
	)
	}
);
jQuery(document).ready(function() {
    jQuery('.nailthumb-container ').nailthumb({width:150,height:150});
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
		<div class="panel panel-success">
	      <div class="panel-heading">
		    <div class="row">
		      <div class="col-lg-8">
			    <h3 class="panel-title">Categories</h3>
			  </div>
			  <div class="col-lg-4">
			    <span class="label label-success pull-right" style="cursor:hand">New Category</span>
			  </div>
		  </div>
		  
		  </div>
 			<div class="row">
				<div class="col-lg-4">
				<ul class="list-group">
				<#if categories??>
					<#list categories as category>
						<li class="list-group-item <#if categoryID??><#if categoryID==category.categoryID?string>selectedCategory</#if></#if>">
						${category.categoryName}/${category.categoryID}
					</#list>
				</#if>
			  </li>
			  
			</ul>
		    	</div>
		    	<div class="col-lg-8">
					<form name="category_edit" action="" method="post" enctype="multipart/form-data">
					<input type="hidden" name="categoryID" value="" />
					  <fieldset>
					    <legend>Edit category</legend>
					    <div class="row">
					    	<div class="col-lg-5">
							 	<div class="form-group">
							      <label for="exampleInputEmail">Category Name</label>
							      <input type="text" class="form-control" name="categoryName" id="exampleInputEmail" placeholder="Enter category name" value="${categoryName!""}">
							    </div>
							    <div class="form-group">
							      <label for="exampleInputEmail">Category Description</label>
							      <input type="text" class="form-control" id="exampleInputEmail" name="categoryDesc" placeholder="Enter category description" value="${categoryDesc!""}">
							    </div>
							    <button type="submit" class="btn btn-default pull-right" name="submitCategory" value="1">Submit</button>
							 </div>
						   	<div class="col-lg-6">
							    <div class="form-group">
							      <label for="exampleInputFile">Category Image</label>
							      <input type="file" id="exampleInputFile" name="categoryImage"><br />
							       <#if (orgCategoryImagePath)??>
								    <#assign a="${orgCategoryImagePath}">
								    	<#if a!="">
								    		 <div style="border: 1px solid #eeeeee; padding:10px 10px 0px 10px; width:170px"><div class="nailthumb-container square"><img src="${(orgCategoryImagePath)!""}" /></div></div>
								    	</#if>
								    </#if>
							    </div>
							 </div>
							 
					    </div>
					  </fieldset>
					</form>
		    	</div>
            </div>		  
		  
	  </div><!--div class="panel panel-success"-->
	  
	  
	  <div class="panel panel-warning">
	      <div class="panel-heading">
	      <div class="row">
		      <div class="col-lg-8">
			    <h3 class="panel-title">Specs</h3>
			  </div>
			  <div class="col-lg-4">
			    <span class="label label-warning pull-right" style="cursor:hand">New Spec</span>
			  </div>
		  </div>
		  
		  </div>
		  <div class="row">
					    	<div class="col-lg-4">
					    	<ul class="list-group">
			  <li class="list-group-item selectedSpec">
			    
			    <a href="#">Cras justo odio</a>
			  </li>
			  <li class="list-group-item ">

			    Cras justo odio
			  </li>
			  			  <li class="list-group-item">

			    Cras justo odio
			  </li>
			  			  <li class="list-group-item">

			    Cras justo odio
			  </li>
			  			  <li class="list-group-item">

			    Cras justo odio
			  </li>
			  			  <li class="list-group-item">

			    Cras justo odio
			  </li>
			  
			</ul>
		    	</div>
		    	<div class="col-lg-8">
		    		<form name="Specs_edit" action="">
		    			<fieldset><legend>Edit Spec</legend>
		    				<div class="row">
		    					<div class="col-lg-11">
		    						<div class="form-group">
		    							<div class="form-group">
									      <label for="exampleInputEmail">Spec name</label>
									      <input type="text" class="form-control" id="a" placeholder="Spec name">
									    </div>
									    <button type="submit" class="btn btn-default pull-right">Submit</button>
		    						</div>
		    					</div>
		    				</div>
		    			</fieldset>
		    		</form>
		    	</div>
            </div>	
	  </div><!--div class="panel panel-warning"-->
	  
	  
	  <div class="panel panel-danger">
	      <div class="panel-heading">
		    <div class="row">
		      <div class="col-lg-8">
			    <h3 class="panel-title">Types</h3>
			  </div>
			  <div class="col-lg-4">
			    <span class="label label-danger pull-right" style="cursor:hand">New Type</span>
			  </div>
		  </div>
		  
		  </div>
		  <div class="row">
					    	<div class="col-lg-4">
					    	<ul class="list-group">
			  <li class="list-group-item selectedType">

			    <a href="#">Cras justo odio</a>
			  </li>
			  <li class="list-group-item ">

			    Cras justo odio
			  </li>
			  			  <li class="list-group-item">

			    Cras justo odio
			  </li>
			  			  <li class="list-group-item">

			    Cras justo odio
			  </li>
			  			  <li class="list-group-item">

			    Cras justo odio
			  </li>
			  			  <li class="list-group-item">

			    Cras justo odio
			  </li>
			  
			</ul>
		    	</div>
		    	<div class="col-lg-8">
		    		<form name="Specs_edit" action="">
		    			<fieldset><legend>Edit Spec</legend>
		    				<div class="row">
		    					<div class="col-lg-11">
		    						<div class="form-group">
		    							<div class="form-group">
									      <label for="exampleInputEmail">Spec name</label>
									      <input type="text" class="form-control" id="a" placeholder="Spec name">
									    </div>
									    <button type="submit" class="btn btn-default pull-right">Submit</button>
		    						</div>
		    					</div>
		    				</div>
		    			</fieldset>
		    		</form>
		    	</div>
            </div>	
	  </div><!--div class="panel panel-danger"-->

	</div>
</body>
</html>