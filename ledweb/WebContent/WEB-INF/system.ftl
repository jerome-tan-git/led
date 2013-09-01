<#assign s=JspTaglibs["/WEB-INF/struts-tags.tld"] />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lyrc management tool | System management</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.nailthumb.1.1.min.css" />
<link rel="stylesheet" type="text/css" href="css/global.css" />

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

.panel-success a
{
	color:#468847;
}

.panel-danger a
{
	color:#b94a48;
}

.panel-warning a
{
	color:#c09853;
}
</style>



<script>
$().ready(
	function() {$("#categoryForm").validate(
	{
		rules:
		{

			"categoryName":
			{
				required:true,
			}
		},
		messages:
		{
			"categoryName":
			{
				required:"please input category name"
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
				$('#close_btn').show();
				$('#confirm_btn').hide();
				$('#myModal').modal('show');
			}
		}
	}
	)
	}
);

$().ready(
	function() {$("#specForm").validate(
	{
		rules:
		{

			"specName":
			{
				required:true,
			}
		},
		messages:
		{
			"specName":
			{
				required:"please input spec name"
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
				$('#close_btn').show();
				$('#confirm_btn').hide();
				$('#myModal').modal('show');
			}
		}
	}
	)
	}
);


$().ready(
	function() {$("#typeForm").validate(
	{
		rules:
		{

			"typeName":
			{
				required:true,
			}
		},
		messages:
		{
			"typeName":
			{
				required:"please input type name"
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
				$('#close_btn').show();
				$('#confirm_btn').hide();
				$('#myModal').modal('show');
			}
		}
	}
	)
	}
);

function showConfirm(deleteType, ID, name)
{
	if (deleteType == "deleteTypeID")
	{
		$('#messageBox').html("Are you sure to delete product type: <span class=\"text-danger\"><b>"+ name+"</span></b> ?")
	}
	else if (deleteType == "deleteSpecID")
	{
		$('#messageBox').html("Are you sure to delete product spec: <span class=\"text-danger\"><b>"+ name+"</span></b> ?")
	}
	else if (deleteType == "deleteCategoryID")
	{
		$('#messageBox').html("Are you sure to delete category: <span class=\"text-danger\"><b>"+ name+"</span></b> ?")
	}
	$('#deletebutton').click(function()
	{
		window.location.href="./sysManagement.do?"+deleteType+"="+ID
	});
	$('#close_btn').hide();
	$('#confirm_btn').show();
	
	$('#myModal').modal('show');
}

