<#assign s=JspTaglibs["/WEB-INF/struts-tags.tld"] />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lyrc management tool | Add product</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.nailthumb.1.1.min.css" />
<link rel="stylesheet" type="text/css" href="./globalCss.do" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.nailthumb.1.1.min.js"></script>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/ckeditor.js"></script>
</head>




<script>
$().ready(
	function() {$("#commentForm").validate(
	{
		rules:
		{
			"product.price": 
			{
				number:true,
				min:0.01
			},
			"productName":
			{
				required:true,
			}
		},
		messages:
		{
			"product.price": 
			{
				number:"product price must be a number",
				min:"product price must be greater than 0.01"
				
			},
			"productName":
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


$().ready(
	function()
	{
		$('input[name="specIDs"]').click(
		function()		{
		    
		    $("#specValue_"+$(this).attr('value')).prop("disabled", !$(this).prop('checked'));
		    
		})
	}
)

jQuery(document).ready(function() {
    jQuery('.nailthumb-container ').nailthumb({width:300,height:300});
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
	<div class="well">
		<form id="commentForm" action="" method="post" enctype="multipart/form-data">
		
		 <fieldset>
    		<div class="row">
    		<div class="col-lg-1"></div>
	    		<div class="col-lg-10">
	    			<div class="row" style="border-bottom: 1px solid #ccc">
		    			<div class="col-lg-12">
		    				<span style="font-size:18pt; color:#999;">Add product</font>
		    				<a href="./newProduct.do"><img style="margin-left: 13;" src="./images/1375609012_Black_New-Page.png" class="pull-right"></img></a>
		    				
		    				<a href="./productList.do"><img  src="./images/1375604792_list.png" class="pull-right"></img></a>
		    				
		    				
		    			</div>
		    			<!--div class="col-lg-8" style="padding-right:5px"> 
		    			
		    				
		    			</div-->
	    			</div>
	    		</div>
    		<div class="col-lg-1"></div>
    		</div>
    	<br />
    	<div class="row">
    	<div class="col-lg-1"></div>
    	<div class="col-lg-10">
    		<@s.if test="hasFieldErrors()">  
				<@s.iterator value="fieldErrors">  
				    <@s.iterator value="value">
				    	<div class="alert alert-danger"> 
				        <@s.property/>     
				        </div>
				    </@s.iterator>    
				</@s.iterator>   
			</@s.if>  
    	    <div class="panel panel-info">
     		<div class="panel-heading">
     		
	    	<h3 class="panel-title">Basic Info</h3>
	  </div>
    
    <div class="form-group">
      <label for="exampleInputEmail">Product Title</label>
      <input type="text" class="form-control" name="productName" placeholder="Product Title" value="${(product.productName)!""}" />
      <input type="hidden" name="productID" value="${(productID)!""}"/>
    </div>
    
    <div class="row">
	    <div class="col-lg-6">
		    <div class="form-group">
		      <label for="exampleInputEmail">Product Category</label>
			      <select class="form-control" name="selectedCategory">
				      <#if allCategories??>
				      	<#list allCategories as category>
				        	  <option <#if product??><#if category.categoryID==product.categoryID>selected</#if></#if> value="${category.categoryID}">${category.categoryName}</option>
				          </#list>
				       </#if>   
			        </select>
		    </div><!-- <div class="form-group"> -->
	    </div><!-- <div class="col-lg-6">-->
		    <div class="col-lg-6">
				<div class="form-group">
			      <label for="exampleInputEmail">Product Price</label>
			      <input type="text" class="form-control" name="productPrice" placeholder="Product Price"  value="${((product.price)!0)?string('#.00')}"/>
			    </div>
		    </div>
		    
	    </div>
	    
	    <div class="form-group">
	      <label for="exampleInputPassword">Product Description</label>
	      <textarea class="form-control" id="editor1" rows="3" name="productDesc" placeholder="Product Description">${(product.productDesc)!""}</textarea>
	    </div>
	       <div class="row">
	       <div class="col-lg-4">
		    <div class="form-group">
		      <label for="exampleInputFile">Product Image</label>
		      <input type="file" id="exampleInputFile" name="newImage"/>
		      <input type="hidden" name="oldImage" value="${(product.productImage)!""}" />
		    </div>
		    </div>
		    
		    <div class="col-lg-8">
			    <#if (product.productImage)??> 
			    <#assign a="${product.productImage?trim}">
			    	<#if a!="">
			    		 <div style="border: 1px solid #eeeeee; padding:10px 10px 10px 10px; width:320px">
			    		 	<div class="nailthumb-container square">
			    		 		<img src="${(product.productImage)!""}" onerror="this.src='./images/no.jpg'" />
			    		 	</div>
			    		 </div>
			    	</#if>
			    </#if>
		    </div>
		    </div>   		
    </div>
    <div class="panel panel-success">
         <div class="panel-heading ">
	    <h3 class="panel-title">Select Specs</h3>
	  </div>
	  <#if allSpecs??>
	  	<#list allSpecs as sp>
	  	<#if specValueMap??>
	  		<#assign keys = specValueMap?keys>
	  	</#if>
	  		<#if sp_index%4==0>
	  		<div class="row">
	  		</#if>
			<div class="col-lg-3">
				<div class="form-group">
					<div class="checkbox">
					<label>
						<input type="checkbox"  name="specIDs" value="${sp.specID}" <#if specValueMap??><#if specValueMap.get(sp.specID)??>checked</#if></#if> id="specIDs_${sp.specID}"/>${sp.specName}
					</label>
					
					</div>
					<div>
					<input type="text" name="specValues" class="form-control input-small" 
					id="specValue_${sp.specID}" <#if specValueMap??><#if specValueMap.get(sp.specID)??><#else> disabled </#if><#else> disabled </#if> 
					placeholder="Enter email" 
					value="<#if specValueMap??><#if specValueMap.get(sp.specID)??>${specValueMap.get(sp.specID)}</#if></#if>">
					</div>
				</div>
			</div>
			  <#if sp_index%4==3>
		  		</div>
		  		<#else>
			  		<#if sp_index+1==allSpecs?size>
			  			</div>
			  		</#if>
	  	  	</#if>
	  	</#list>
	</#if>
	</div>

	    <div class="panel panel-warning">
             <div class="panel-heading">
	   			 <h3 class="panel-title">Select Types</h3>
	  		</div>
	<div class="row">
		 <div class="col-lg-12">
		 <#if allTypeGroups??>
			 <#list allTypeGroups as typeGroup>
			 <div class="row" style="margin-bottom:10px">
			 	<div class="col-lg-3">
			 	<span class="pull-right" style="font-size:14px;font-weight:bold">${(typeGroup.groupName)!""}:</span>
			 	</div>
			 	<div class="col-lg-9">
			 	 <#if allTypes??>
					 <#list allTypes as type>
					 <#if type.reserve1==typeGroup.groupID>
						<label class="checkbox-inline">
						  <input type="checkbox" id="types_${type.typeID}" name="testSelectTypes" <#if selectedTypes??>${selectedTypes?seq_contains(type.typeID?string)?string("checked", "")}</#if> value="${type.typeID}"> ${type.typeName}
						</label>
						</#if>
					</#list>
				</#if>
			 	</div>
			 </div>
			 </#list>
		 </#if>
		

		</div>
	</div>

	</div><!-- <div class="panel panel-warning">-->


    <div class="panel panel-danger">
             <div class="panel-heading">
	   			 <h3 class="panel-title">Featured product</h3>
	  		</div>
		<div class="row">
			 <div class="col-lg-12">
			 	<label class="checkbox-inline"><input type="checkbox" name="featuredProduct" value="1" <#if product??><#if product.reserve1=="1">checked</#if></#if> /> featured product </label>
			</div>
		</div>
		
		</div>


    <button type="submit" name="isSubmit" value="submit" class="btn btn-primary pull-right">Submit</button>
    </div>
    </div>
  </fieldset>
</form>
</div> 
</div> 
<script>
CKEDITOR.replace( 'editor1' );

</script>
</body>
</html>