<#assign s=JspTaglibs["/WEB-INF/struts-tags.tld"] />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lyrc management tool | File management</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.nailthumb.1.1.min.css" />
<link rel="stylesheet" type="text/css" href="./globalCss.do" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.nailthumb.1.1.min.js"></script>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/jquery.uploadify.min.js"></script>  

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



<script type="text/javascript">
	 jQuery(document).ready(function() {
	    jQuery('.nailthumb-container ').nailthumb({width:200,height:200});
	});
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
			<form id="commentForm" action="" class="form-inline" class="form-control" method="post" enctype="multipart/form-data" style="pull-right">
			<div class="col-lg-8">
				<div class="row">
					<div class="col-lg-12 well">
						<div class="row" style="border-bottom: 1px solid #ccc; margin-bottom:10px">
							<div class="col-lg-6" >
								<h2>Uploaded files</h2>
							</div>
							<div class="col-lg-6" style="padding-top:20px">
						
									<input name="newImage" type="file" class="form-control" style="width:300px"></input>
									<button type="submit" class="btn btn-primary" name="upload" value="1">Submit</button> 
								
							</div>
						</div>
						
						<div class="row">
							
							<div class="col-lg-12">
							<#if imageFiles??>
							
							<#list imageFiles as f>
							
								<div style="float:left; width:212px; height:390px;border: 1px solid #ccc; padding-top: 5px; padding-left:5px; padding-right:5px; margin-right:10px; margin-bottom:10px">
									<div class="nailthumb-container square">
										<a href="./${savePath}/${(f.name)!""}" target="blank"><img src="./${savePath}/${(f.name)!""}" /></a>
									</div>
									<div style="margin-top:10px; color:#ccc">
									Image URL: 
									<input type="text" value="${savePath}/${(f.name)!""}" class="form-control"   />
									<div style="padding-top:10px; padding-left:5px">
										<label class="checkbox-inline" style="color:#666"><input type="checkbox" name="homeImageUrl" value="${savePath}/${(f.name)!""}" <#if pcImages??>${pcImages?seq_contains(f.name)?string("checked","")}</#if> />carrousel desktop</label><br/>
										<label class="checkbox-inline" style="color:#666"><input type="checkbox" name="mobileImageUrl" value="${savePath}/${(f.name)!""}"<#if mobileImages??>${mobileImages?seq_contains(f.name)?string("checked","")}</#if> />carrousel mobile</label>
									</div>
									Target URL: 
									<input type="hidden" value="${(f.name)!""}" name="imageFileName" />
									<#assign key=f.name> 
									<input type="text" value="${(showTargetURLMap[key])!""}" class="form-control" name="targetURL"/>   
									</div>
								</div>
								
							</#list>
							
							
							</#if>
							
					</div>
				</div>
				<div class="row">
				<div class="col-lg-11">		
					<button type="submit" class="btn btn-primary pull-right" name="indexImage" value="1">Submit</button> 
					</form>	
						
				</div>		
				</div>
			</div><!--div class="col-lg-8"-->
	<span style="font-size:1pt">${saveFilePath}</span>	
	</div>
	
</body>
</html>