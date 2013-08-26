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
<script type="text/javascript" language="javascript" src="js/jquery.backgroundSize.js"></script>
<script>
jQuery(document).ready(function() {
    jQuery('.nailthumb-container').nailthumb({width:150,height:150});
});

jQuery(document).ready(function() {
    jQuery('.category_small').nailthumb({width:120,height:120}); 
});

jQuery(document).ready(function() {
    jQuery('.product_small').nailthumb({width:70,height:70}); 
});

jQuery(document).ready(function() {
	$("#templatemo_wrapper").css( "background-size", "contain" );
});
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
    
    
     #Div1
    {
      float:left; width:150px; height:180px;
    }
    #Div2
    {
       width:530px;height:180px; float:left;
    }
     #Div3
    {
       width:220px;height:180px; float:left;
    }
    
     .non
	 {
	 	border-right:1px solid #eee;
	 	background-image: url(./images/longbg.png); 
  		background-repeat: repeat-y;
  		background-position:right bottom;
	 }
	.non-select  {
		cursor:pointer;
	    border-right:1px solid #eee;
	    background-image: url(./images/bgright.png); 
  		background-repeat: repeat-y;
  		background-position:right;
	}
	 
	 	.non-top  {
		cursor:pointer;
	    border-right:1px solid #eee;
	    background-image: url(./images/bgrightshort.png); 
  		background-repeat: repeat-y;
  		background-position:right;
	}
	#tabnav ul li {
	    display:inline;
	    margin-left:10px;
	}
	 
	#tabnav ul li a {
	    background:#fff;    
	    padding:5px 10px 5px 10px;
	    border:1px solid #999;
	}
	 
	#tabnav ul li a:hover {
	    background:#fff;    
	}
	 
	.here {
	    border-top:1px solid #eee;
	    border-left:0px solid #eee;
	    border-bottom:1px solid #eee;
	    background-image: url(./images/tabbg.png);
  		background-repeat: repeat-y;
  		cursor:pointer;
	}
	
	

	.jerome {
		position:relative;
		height:30px;
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

    
	<div id="templatemo_main_wrapper" style="height:700px">
    	<div class="container_16" style="height:700px;padding-top:60px">
    	<div class="grid_3">&nbsp;</div> 
    	<#if compareProduct??>
    	
    	<#list compareProduct as product>
			<div class="grid_3">
				<div style="text-align:center">
					<h5>${(product.productName)!""}</h5>
				</div>
				<div style="margin: 0 auto;width:150px; border:1px solid #ccc; padding: 5px 5px 5px 5px; background-color:#fff;">
					<div class="nailthumb-container">
					 <img src="${(product.productImage)!""}" alt="Image 01">
					</div>
				</div>
			</div>
		</#list>
		<div class="clear"></div>
		
		<div class="grid_3" style="margin-top:20px;">
			<div class="jerome"><div style="border-bottom:1px solid #ccc;position:absolute;top:0;width:180px;">&nbsp;</div><h5>a<h5></div>
			<div class="jerome"><div style="border-bottom:1px solid #ccc;position:absolute;top:0;width:180px;">&nbsp;</div><h5>a<h5></div>
			<div class="jerome"><div style="border-bottom:1px solid #ccc;position:absolute;top:0;width:180px;">&nbsp;</div><h5>a<h5></div>
			<div class="jerome"><div style="border-bottom:1px solid #ccc;position:absolute;top:0;width:180px;">&nbsp;</div><h5>a<h5></div>
			<div class="jerome"><div style="border-bottom:1px solid #ccc;position:absolute;top:0;width:180px;">&nbsp;</div><h5>a<h5></div>
			<div class="jerome"><div style="border-bottom:1px solid #ccc;position:absolute;top:0;width:180px;">&nbsp;</div><h5>a<h5></div>
			
			
									
		</div>
		<#list compareProduct as product>
			
			<div class="grid_3" style="margin-top:20px;">
				
				<div class="jerome"><div style="border-bottom:1px solid #ccc;position:absolute;top:0;width:180px;">&nbsp;</div>a</div>
				<div class="jerome"><div style="border-bottom:1px solid #ccc;position:absolute;top:0;width:180px;">&nbsp;</div>a</div>
				<div class="jerome"><div style="border-bottom:1px solid #ccc;position:absolute;top:0;width:180px;">&nbsp;</div>a</div>
				<div class="jerome"><div style="border-bottom:1px solid #ccc;position:absolute;top:0;width:180px;">&nbsp;</div>a</div>
				<div class="jerome"><div style="border-bottom:1px solid #ccc;position:absolute;top:0;width:180px;">&nbsp;</div>a</div>
				<div class="jerome"><div style="border-bottom:1px solid #ccc;position:absolute;top:0;width:180px;">&nbsp;</div>a</div>
				<div class="jerome"><div style="border-bottom:1px solid #ccc;position:absolute;top:0;width:180px;">&nbsp;</div>a</div>
				
			</div>
			

		</#list>
		</#if>
		</div><!-- <div class="container_12"> -->
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