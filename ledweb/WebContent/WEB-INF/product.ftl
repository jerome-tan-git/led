<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<#assign s=JspTaglibs["/WEB-INF/struts-tags.tld"] />
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Lyrc lighting!</title>
<meta name="keywords" content="platinum, web design theme, free templates, website templates, CSS, HTML" />
<meta name="description" content="Platinum Theme is a free CSS template provided by bestmoban.com" />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/960.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.nailthumb.1.1.min.css" />
<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />
<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu-v.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
<link rel="stylesheet" type="text/css" href="css/jquery-ui.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.nailthumb.1.1.min.js"></script>
<script type="text/javascript" src="js/jquery.slides.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js"></script>

<script type="text/javascript" language="javascript" src="js/global.js"></script>
<script type="text/javascript" language="javascript" src="js/jquery.leanModal.min.js"></script>
<script type="text/javascript" language="javascript" src="js/jquery.spinnercontrol.js"></script>
<script type="text/javascript" language="javascript" src="js/jquery-ui.js"></script>

<script>
jQuery(document).ready(function() {
    jQuery('.nailthumb-container').nailthumb({width:270,height:270}); 
});

jQuery(document).ready(function() {
    jQuery('.category_small').nailthumb({width:120,height:120});  
});

jQuery(document).ready(function() {
    jQuery('.product_small').nailthumb({width:70,height:70}); 
});

$(function() {
	$("a[rel*=leanModal]").leanModal({top : 50, closeButton: ".modal_close" });		
});


function getNumber()
{
	alert(document.orderForm.orderNum.value);
	$('.ValueDisplay').text('0');
	$('#spinner').val('0');
	
}
		
$(function() {
	$( "#slider-range-min" ).slider({
		range: "min",
		value: 1,
		min: 1,
		max: 200,
		slide: function( event, ui ) {
	        $( "#amount" ).val( ui.value );
	      }
	});
	$( "#amount" ).val($( "#slider-range-min" ).slider( "value" ) );
});	
		
function subOrder()
{
	$('.form-radio').each(function(){
		if(this.checked){
			var x = $('#selectedTypes').val();
			x+=","+$(this).val();
			$('#selectedTypes').val(x);
		}
	});
	alert($('#selectedTypes').val());
	$('#orderForm').submit();
}
</script>

<style>

#signup .txt-fld {
	position: relative;
	padding: 14px 20px;
	border-bottom: 1px solid #EEE;
}
#signup .txt-fld label {
	display: block;
	float: left;
	width: 150px;
	padding-top: 13px;
	color: #222;
	font-size: 1.3em;
	text-align: left;
}
.formTitle
{
	padding-right:10px; 
	display: block;
	float: left;
	width: 150px;
	padding-top: 14px;
	color: #222;
	font-size: 1.3em;
	text-align: right;
}
#signup .txt-fld textarea {
	padding: 8px;
	border-radius: 4px;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	font-size: 1.2em;
	color: #222;
	background: #F7F7F7;
	font-family: "Helvetica Neue";
	outline: none;
	border-top: 1px solid #CCC;
	border-left: 1px solid #CCC;
	border-right: 1px solid #E7E6E6;
	border-bottom: 1px solid #E7E6E6;
	width: 467px;
}

#signup .txt-fld input {
	padding: 8px;
	border-radius: 4px;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	font-size: 1.2em;
	color: #222;
	background: #F7F7F7;
	font-family: "Helvetica Neue";
	outline: none;
	border-top: 1px solid #CCC;
	border-left: 1px solid #CCC;
	border-right: 1px solid #E7E6E6;
	border-bottom: 1px solid #E7E6E6;
}

#signup .btn-fld {
	overflow: hidden;
	padding: 12px 20px 12px 130px;
}

#signup button {
	float: right;
	font-family: "Helvetica Neue", "Helvetica", "Arial", sans-serif;
	background: #70b8e1;
	border: none;
	width: auto;
	overflow: visible;
	font-size: 1.4em;
	color: #FFF;
	padding: 7px 10px;
	border-radius: 4px;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	font-weight: bold;
	text-shadow: 0 1px 0 rgba(0,0,0,0.4);
}