jQuery(document).ready(function() {
    jQuery('.nailthumb-container ').nailthumb({width:100,height:100});
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
        <button id="close_btn" type="button" data-dismiss="modal" class="btn btn-default">Close</button>
		
          <div class="row" id="confirm_btn">
			<div class="col-lg-8" >
			</div>
			<div id="close_button" class="col-lg-2 full-right" style="padding-top: 20;">
				<span href="#" data-dismiss="modal" style="font-size: 16px; font-weight: normal; line-height: 0; color: #ccc; cursor:hand;"><b>Cancel</b></span> 
          	</div>
          	<div id="delete_button" class="col-lg-2">
          		<button id="deletebutton" type="button" class="btn btn-danger">Delete</button>
			</div>
          
          </div>
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
			    <li class="">
		  			 <a href="./userManagement.do" <#if module??><#if module=="user management">style="background-color: #e5e3e9;"</#if></#if>">
		  			 Users
		  			</a>
		  		</li>
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
		<div class="panel panel-success">
	      <div class="panel-heading">
		    <div class="row">
		      <div class="col-lg-8">
			    <h3 class="panel-title">Categories</h3>
			  </div>
			  <div class="col-lg-4">
			    <span class="label label-success pull-right" style="cursor:hand" onClick="window.location.href='./sysManagement.do'">New Category</span>
			  </div>
		  </div>
		  
		  </div>
 			<div class="row">
				<div class="col-lg-4">
				<ul class="list-group">
				<#if categories??>
					<#list categories as category> 
						<li style="padding-right:10px" class="list-group-item <#if categoryID??><#if categoryID==category.categoryID?string>selectedCategory</#if></#if>">
						<a href="?categoryID=${category.categoryID}">		
						${category.categoryName}
						</a>
						<span class="pull-right" style="cursor:hand" onClick="showConfirm('deleteCategoryID','${category.categoryID}','${category.categoryName}')"> <img src="./images/delete_2.png" /> </span>
						 </li>
					</#list>
				</#if>
			 
			  
			</ul>
		    	</div>
		    	<div class="col-lg-8">
		    	<div class="well">
					<form name="category_edit" action="./sysManagement.do" id="categoryForm" method="post" enctype="multipart/form-data">
					<input type="hidden" name="categoryID" value="${categoryID!""}" />
					  <fieldset>
					    <legend>Edit category</legend>
					    <div class="row">
					    	<div class="col-lg-7">
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
						   	<div class="col-lg-5">
							    <div class="form-group">
							      <label for="exampleInputFile">Category Image</label>
							      <input type="file" id="exampleInputFile" name="categoryImage"><br />
							      <input type="hidden" name="orgCategoryImagePath" value="${orgCategoryImagePath!""}" />
							       <#if (orgCategoryImagePath)??>
								    <#assign a="${orgCategoryImagePath}">
								    	<#if a!="">
								    		 <div style="border: 1px solid #eeeeee; padding:10px 10px 0px 10px; width:120px"><div class="nailthumb-container square"><img src="${(orgCategoryImagePath)!""}" /></div></div>
								    	</#if>
								    </#if>
							    </div>
							 </div>
							 
					    </div>
					  </fieldset>
					</form>
					</div>
		    	</div><!--div class="col-lg-8"-->
            </div>		  
		  
	  </div><!--div class="panel panel-success"-->
	  
	  
	  <div class="panel panel-warning">
	      <div class="panel-heading">
	      <div class="row">
		      <div class="col-lg-8">
			    <h3 class="panel-title">Specs</h3>
			  </div>
			  <div class="col-lg-4">
			    <span class="label label-warning pull-right" style="cursor:hand" onClick="window.location.href='./sysManagement.do'">New Spec</span>
			  </div>
		  </div>
		  
		  </div>
		  <div class="row">
	    	<div class="col-lg-4">
	    	<ul class="list-group">
	    	<#if specs??>
	    	<#list specs as spec>
			  <li style="padding-right:10px" class="list-group-item <#if specID??><#if specID==spec.specID>selectedSpec</#if></#if>">			    
			    <a href="?specID=${spec.specID}">${spec.specName}</a>
			    <span class="pull-right" style="cursor:hand" onClick="showConfirm('deleteSpecID','${spec.specID}','${spec.specName}')"> <img src="./images/delete_2.png" /> </span>
			  </li>
			  
			  </#list>
			</#if>
			</ul>
		    	</div>
		    	<div class="col-lg-8">
		    	<div class="well">
		    		<form name="Specs_edit" action="./sysManagement.do" id="specForm" method="post">
		    			<fieldset><legend>Edit Spec</legend>
		    				<div class="row">
		    					<div class="col-lg-11">
		    						<div class="form-group">
		    							<div class="form-group">
									      <label for="exampleInputEmail">Spec name</label>
									      <input type="text" class="form-control" name="specName" id="a" placeholder="Spec name" value="${specName!""}">
									      <input type="hidden" class="form-control" name="specID" value="${specID!""}" />
									    </div>
									    <button type="submit" class="btn btn-default pull-right" name="specSubmit" value="1">Submit</button>
		    						</div>
		    					</div>
		    				</div>
		    			</fieldset>
		    		</form>
		    		</div>
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
			    <span class="label label-danger pull-right" style="cursor:hand" onClick="window.location.href='./sysManagement.do'">New Type</span>
			  </div>
		  </div>
		  
		  </div>
		  <div class="row">
				<div class="col-lg-4">
				<ul class="list-group">
			  <#if types??>
	    	<#list types as type>
			  <li style="padding-right:10px" class="list-group-item <#if typeID??><#if typeID==type.typeID>selectedType</#if></#if>">			    
			    <a href="?typeID=${type.typeID}">${type.typeName}</a>
			    <span class="pull-right" style="cursor:hand" onClick="showConfirm('deleteTypeID','${type.typeID}','${type.typeName}')"> <img src="./images/delete_2.png" /> </span>
			  </li>
			  </#list>
			</#if>
			  
			</ul>
		    	</div>
		    	<div class="col-lg-8">
		    	<div class="well">
		    		<form name="type_edit" id="typeForm" action="./sysManagement.do" method="post">
		    			<fieldset><legend>Edit Type</legend>
		    				<div class="row">
		    					<div class="col-lg-11">
		    						<div class="form-group">
		    							<div class="form-group">
									      <label for="exampleInputEmail">Type name</label>
									      <input type="text" class="form-control" name="typeName" id="typename" value="${typeName!""}" placeholder="Type name">
									      <input type="hidden" class="form-control" name="typeID" value="${typeID!""}" />
									    </div>
									    <button type="submit" class="btn btn-default pull-right" name="typeSubmit" value="1">Submit</button>
		    						</div>
		    					</div>
		    				</div>
		    			</fieldset>
		    		</form>
		    		</div>
		    	</div>
            </div>	
	  </div><!--div class="panel panel-danger"-->

	</div>
</body>
</html>