<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<#assign s=JspTaglibs["/WEB-INF/struts-tags.tld"] />
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Luvarc lighting!</title>
<meta name="keywords" content="platinum, web design theme, free templates, website templates, CSS, HTML" />
<meta name="description" content="Platinum Theme is a free CSS template provided by bestmoban.com" />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/960.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.nailthumb.1.1.min.css" />
<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />
<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu-v.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.nailthumb.1.1.min.js"></script>
<script type="text/javascript" src="js/jquery.slides.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js"></script>
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


function SetCookie(name,value)
{
    var Days = 30; 
    var exp  = new Date(); 
    exp.setTime(exp.getTime() + Days*24*60*60*1000);
    document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString();
}


function addCompare(productID, productName)
{
	SetCookie(productID, productName);
	alert(document.cookie.length);
}


function getCookie(name)        
{
    var arr = document.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));
     if(arr != null) return unescape(arr[2]); return null;

}

function delCookie(name)
{
    var exp = new Date();
    exp.setTime(exp.getTime() - 1);
    var cval=getCookie(name);
    if(cval!=null) document.cookie= name + "="+cval+";expires="+exp.toGMTString();
}

</script>

<style>

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
					<li class="bar"><a  href="http://www.dynamicdrive.com">Products</a> 
					  <ul>
						  <li><a href="./productdetail.do" style="font-size:15px !important">Down lights</a></li>
						  <li><a href="./productdetail.do" style="font-size:15px !important">Strip lights</a></li>
						  <li><a href="./productdetail.do" style="font-size:15px !important">Rope Lights</a></li>
						  <li><a href="./productdetail.do" style="font-size:15px !important">LED Puck Lights</a></li>
					  </ul>
				</li>
				<li class="bar wide">
					<a  href="http://www.dynamicdrive.com">LED in the house</a>
				</li>
				<li class="bar"><a href="http://www.dynamicdrive.com">About us</a></li>
				<li class="bar"><a href="http://www.dynamicdrive.com">Contact us</a>

				</li>
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
					<div class="grid_16">
						<h2>${(product.productName)!""}</h2>
					</div>
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
						  			<label><input type="radio" name="${mKey}" checked="checked" value="1" class="form-radio" name="reportType" />${(itemValue.typeName)!""}</label>&nbsp;
					  			</#list>
					  		</div>
					  		<div class="clear"></div>
					  	</#list>
				  	</#if>
				  		<div class="grid_2 prefix_3">
					  		&nbsp;
				  		</div>
				  		<div class="clear"></div>
				  		
				  		<div class="grid_2 prefix_3 noprint">
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
                <h3 class="noprint">Similar products</h3>
                
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
                
                </div><!--div class="container_16"-->
                <div class="clear"></div>
                
            </div>
            <div id="sidebar" class="noprint" style="padding-top:50px;">
            <#if comparedProduct??>
	            <#if comparedProduct?size gt 0>
	                <div class="sb_box">
	                    <h4>Compare products</h4>
	                    <#list comparedProduct as cprod>
	                    <div style="margin: 0 0 5px;padding: 0 0 3px;border-bottom: 1px dotted #efefef;height:15px">
	                    <div style="width:230px;float:left;width:160px;overflow:hidden;text-overflow:ellipsis; white-space:nowrap;"><a href="./productdetail.do?productID=${(cprod.productID)!""}"><span style="font-size:12px;color:#881212">${(cprod.productName)!""}</span></a></div>
	                    <div style="width:20px;float:right"><a href="./productdetail.do?productID=${(product.productID)!""}&deleteCompare=${(cprod.productID)!""}"><img src="./images/close.gif" width="10px" height="10px" /></a></div>
	                    </div>
	                    <div class="cleaner"></div>
	                    </#list>
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

<div id="templatemo_footer_wrapper" class="noprint">
	<div id="templatemo_footer">
    	<a class="goto_top"></a>
    	<div class="col_4">
        	<h5>Pages</h5>
            <ul class="footer_list">
            	<li><a href="home.html">Home</a></li>
                <li><a href="about.html">About Us</a></li>
                <li><a href="portfolio.html">Portfolio</a></li>
                <li><a href="blog.html">Blog</a></li>
                <li><a href="contact.html">Contact</a></li>
			</ul>
        </div>
        
        <div class="col_4">
        	<h5>Partners</h5>
            <ul class="footer_list">
            	<li><a href="http://www.flashmo.com/">Free Flash Templates</a></li>
                <li><a href="http://www.bestmoban.com/">Free CSS Templates</a></li>
                <li><a href="http://www.flashmo.com/store">Preminum Templates</a></li>
                <li><a href="http://www.koflash.com/">Website Gallery</a></li>
                <li><a href="http://www.webdesignmo.com/blog/">Web Design Resources</a></li>
			</ul>             
        </div>
        
        <div class="col_4">
        	<h5>Twitter</h5>
            <ul class="twitter_post">
	            <li>Suspendisse at scelerisque urna. Aenean tincidunt massa in tellus varius ultricies.</li>
                <li>Proin dignissim, diam nec <a href="#">@TemplateMo</a> enim lorem tempus orci, ac ante purus in justo.</li>
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