#lean_overlay {
	position: fixed;
	z-index: 10000;
	top: 0px;
	left: 0px;
	height: 100%;
	width: 100%;
	background: #000;
	display: none;
}

#signup-header {
	background: url(./images/hd-bg.png);
	padding: 18px 18px 14px 18px;
	border-bottom: 1px solid #CCC;
	border-top-left-radius: 5px;
	-moz-border-radius-topleft: 5px;
	-webkit-border-top-left-radius: 5px;
	border-top-right-radius: 5px;
	-moz-border-radius-topright: 5px;
	-webkit-border-top-right-radius: 5px;
}

#signup-header h2 {
	color: #444;
	font-size: 2em;
	font-weight: 700;
	margin-bottom: 3px;
	text-shadow: 1px 1px 0 rgba(255, 255, 255, 0.5);
	font-family: "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", sans-serif;
}

#signup-header p {
	color: #444;
	font-size: 1.3em;
	margin: 0;
	text-shadow: 1px 1px 0 rgba(255, 255, 255, 0.5);
	text-shadow: none;
	font-family: "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", sans-serif;
}
.modal_close {
	position: absolute;
	top: 12px;
	right: 12px;
	display: block;
	width: 14px;
	height: 14px;
	background: url(./images/modal_close.png);
	z-index: 2;
}
#signup {
	width: 670px;
	padding-bottom: 2px;
	display: none;
	background: #FFF;
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	box-shadow: 0px 0px 4px rgba(0,0,0,0.7);
	-webkit-box-shadow: 0 0 4px rgba(0,0,0,0.7);
	-moz-box-shadow: 0 0px 4px rgba(0,0,0,0.7);
}


@media print { 
	.noprint { display: none;color:green } 
} 

input, select, label {
	vertical-align:middle;
}
	
.form-radio,.form-checkbox{
	margin:0 5px 0 0;
	padding:0;
	width:13px;
	height:13px;
	vertical-align:middle; 
	font:13px Helvetica, Arial, sans-serif;
}
	#slides {
      display: none
    }
	
	a.slidesjs-next,
    a.slidesjs-previous,
    a.slidesjs-play,
    a.slidesjs-stop {
      background-image: url(images/btns-next-prev.png);
      background-repeat: no-repeat;
      display:block;
      width:12px;
      height:18px;
      overflow: hidden;
      text-indent: -9999px;
      float: left;
      margin-right:5px;
    }
	
	a.slidesjs-next {
      margin-right:10px;
      background-position: -12px 0;
      display:none;
    }

    a:hover.slidesjs-next {
      background-position: -12px -18px;
    }

    a.slidesjs-previous {
      background-position: 0 0;
      display:none;
    }

    a:hover.slidesjs-previous {
      background-position: 0 -18px;
    }

    a.slidesjs-play {
      width:15px;
      background-position: -25px 0;
    }

    a:hover.slidesjs-play {
      background-position: -25px -18px;
    }

    a.slidesjs-stop {
      width:18px;
      background-position: -41px 0;
    }

    a:hover.slidesjs-stop {
      background-position: -41px -18px;
    }
	
    #slides .slidesjs-navigation {
      margin-top:3px;
    }

    #slides .slidesjs-previous {
      margin-right: 5px;
      float: left;
    }

    #slides .slidesjs-next {
      margin-right: 5px;
      float: left;
    }

    .slidesjs-pagination {
      margin: 6px 0 0;
      float: right;
      list-style: none;
    }

    .slidesjs-pagination li {
      float: left;
      margin: 0 1px;
    }

    .slidesjs-pagination li a {
      display: block;
      width: 13px;
      height: 0;
      padding-top: 13px;
      background-image: url(images/pagination.png);
      background-position: 0 0;
      float: left;
      overflow: hidden;
    }

    .slidesjs-pagination li a.active,
    .slidesjs-pagination li a:hover.active {
      background-position: 0 -13px
    }

    .slidesjs-pagination li a:hover {
      background-position: 0 -26px
    }

    #slides a:link,
    #slides a:visited {
      color: #333
    }

    #slides a:hover,
    #slides a:active {
      color: #9e2020
    }
    .img_hand
    {
    	cursor:pointer;
    }
