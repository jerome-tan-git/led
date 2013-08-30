<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<#assign s=JspTaglibs["/WEB-INF/struts-tags.tld"] />
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Luvarc lighting!</title>
<meta name="keywords" content="platinum, web design theme, free templates, website templates, CSS, HTML" />
<meta name="description" content="Platinum Theme is a free CSS template provided by bestmoban.com" />


<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/960.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.nailthumb.1.1.min.css" />


<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.nailthumb.1.1.min.js"></script>
<script>
jQuery(document).ready(function() {
    jQuery('.nailthumb-container').nailthumb({width:270,height:270}); 
});
</script>
<body onload="window.print();">
<#if product??>
<div class="container_12">
	<div class="grid_12" style="margin-bottom:10px;border-bottom:3px solid #000;text-align:right">
		Lyrc lighting
	</div>
	<div class="grid_4">
		<div style="width:270px; border:1px solid #ccc; padding: 5px 5px 5px 5px; background-color:#fff;">				
			<div class="nailthumb-container">
				<img src="${(product.productImage)!""}" />
			</div>
		</div>
	</div>
	<div class="grid_8">
		<div><span style="font-size:24px">${(product.productName)!""}</span></div>
		<div style="margin-top:0px;padding-top:10px;"><span style="font-size:19px"><b>Price:</b>$${(product.price)!""}</span></div>
		<div style="margin-top:0px;padding-top:10px;">
		<div><b>Types:</b></div>
		<#if typeMap??>
		  	<#list typeMap?keys as mKey>
		  		<div>
			  		<span>${mKey}:</span>
			  		<#assign item = typeMap[mKey]>   
		  		 	<#list item as itemValue>
			  			[${(itemValue.typeName)!""}] &nbsp;
		  			</#list>		  		
		  		</div>
		  	</#list>
	  	</#if>
	  	</div>
	  	<div style="margin-top:0px; padding-top:10px;">
	  	 <#if product.specs??> 
				  			 
	  	<#assign productSpecs = product.specs>
	  	<#if (productSpecs?size>0)>
	  	<div><b>Specifications:</b></div>
	  	<#list productSpecs as specItem>
		  	<div class="grid_2" style="text-align:right">
		  		<span>${(specItem.spec.specName)!""}:</span>
		  	</div> 
		  	<div class="grid_2">
		  		${(specItem.specValue)!""}
		  	</div>
		  	<div class="clear"></div>
	  	</#list>
	  	
	  	</#if>
		</#if>	
	  	</div>
	</div>
	<div class="clear"></div>
	<div class="grid_12">
		<div style="margin-top:10px; border-top:1px solid #000;border-bottom:3px solid #000">
			${(product.productDesc)!""}
		</div>
	</div>
	
	
	<div class="clear"></div>
	<div class="grid_8">
	&nbsp;
	</div>
	<div class="grid_4" style="text-align:right;">
	<div>Lyrc lighting</div>
	<div>Tel:192380912</div>
	<div>Addr:L fa2fsa</div>
	</div>
</div>

</#if>
</body>
</html>