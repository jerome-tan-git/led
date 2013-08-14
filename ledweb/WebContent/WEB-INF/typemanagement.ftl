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
	else if (deleteType == "deleteTypeGroupID")
	{
		$('#messageBox').html("Are you sure to delete type group: <span class=\"text-danger\"><b>"+ name+"</span></b> ?")
	}
	//deleteTypeGroupID
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
						  <#if typeGroups??>
					    	<#list typeGroups as typegroup>
							  <li style="padding-right:10px" class="list-group-item <#if typeGroupID??><#if typeGroupID==typegroup.groupID>selectedType</#if></#if>">			    
							    <a href="?typeGroupID=${typegroup.groupID}">${typegroup.groupName}</a>
							    <span class="pull-right" style="cursor:hand" onClick="showConfirm('deleteTypeGroupID','${typegroup.groupID}','${typegroup.groupName}')"> <img src="./images/delete_2.png" /> </span>
							  </li>
							  </#list>
						</#if>
						  
						</ul>
		    	</div><!--<div class="col-lg-8">-->
		    	<div class="col-lg-8">
		    		
		    	</div><!--<div class="col-lg-8">-->
            </div>	
	  </div><!--div class="panel panel-danger"-->

	</div>
</body>
</html>