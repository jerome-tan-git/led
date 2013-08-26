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

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.nailthumb.1.1.min.js"></script>
<script type="text/javascript" src="js/jquery.slides.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js"></script>
<script type="text/javascript" language="javascript" src="js/	jquery.carouFredSel-6.2.1-packed.js"></script>
<script>
jQuery(document).ready(function() {
    jQuery('.nailthumb-container').nailthumb({width:190,height:100});
});
</script>

<script type="text/javascript">
  $(document).ready(function() {
        //move he last list item before the first item. The purpose of this is if the user clicks to slide left he will be able to see the last item.
        //$('#carousel_ul li:first').before($('#carousel_ul li:last')); 
        
        
        //when user clicks the image for sliding right        
        $('#right_scroll div').click(function(){
        
            //get the width of the items ( i like making the jquery part dynamic, so if you change the width in the css you won't have o change it here too ) '
            var item_width = $('#carousel_ul li').outerWidth() + 60;
            
            //calculae the new left indent of the unordered list
            var left_indent = parseInt($('#carousel_ul').css('left')) - item_width;
            
            //make the sliding effect using jquery's anumate function '
            $('#carousel_ul:not(:animated)').animate({'left' : left_indent},500,function(){    
                
                //get the first list item and put it after the last list item (that's how the infinite effects is made) '
                $('#carousel_ul li:last').after($('#carousel_ul li:first')); 
                
                //and get the left indent to the default -210px
                $('#carousel_ul').css({'left' : '-250px'});
            }); 
        });
        
        //when user clicks the image for sliding left
        $('#left_scroll div').click(function(){
            
            var item_width = $('#carousel_ul li').outerWidth() + 60;
            
            /* same as for sliding right except that it's current left indent + the item width (for the sliding right it's - item_width) */
            var left_indent = parseInt($('#carousel_ul').css('left')) + item_width;
            
            $('#carousel_ul:not(:animated)').animate({'left' : left_indent},500,function(){    
            
            /* when sliding to left we are moving the last item before the first list item */            
            $('#carousel_ul li:first').before($('#carousel_ul li:last')); 
            
            /* and again, when we make that change we are setting the left indent of our unordered list to the default -210px */
            $('#carousel_ul').css({'left' : '-250px'});
            });
            
            
        });
  });
</script>

<style>
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
    
   #carousel_inner {
	float:left; /* important for inline positioning */
	width:910px; /* important (this width = width of list item(including margin) * items shown */ 
	overflow: hidden;  /* important (hide the items outside the div) */
	margin-top:40px;
	
	}
	
	#carousel_ul {
	position:relative;
	left:-250px; /* important (this should be negative number of list items width(including margin) */
	list-style-type: none; /* removing the default styling for unordered list items */
	margin: 0px;
	padding: 0px;
	width:9999px; /* important */
	/* non-important styling bellow */
	padding-bottom:10px;
	}
	
	#carousel_ul li{
		float: left; /* important for inline positioning of the list items */                                    
		width:200px;  /* fixed width, important */
		/* just styling bellow*/
		padding:0px;
		margin-top:10px;
		margin-bottom:10px; 
		margin-left:15px; 
		margin-right:15px; 
	}
	
	#carousel_ul li img {
	.margin-bottom:-4px; /* IE is making a 4px gap bellow an image inside of an anchor (<a href...>) so this is to fix that*/
	/* styling */
	cursor:pointer;
	cursor: hand; 
	border:0px; 
	}
	#left_scroll, #right_scroll{
		float:left; 
		height:130px; 
		width:15px; 
		padding-top:55px;
		margin-top:40px;
	}
	#left_scroll img, #right_scroll img{
		/*styling*/
		cursor: pointer;
		cursor: hand;
	}
    
    
    .arrow {
		width: 22px;
		height: 20px;
		background: url("images/arrows_1.png") no-repeat;
		cursor: pointer;
		top: 50%;
	}
	.arrow.right {
		background-position: center top;
	}
    .arrow.left {
		background-position: center -20px;
	}
    
    #Div1
    {
      float:left; width:150px; height:180px;
    }
    #Div2
    {
       width:600px;height:180px; float:left;
    }
     #Div3
    {
       width:210px;height:180px; float:left;
    }
    
     .non
	 {
	 	border-right:1px solid #eee;
	 }
	.non-select  {
		cursor:pointer;
	    border-right:1px solid #eee;
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
	    background:#666;    
	}
	 
	.here {
	    border-top:1px solid #eee;
	    border-left:0px solid #eee;
	    border-bottom:1px solid #eee;
	    background-image: url(./images/tabbg.png);
  		background-repeat: repeat-y;
  		cursor:pointer;
	}
	
	
	
	.non-select:hover {
	    background:#eee;
	}
</style>
</head>
<body>

<div id="templatemo_wrapper">

    <div id="templatemo_header">
     	<div class="container_12">
        	<div id="site_title" class="grid_3">
        		<h1>
        			<a href="./">Free CSS Templates</a>
        		</h1>
        	</div>
        	<div id="site_title" class="grid_9">
        	<div id="smoothmenu1" class="ddsmoothmenu" style="padding-top:20px; padding-left:50px">
				 <ul>
					<li class="bar"><a  href="/">Home</a></li>
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
    
    <div id="templatemo_middle" class="img_hand" >
    </div> <!-- end of middle -->
    
	<div id="templatemo_main_wrapper">
	<div class="container_12" style="height:700px;padding-top:20px"> 
		<div id="Div1" style="height:600px;">
			<div class="grid_2" style="height:35px"></div>
	    		<div class="clear"></div>
	    		<div class="grid_2 non-select" style="height:35px"></div>
	    		<div class="clear"></div>
	    		
	    		<div class="grid_2 here" style="height:35px">
	    			<span style="float:right; padding-top:10px; padding-right:9px;"><h6>Down lights</h6></span>
	    		</div>
	    		<div class="clear"></div>
	    		
	    		<div class="grid_2 non-select" style="height:35px">
	    			<span style="float:right; padding-top:10px; padding-right:9px;"><h6>Strip lights</h6></span>
	    		</div>
	    		<div class="clear"></div>
	    		
				<div class="grid_2 non-select" style="height:35px">
	    			<span style="float:right; padding-top:10px; padding-right:9px;"><h6>Rope lights</h6></span>
	    		</div>
	    		<div class="clear"></div>
	    		
	    		<div class="grid_2 non-select" style="height:35px">
	    			<span style="float:right; padding-top:10px; padding-right:9px;"><h6>LED puck lights</h6></span>
	    		</div>
	    		<div class="clear"></div>
	    		
	    		<div class="grid_2 non" style="height:235px"></div>
	    		<div class="clear"></div>
    	 </div><!-- <div id="Div1" style="height:600px;"> -->
    	 <div id="Div2" style="height:600px;">
    	 </div>
    	 <div id="Div3" style="height:600px;background-color:blue">
    	 <div class="sb_box" style="padding-top:20px">
                    <h4>News</h4>
                    <p class="testimonial">Proin cursus elementum facilisis. Suspendisse malesuada tempor erat, at auctor augue volutpat vel. In lobortis sem ac mi sagittis accumsan. </p>
                    <div class="cleaner"></div>
                    <cite>Juvin <a href="#"><span>- Product specialist</span></a></cite>
            </div><!-- news -->
    	 	
    	 </div>
	</div><!-- <div class="container_12"> -->
    	 
    </div> <!-- end of main wrapper -->
    
</div> <!-- end of wrapper -->

<div id="templatemo_footer_wrapper">
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