</style>
</head>
<body>
<div id="signup" style="display: none; position: fixed; opacity: 1; z-index: 11000; left: 50%; margin-left: -202px; top: 200px;">
			<div id="signup-ct">
				<div id="signup-header">
					<h2>Order form</h2>
					<a class="modal_close" href="###"></a>
				</div>
				<form name="orderForm" action="" method="post" id="orderForm">
     			  <input type="hidden" name="selectedTypes" id="selectedTypes" />	 
     			  <input type="hidden" name="selectedProduct" id="selectedTypes" value="${(product.productID)!""}"/>
     			  <input type="hidden"  name="addOrder" value="1" />
     			  <div class="txt-fld" style="height:6px;background-color:#D0EAFF">
				  	<div class="container_16">
				  		<div class="grid_11">
				    	<span style="display: block;color: #82A6CC;font-size: 1.3em;text-align:right;padding-right:20px"><strong><i>Order Info</i></strong></span>
				    	</div>
				    </div>
				  </div>
				  <div class="txt-fld" style="height: 37px;">
				   <div class="container_16">
				  		<div class="grid_2 formTitle">
				    		Quantity
				    	</div> 
				    	<div class="grid_8">
						    <input type="text" name="productQuantity" id="amount" style="border: 0; color: #333333; font-weight: bold; background-color:#fff; font-size:13pt;height:5px" />
							<div id="slider-range-min" style="width:476px;"></div>
				    	</div>				    	
				    </div>
				  </div>
				  
				  <div class="txt-fld">
				  <div class="container_16">
				  		<div class="grid_2 formTitle">
				    		Message
				    	</div>
				    	<div class="grid_8" >
							<textarea rows="3" name="orderMessage">a</textarea>
						</div>				    	
				    </div>
				    
				    
				  </div>
				  
				  <div class="txt-fld" style="height:6px;background-color:#E2FFEB">
				  	<div class="container_16">
				  		<div class="grid_11">
				    	<span style="display: block;color: #7BBB78;font-size: 1.3em;text-align:right;padding-right:20px"><strong><i>User Info</i></strong></span>
				    	</div>
				    </div>
				  </div>

				  <div class="txt-fld">
				  	<div class="container_16">
				  		<div class="grid_2 formTitle">
				    	First name*
				    	</div>
				    	<div class="grid_3">
				    	<input id="" name="orderFName" type="text" value="${(user.userName)!""}"/>
				    	</div>
				    	<div class="grid_2 formTitle">
				    	Last name*
				    	</div>
				    	<div class="grid_3">
				    	<input id="" name="orderLName" type="text" value="${(user.reserve1)!""}"/>
				    	</div>
				    </div>

				  </div>
				  
				  <div class="txt-fld">
				  	<div class="container_16">
				  		<div class="grid_2 formTitle">
				    	Suburb*
				    	</div>
				    	<div class="grid_3">
				    	<input id="" name="orderSuburb" type="text" value="${(user.reserve3)!""}"/>
				    	</div>
				    	<div class="grid_2 formTitle">
				    	State*
				    	</div>
				    	<div class="grid_3">
				    	<input id="" name="orderState" type="text" value="${(user.reserve4)!""}"/>
				    	</div>
				    </div>

				  </div>
				  <div class="txt-fld">
				    <div class="container_16">
				  		<div class="grid_2 formTitle">
				    	Address*
				    	</div>
				    	<div class="grid_8">
				    	<input id="" name="orderAdd" type="text" style="width:467px" value="${(user.address)!""}"/> 
				    	</div>
				    	
				    </div>

				  </div>
				  <div class="txt-fld">
				  	<div class="container_16">
				  		<div class="grid_2 formTitle">
				    	Post Code*
				    	</div>
				    	<div class="grid_3">
				    	<input id="" name="orderPostCode" type="text"  value="${(user.reserve2)!""}"/>
				    	</div>
				    	<div class="grid_2 formTitle">
				    	Phone*
				    	</div>
				    	<div class="grid_3">
				    	<input id="" name="orderPhone" type="text"  value="${(user.phone)!""}"/>
				    	</div>
				    </div>

				  </div>

				  <div>
				    <div class="container_16">
					    <div class="grid_3"><label style="padding-left:75px; display: block;float: left;width: 150px;padding-top: 20px;color: #222;font-size: 1.3em;text-align: left;">
					    	Trade
					    </label></div>			    
					    
					    	<#list trades as trade>
					    	<div class="grid_2" style="margin-left:-20px;padding-top:20px;">
				    			<label style="font-size:1.3em;margin-right:10px">
				    				<input type="checkbox" name="trade" value="${trade.tradeID}"  <#if useTradeID??>${useTradeID?seq_contains("${trade.tradeID}")?string("checked","")}</#if>>
				    			${trade.tradeName}
				    		</label>
				    		</div>
							<#if trade_index %5 == 4>
							<div class="clear"></div>
							<div class="grid_3">&nbsp;</div>
							</#if>
				    		</#list>
						
				    </div>
				  </div>
				  
				 
				  
				  <div class="btn-fld">
				 	 <button type="button" onClick="subOrder()">Add to cart</button>
					</div>
				 </form>
			</div>
		</div>
