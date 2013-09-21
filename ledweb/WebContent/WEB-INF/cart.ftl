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

<!-- 
function addCompare(productID, productName)
{
	SetCookie(productID, productName);
	alert(document.cookie.length);
}
-->

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
							<a href="./">Home</a> &gt; <a href="./aboutUs.do">About us</a>
						</div>
						<div class="clear"></div>
					  <!--<div class="grid_11">-->
					  <div class="grid_5">
					  <#if user??>
					  	<div><h3>User Info</h3></div>
					  	<div><strong>Name</strong></div>
					  	<div>${(user.userName)!""} ${(user.reserve1)!""} </div>
					  	<br />
					  	<div><strong>Suburb</strong></div>
					  	<div>${(user.reserve3)!""}</div>
					  	<br />
					  	<div><strong>State</strong></div>
					  	<div>${(user.reserve4)!""}</div>
					  	<br />
					  	<div><strong>Address</strong></div>
					  	<div>${(user.address)!""}</div>
					  	<br />
					  	<div><strong>Post Code</strong></div>
					  	<div>${(user.reserve2)!""}</div>
					  	<br />
					  	<div><strong>Phone</strong></div>
					  	<div>${(user.phone)!""}</div>
					  	<br />					  	
					  </#if>
					  </div>
					  <div class="grid_11">
					  	<#if user??>
					  	<div><h3>Your Orders</h3></div>
					  	
					  	<#list orders as order>
					  	<div style="background-color: #DBEEFF;margin-bottom:10px;border-left: 5px solid #027CB6;">
					  		<div class="grid_1 prefix_9">
								<a href="?deleteOrder=${(order.orderID)!""}"><img src="./images/1375543476_cancel.png" style="padding-left: 63px;;padding-top: 3px;" /></a>					  		
					  		</div>
					  		<div class="clear"></div>
						  	<div class="grid_9" style="margin-top:-4px; margin-left:15px;line-height: 1.7em;">
						  		<span style="font-size:13pt;color: #333;"><a href="productdetail.do?productID=${(order.product.productID)!"#"}">${(order.product.productName)!""}</a></span>
						  	</div>
						  	<div class="grid_1" style="background-color:#00008B;height:28px;padding-top: 23px;text-align:center; width:50px;margin-top: -23px;padding-bottom: 2px;" >
						  		<span style="font-size:17pt;color: #fff;">${(order.quantity)!"0"}</span>
						  		
 
						  	</div>
						  	<div class="clear"></div>
						  	
					  		<div class="grid_11" style="padding-top: 10px;"> 
					  		<#assign oTypes = order.orderTypes>
						  	<#list oTypes as ot>
						  		<span style="background-color:#F7FFBE;padding:3px 5px 3px 5px;">${(ot.type.typeGroup.groupName)!""} : <b>${(ot.type.typeName)!""}</b></span>
						  	</#list>
							 </div>
							 <div class="clear"></div>
							 <div class="grid_11" style="margin-top:10px">
							 	 <span>${(order.message)!""}</span>
							 </div>
							 <div class="clear"></div>
							<div class="grid_4 prefix_8" style="margin-left: -19px;margin-top: 29px;color: #A7A7A7;">
						  	Order No.: ${(order.orderNo)!""}  
						  	</div>
						  	<div class="clear"></div>
						</div>
					  	</#list>
					  	
					  	</#if>
					  		
					  </div>
					 	<div class="clear"></div>
		
					</div>				 	        
                
      	</div>
      <!--
            <div id="sidebar" class="noprint" style="padding-top:50px;">
                <div class="sb_box">
                	<img  alt="Image 19" src="./images/city4.jpeg" class="nailthumb-image" style="position: 
                						relative; width: 270px; height: 270px; top: 0px; left: 0px;">
                  <img  alt="Image 20" src="./images/city2.jpeg" class="nailthumb-image" style="position: 
                						relative; width: 270px; height: 270px; top: 0px; left: 0px;">
                </div>				
                <div class="cleaner"></div>
             </div>
         -->       
                
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