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
				required:true,
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
				required:"please input product price",
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
		  		<li class="">
		  		<!-- module=contact management????-->
			    <a href="./contactUsManagement.do" <#if module??><#if module=="contact management">style="background-color: #e5e3e9;"</#if></#if>"">
			    	Page management
		  		</a></li>
			</ul>
          </div> 
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
		    				<span style="font-size:18pt; color:#999;">Static Page Management</font>
		
		    				<a href="./contactUsManagement.do">
		    					<img style="margin-left: 13;" src="./images/contactus.png" class="pull-right"></img>
		    				</a>
		    				<a href="./glossaryManagement.do">
		    					<img style="margin-left: 13;" src="./images/glossary.png" class="pull-right"></img>
		    				</a>
		    				<a href="./benefitsManagement.do">
		    					<img style="margin-left: 13;" src="./images/benifit.png" class="pull-right">
		    					</img>
		    				</a>
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
     		
	    	<h3 class="panel-title">About Us Page</h3>
	  </div>
    
	

	    <div class="form-group">
	      <label for="exampleInputPassword">About Us</label>
	      
	      <textarea class="form-control" id="editor1" rows="5" name="article" placeholder="About Us Article">
	      ${(aboutUs.article)!""}
	      </textarea>
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