<div id="lean_overlay" style="display: none; opacity: 0.5;"></div>
<div id="templatemo_wrapper">

    <div id="templatemo_header" class="noprint">
     	<div class="container_12">
        	<div id="site_title" class="grid_3">
        		<h1>
        			<a href="./">Free CSS Templates</a>
        		</h1>
        	</div>
        	<div id="site_title" class="grid_9">
        	<div id="smoothmenu1" class="ddsmoothmenu" style="padding-top:20px;">
					<ul>
						<li class="bar"><a  href="./">Home</a></li>
						<#assign fcat = allCategories[0] /> 
						<li class="bar"><a  href="./category.do?categoryID=${(fcat.categoryID)!"#"}" >Products</a>
						<#if allCategories ??> 
						  <ul>
						  	<#list allCategories as category>
							  <li><a href="./category.do?categoryID=${(category.categoryID)!"#"}" style="font-size:15px !important">${(category.categoryName)!""}</a></li>
							 </#list>
						  </ul>
						  </#if>
					</li>
					<li class="bar wide">
					<a  href="./benefits.do">LED in the house</a>
					<ul>
						  <li><a href="./benefits.do" style="font-size:15px !important">Benefits of LED</a></li>
						  <li><a href="./glossary.do" style="font-size:15px !important">LED glossary</a></li>
						  
					</ul>
				</li>
				<li class="bar"><a href="./aboutUs.do">About us</a></li>
				<li class="bar"><a href="./contactUs.do">Contact us</a></li>
				</ul>
				<br style="clear: left" />
				</div>		
        	</div>
        </div>
    </div> <!-- end of header -->

    
	<div id="templatemo_main_wrapper"> 
    	<div id="templatemo_main"> 
          	<div id="content" style="">
				<div class="container_16">
					<div class="grid_16" style="padding-top:10px; padding-bottom:20px;">
						<a href="./">Home</a> &gt; <a href="./category.do?categoryID=${(product.categoryID)!"#"}">${(product.category.categoryName)!""}</a>
					</div>
					<div class="clear"></div>
					<div class="grid_10">
						<h3 style="line-height: 1.1em;">${(product.productName)!""}</h3>
					</div>
					<div class="grid_2" style="padding-top:20px">
						<img src="./images/1377781716_print.png" style="cursor:pointer" onclick="window.open('./printProduct.do?productID=${(product.productID)!"#"}','newwindow','height=1000,width=1050,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no')"/>
					</div>
					<div class="clear"></div>
					<div class="grid_5" style="margin-left:-3px">
						<div style="width:270px; border:1px solid #ccc; padding: 5px 5px 5px 5px; background-color:#fff;">				
							<div class="nailthumb-container">
								<img onerror="this.src='./images/no.jpg'" src="${(product.productImage)!""}" alt="Image 01">
						 	</div>
					 	</div>
				  	</div>
				  	<div class="grid_11">
				  	<#if product.price gt 0>
				  		<div class="grid_1">
					  		<span style="float:right"><b>Price:</b></span>
				  		</div>
				  		<div class="grid_5">
					  		<h4>$${(product.price)!""}</h4>
				  		</div>
				  		<div class="clear"></div>
				  	</#if>
				  	<#if typeMap??>
					  	<#list typeMap?keys as mKey>
					  		<div class="grid_1" >
						  		<span style="float:right"><b>${mKey}</b></span>
					  		</div>
					  		<div class="grid_5 omega">
					  		 <#assign item = typeMap[mKey]>
					  		 	<#list item as itemValue>
						  			<label><input type="radio" name="${mKey}" <#if itemValue_index==0>checked</#if> value="${(itemValue.typeID)!""}" class="form-radio" name="reportType" />${(itemValue.typeName)!""}</label>&nbsp;
					  			</#list>
					  		</div>
					  		<div class="clear"></div>
					  	</#list>
				  	</#if>
				  		<div class="grid_2 prefix_3">
					  		&nbsp;
				  		</div>
				  		<div class="clear"></div>
				  		
				  		<div class="grid_8 prefix_1 noprint">
				  			<a id="go" rel="leanModal" name="signup" href="#signup"><img src="./images/addcart_1.png" style="cursor:pointer"/></a>
					  		<a href="./productdetail.do?productID=${(product.productID)!""}&addCompare=${(product.productID)!""}"><img src="./images/addtocompare.png" /></a>
					  		
				  		</div>
				  		<div class="clear"></div>
				  	</div><!--div class="grid_11"-->
				  	<div class="clear"></div>
				  	
				  	<!-- Specs -->
				  	 <#if product.specs??> 
				  			 
				  	<#assign productSpecs = product.specs>
				  	<#if (productSpecs?size>0)>
				  	<div class="grid_10 omega" style="padding-top:20px;padding-bottom:5px;">
				  		<div class="grid_10 omega"><b>Specifications:</b></div>
				  		<div class="clear"></div>
				  		
				  		<div class="grid_10 omega" style="margin-top:10px;padding-top:5px;padding-bottom:5px;border-top:1px solid #ccc;border-bottom:1px solid #ccc;">
				  			
		  						<#list productSpecs as specItem> 
						  			<div class="grid_2">
								  		<span style="float:right;margin-right:-0px; color:#999">${(specItem.spec.specName)!""}:</span> 
							  		</div>
							  		<div class="grid_3" style="margin-left:-5px">
								  		${(specItem.specValue)!""}
							  		</div>
								  	<#if specItem_index%2==1>
							  			<div class="clear"></div>
							  		</#if>
						  		</#list>
						</div>
				  		<div class="clear"></div>
				  	</div>
				  	</#if>
					</#if>	
				  	<!-- Specs -->
				  	
				  	
				  	
				  	<div class="grid_10 omega" style="padding-top:20px;padding-left:10px">
				  		<!-- product description -->
						${(product.productDesc)!""}
						</div>
				</div>				 
				<div class="cleaner h40 noprint" style="border-bottom:1px solid #ccc; margin-bottom:40px"></div>
				<#if relatedProducts?size gt 0>
                	<h3 class="noprint">Similar products</h3>
                </#if>
                
                <div class="container_16 noprint">
                <#list relatedProducts as prod>
				<div class="grid_2">
					<div style="float:right;width:70px; border:1px solid #ccc; padding: 5px 5px 5px 5px; background-color:#fff;">				
						<div class="product_small" style="overflow: hidden; padding: 0px; width: 270px; height: 270px;">
							<img alt="Image 01" src="${(prod.productImage)!""}" class="nailthumb-image" style="position: relative; width: 270px; height: 270px; top: 0px; left: 0px;" />
						</div>
					</div>
					</div>
					<div class="grid_3">
					<h6><a href="./productdetail.do?productID=${(prod.productID)!""}">${(prod.productName)!""}</a></h6>
						<#if prod.price gt 0>
							$${(prod.price)!""}
						</#if>
					</div>
					<#if prod_index %2==1>					
						<div class="clear" style="margin-bottom:20px"></div>
					</#if>
				</#list>
				<div class="clear"></div>
				
				<div class="grid_11">
				<#if relatedProducts?size gt 0>
					<div class="cleaner h40 noprint" style="border-bottom:1px solid #ccc; margin-bottom:40px;margin-left: -19px;margin-right: 29px;"></div>
				</#if>
				<h3 class="noprint" style="margin-left: -13px">Comments</h3>
                    <div id="disqus_thread"></div>
					    <script type="text/javascript">
					        /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
					        var disqus_shortname = 'test-jerome'; // required: replace example with your forum shortname
					
					        /* * * DON'T EDIT BELOW THIS LINE * * */
					        (function() {
					            var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
					            dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
					            (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
					        })();
					    </script>
					    <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
					    <a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>
				</div>
                </div><!--div class="container_16"-->
                <div class="clear"></div>
                
            </div>
            <div id="sidebar" class="noprint" style="padding-top:50px;">
            <#if comparedProduct??>
	            <#if comparedProduct?size gt 0>
	                <div class="sb_box" style="padding-bottom:5px">
	                    <h4>Compare products</h4>
	                    <#list comparedProduct as cprod>
	                    <div style="margin: 0 0 5px;padding: 0 0 3px;border-bottom: 1px dotted #efefef;height:15px">
	                    <div style="width:230px;float:left;width:160px;overflow:hidden;text-overflow:ellipsis; white-space:nowrap;"><a href="./productdetail.do?productID=${(cprod.productID)!""}"><span style="font-size:12px;color:#881212">${(cprod.productName)!""}</span></a></div>
	                    <div style="width:20px;float:right"><a href="./productdetail.do?productID=${(product.productID)!""}&deleteCompare=${(cprod.productID)!""}"><img src="./images/close.gif" width="10px" height="10px" /></a></div>
	                    </div>
	                    <div class="cleaner"></div>
	                    
	                    </#list>
	                    <div style="text-align:right;padding-top:2px"><a href="./compare.do" target="blank"><img src="./images/btcompare.png" /></a>
	                    </div>
	            </div>
	            
	            </#if>
            </#if>
                <div class="sb_box">
                	<h4>Categories</h4>
                   <div class="container_16" style="margin: 0 auto; width:280px">
                   <#if categories??>
	                   <#list categories as cat>
	                   	<div class="grid_2 	<#if cat_index%2==1>omega<#else>alpha</#if>" <#if cat_index%2==1> style="margin-left:40px"</#if>>
	                   		<div style="width:120px; border:1px solid #ccc; padding: 5px 5px 5px 5px; background-color:#fff;">				
								<div class="category_small" style="overflow: hidden; padding: 0px; width: 270px; height: 270px;">
									<img  alt="Image 01" src="${(cat.reserve2)!""}" class="nailthumb-image" style="position: relative; width: 270px; height: 270px; top: 0px; left: 0px;">
							 	</div>
						 	</div>
						 	<div style="padding-left:10px; padding-top:5px">
							 	<a href="./category.do?categoryID=${(cat.categoryID)!"#"}"><h6><b>${(cat.categoryName)!""}</b></h6></a>
							 </div>
	                   	</div>
	                   	<#if cat_index%2==1>
	                   	<div class="cleaner" style="margin-bottom:10px"></div>
	                   	</#if>
	                   	</#list>
	                   	
                   	</#if>
                   </div><!--div class="container_16"-->
                    <div class="cleaner"></div>
                </div>
                
                
                 <div class="sb_box">
                	<h4>Featured products</h4>
                   <div class="container_16" style="margin: 0 auto; width:280px">
                   <#if featuredProducts??>
	                   <#list featuredProducts as fproduct>
	                   	<div class="grid_1 alpha" style="margin-top:10px;<#if fproduct_index %3 !=0>margin-left:48px</#if>">
	                   		<div style="width:70px; border:1px solid #ccc; padding: 5px 5px 5px 5px; background-color:#fff;">				
								<div class="product_small" style="overflow: hidden; padding: 0px; width: 70px; height: 70px;">
									<a href="./productdetail.do?productID=${(fproduct.productID)!""}"><img alt="Image 01" onerror="this.src='./images/no.jpg'" class="nailthumb-image" src="${(fproduct.productImage)}"></a>
									${(fproduct.productName)!""}
							 	</div>
						 	</div>
	                   	</div>
	                   	<#if fproduct_index %3 ==2>
	                   		<div class="cleaner"></div>
	                   	</#if>
	                   	</#list>
                   	</#if>
                   	</div><!--div class="container_16"-->
                    <div class="cleaner"></div>
                </div>
                
                
            </div> <!-- end of sidebar -->
            <div class="cleaner"></div>
        </div>
    </div> <!-- end of main wrapper -->
    
</div> <!-- end of wrapper -->

<div id="templatemo_footer_wrapper">
	<div id="templatemo_footer">
    	<a class="goto_top"></a>
    	<div class="col_4">
        	<h5>Pages</h5>
            <ul class="footer_list">
            	<li><a href="home.html">Home</a></li>
                <li><a href="about.html">Products</a></li>
                <li><a href="portfolio.html">LED in the house</a></li>
                <li><a href="blog.html">About us</a></li>
                <li><a href="contact.html">Contact us</a></li>
			</ul>
        </div>
        
        <div class="col_4">
        	<h5>Products</h5>
            <ul class="footer_list">
            
            
            	<#if categories??>
				<#list categories as category>
				<li><a href='./category.do?categoryID=${(category.categoryID)!""}'>${(category.categoryName)!""}</a></li>
				</#list>
				</#if>								
            
			</ul>             
        </div>
        
	      <div class="col_4">
	        	<h5>Terms and Conditions</h5>
	            <ul class="footer_list">
	            	<li><a href="home.html">Terms and Conditions</a></li>
				</ul>
	        </div>
        
        <div class="col_4 col_l">
        	<h5>Follow Us</h5>
            <div class="footer_social_button">
                <a href="http://www.facebook.com/templatemo"><img src="images/facebook.png" title="facebook" alt="facebook" /></a>
                <a href="#"><img src="images/flickr.png" title="flickr" alt="flickr" /></a>
                <a href="#"><img src="images/twitter.png" title="twitter" alt="twitter" /></a>
                <a href="#"><img src="images/youtube.png" title="youtube" alt="youtube" /></a>
                <a href="#"><img src="images/feed.png" title="rss" alt="rss" /></a>
			</div>
            <div class="cleaner h40"></div>
            
        	Copyright  2048 <a href="#">Company Name</a> <br /> 
            Designed by <a href="http://www.bestmoban.com" target="_parent">Free CSS Templates</a>
      		
		</div> 
        
        <div class="cleaner"></div>
    </div>
</div>



<!-- dialog -->

<!-- dialog -->


<script>
    $(function() {
      $('#slides').slidesjs({
        width: 900,
        height: 395,
        play: {
          active: true,
          auto: true,
          interval: 4000,
          swap: true
        }
      });
    });
  </script>
  
  
  <script type="text/javascript"> 
	ddsmoothmenu.init({
		 mainmenuid: "smoothmenu1", //menu DIV id
		 orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
		 classname: 'ddsmoothmenu', //class added to menu's outer DIV
		 //customtheme: ["#1c5a80", "#18374a"],
		 contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
		});
	</script>

  
  
</body>
</html>