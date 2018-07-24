<%@page import="java.io.File"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.Dao"%>
<%@page import="com.model.Sliders"%>
<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
	<link rel="Shortcut Icon" href="http://logistic.wordpress.scriptsbundle.com/wp-content/themes/logistic-pro/images/favicon.ico">
<!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
<![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="../xmlrpc.php">
<title>Home 2 &#8211; Logistic Pro &#8211; WordPress Theme</title>
<link rel='dns-prefetch' href='http://fonts.googleapis.com/' />
<link rel='dns-prefetch' href='http://s.w.org/' />
<link rel="alternate" type="application/rss+xml" title="Logistic Pro - WordPress Theme &raquo; Feed" href="../feed/index.html" />
<link rel="alternate" type="application/rss+xml" title="Logistic Pro - WordPress Theme &raquo; Comments Feed" href="../comments/feed/index.html" />
		<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.2.1\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.2.1\/svg\/","svgExt":".svg","source":{"concatemoji":"http:\/\/logisticpro.glixentech.com\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.7.2"}};
			!function(a,b,c){function d(a){var b,c,d,e,f=String.fromCharCode;if(!k||!k.fillText)return!1;switch(k.clearRect(0,0,j.width,j.height),k.textBaseline="top",k.font="600 32px Arial",a){case"flag":return k.fillText(f(55356,56826,55356,56819),0,0),!(j.toDataURL().length<3e3)&&(k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,57331,65039,8205,55356,57096),0,0),b=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,57331,55356,57096),0,0),c=j.toDataURL(),b!==c);case"emoji4":return k.fillText(f(55357,56425,55356,57341,8205,55357,56507),0,0),d=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55357,56425,55356,57341,55357,56507),0,0),e=j.toDataURL(),d!==e}return!1}function e(a){var c=b.createElement("script");c.src=a,c.defer=c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var f,g,h,i,j=b.createElement("canvas"),k=j.getContext&&j.getContext("2d");for(i=Array("flag","emoji4"),c.supports={everything:!0,everythingExceptFlag:!0},h=0;h<i.length;h++)c.supports[i[h]]=d(i[h]),c.supports.everything=c.supports.everything&&c.supports[i[h]],"flag"!==i[h]&&(c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&c.supports[i[h]]);c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&!c.supports.flag,c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.everything||(g=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",g,!1),a.addEventListener("load",g,!1)):(a.attachEvent("onload",g),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),f=c.source||{},f.concatemoji?e(f.concatemoji):f.wpemoji&&f.twemoji&&(e(f.twemoji),e(f.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
		<style type="text/css">
img.wp-smiley,
img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>
<link rel='stylesheet' id='duplicate-post-css'  href='<%=request.getContextPath() %>/plugins/duplicate-post/duplicate-poste100.css?ver=4.7.2' type='text/css' media='all' />
<link rel='stylesheet' id='logistic-plugin-style-css'  href='<%=request.getContextPath() %>/plugins/logisticpro/css/logistic-stylee100.css?ver=4.7.2' type='text/css' media='all' />
<link rel='stylesheet' id='logistic-datetimepicker-css'  href='<%=request.getContextPath() %>/plugins/logisticpro/css/bootstrap-datetimepicker.mine100.css?ver=4.7.2' type='text/css' media='all' />
<link rel='stylesheet' id='logistic-select2-style-css'  href='<%=request.getContextPath() %>/plugins/logisticpro/css/select2.mine100.css?ver=4.7.2' type='text/css' media='all' />
<link rel='stylesheet' id='sb-plugin-et-line-fonts-css'  href='<%=request.getContextPath() %>/plugins/sb_framework/inc/vc_functions/icons/css/et-line-fontse100.css?ver=4.7.2' type='text/css' media='all' />
<link rel='stylesheet' id='sb-plugin-flaticon-css'  href='<%=request.getContextPath() %>/plugins/sb_framework/inc/vc_functions/icons/css/flaticone100.css?ver=4.7.2' type='text/css' media='all' />
<link rel='stylesheet' id='logistic-style-css'  href='<%=request.getContextPath() %>/themes/logistic-pro/stylee100.css?ver=4.7.2' type='text/css' media='all' />
<link rel='stylesheet' id='bootstrap-css-css'  href='<%=request.getContextPath() %>/themes/logistic-pro/css/bootstrap.css' type='text/css' media='all' />
<link rel='stylesheet' id='et-line-fonts-css'  href='<%=request.getContextPath() %>/themes/logistic-pro/css/et-line-fonts.css' type='text/css' media='all' />
<link rel='stylesheet' id='flaticon-css'  href='<%=request.getContextPath() %>/themes/logistic-pro/css/flaticon.css' type='text/css' media='all' />
<link rel='stylesheet' id='font-awesome-css'  href='<%=request.getContextPath() %>/plugins/js_composer/assets/lib/bower/font-awesome/css/font-awesome.min9d08.css?ver=4.12.1' type='text/css' media='all' />
<link rel='stylesheet' id='magnific-popup-css'  href='<%=request.getContextPath() %>/themes/logistic-pro/css/magnific-popup.css' type='text/css' media='all' />
<link rel='stylesheet' id='owl-carousel-css'  href='<%=request.getContextPath() %>/themes/logistic-pro/css/owl.carousel.css' type='text/css' media='all' />
<link rel='stylesheet' id='owl-style-css'  href='<%=request.getContextPath() %>/themes/logistic-pro/css/owl.style.css' type='text/css' media='all' />
<link rel='stylesheet' id='bootstrap-dropdownhover-css'  href='<%=request.getContextPath() %>/themes/logistic-pro/css/bootstrap-dropdownhover.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='logistic-pro-animate-css'  href='<%=request.getContextPath() %>/themes/logistic-pro/css/animate.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='logistic-pro-style-css'  href='<%=request.getContextPath() %>/themes/logistic-pro/css/style.css' type='text/css' media='all' />
<link rel='stylesheet' id='logistic-pro-custom-css'  href='<%=request.getContextPath() %>/themes/logistic-pro/css/custom.css' type='text/css' media='all' />
<link rel='stylesheet' id='sb-themes-static-css'  href='<%=request.getContextPath() %>/themes/logistic-pro/css/static.css' type='text/css' media='all' />
<style id='sb-themes-static-inline-css' type='text/css'>
.footer-area {     background-color: #323232;
    background-image: url("../../logistic.wordpress.scriptsbundle.com/wp-content/themes/logistic-pro/images/footer-bg.jpg");
    background-position: center center;
    background-repeat: no-repeat;
    background-size: cover;
    color: #c9c9c9;
    font-family: "Source Sans Pro",sans-serif;
    position: relative; }
.breadcrumbs-area {   background: rgba(0, 0, 0, 0) url("../../logistic.wordpress.scriptsbundle.com/wp-content/themes/logistic-pro/images/Logistics-and-4PL.jpg") no-repeat scroll center center;
    padding: 72px 0;
    position: relative;
    width: 100%; }
</style>
<link rel='stylesheet' id='logistic-pro-colors-css'  href='<%=request.getContextPath() %>/themes/logistic-pro/css/colors/defualt.css' type='text/css' media='all' />
<link rel='stylesheet' id='theme-color-css'  href='../index.html#' type='text/css' media='all' />
<link rel='stylesheet' id='fonts-dosis-css'  href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,400italic,600,600italic,700,700italic,900italic,900,300,300italic' type='text/css' media='all' />
<link rel='stylesheet' id='fonts-raleway-css'  href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic' type='text/css' media='all' />
<link rel='stylesheet' id='js_composer_front-css'  href='<%=request.getContextPath() %>/plugins/js_composer/assets/css/js_composer.min9d08.css?ver=4.12.1' type='text/css' media='all' />
<script type='text/javascript' src='<%=request.getContextPath() %>/wp-includes/js/jquery/jqueryb8ff.js?ver=1.12.4'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/wp-includes/js/jquery/jquery-migrate.min330a.js?ver=1.4.1'></script>
<link rel='https://api.w.org/' href='../wp-json/index.html' />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="../xmlrpc0db0.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="<%=request.getContextPath() %>/wp-includes/wlwmanifest.xml" /> 
<meta name="generator" content="WordPress 4.7.2" />
<link rel="canonical" href="index.html" />
<link rel='shortlink' href='../index2cce.html?p=63' />
<link rel="alternate" type="application/json+oembed" href="../wp-json/oembed/1.0/embed7ee4.json?url=http%3A%2F%2Flogisticpro.glixentech.com%2Fhome-2%2F" />
<link rel="alternate" type="text/xml+oembed" href="../wp-json/oembed/1.0/embedd2e6?url=http%3A%2F%2Flogisticpro.glixentech.com%2Fhome-2%2F&amp;format=xml" />
<meta name="generator" content="Powered by Visual Composer - drag and drop page builder for WordPress."/>
<!--[if lte IE 9]><link rel="stylesheet" type="text/css" href="http://logisticpro.glixentech.com/wp-content/plugins/js_composer/assets/css/vc_lte_ie9.min.css" media="screen"><![endif]--><!--[if IE  8]><link rel="stylesheet" type="text/css" href="http://logisticpro.glixentech.com/wp-content/plugins/js_composer/assets/css/vc-ie8.min.css" media="screen"><![endif]--><noscript><style type="text/css"> .wpb_animate_when_almost_visible { opacity: 1; }</style></noscript></head>
<body class="page-template page-template-page-composer page-template-page-composer-php page page-id-63 wpb-js-composer js-comp-ver-4.12.1 vc_responsive">
 <div class="preloader"><span class="preloader-gif"></span></div>
<div data-target="#request-quote" data-toggle="modal" class="quote-button hidden-xs">
		  <a class="btn btn-primary" href="javascript:void(0)"><i class="fa fa-envelope"></i></a>
	</div>
 <!-- =-=-=-=-=-=-= Color Switcher =-=-=-=-=-=-= -->
<div class="color-switcher" id="choose_color"> <a href="javascript:void(0);" class="picker_close"><i class="fa fa-gear"></i></a>
    <h5>STYLE SWITCHER</h5>
    <div class="theme-colours">
        <p>Choose Colour style </p>
        <ul>
            <li>
                <a href="#" class="defualt" id="defualt"></a>
            </li>
            <li>
                <a href="#" class="red" id="red"></a>
            </li>
            <li>
                <a href="#" class="green" id="green"></a>
            </li>
            <li>
                <a href="#" class="orange" id="orange"></a>
            </li>
            <li>
                <a href="#" class="purple" id="purple"></a>
            </li>
            <li>
                <a href="#" class="yellow" id="yellow"></a>
            </li>
            
        </ul>
    </div>
    <div class="clr"> </div>
</div>
 <!-- =-=-=-=-=-=-= HEADER =-=-=-=-=-=-= -->
		<section class="top-bar ">
		  <div class="container">
			<div class="left-text pull-left">
			  <p>Opening Hours : Monday to Saturday - 8am to 5pm</p>
			</div>
			<!-- /.left-text -->
			
            
                      
         
        <ul class="nav-right pull-right list-unstyled">
                          <li> <a href="<%= request.getContextPath() %>/wp-content/portal/Member-login.jsp">
             		<i class="fa fa-lock"></i>Member Login						
                   </a>
             </li>
             <li> <a href="<%= request.getContextPath() %>/wp-content/LoginBack.jsp"><i class="fa fa-user"></i> Admin Panel</a></li>
             
             
                     </ul>
        
        	
                          
			
			<!-- /.social-icons --> 
		  </div>
		</section>
<header class="header-area"> 
  <!-- Logo Bar -->
  <div class="logo-bar">
    <div class="container clearfix"> 
      <!-- Logo -->
      <div class="logo"> <a href="../index.html">
                	<img src="../../logistic.wordpress.scriptsbundle.com/wp-content/themes/logistic-pro/images/logo.png" alt="logo">
                </a>
      </div>
      <!--Info Outer-->
            <div class="information-content"> 
        <!--Info Box-->
                <div class="info-box  hidden-sm">
          <div class="icon"><span class="icon-envelope"></span></div>
          <div class="text">EMAIL</div>
          <a href="mailto:email@yourdomain.com"> email@yourdomain.com </a> </div>
                <!--Info Box-->
                <div class="info-box  hidden-sm">
          <div class="icon"><span class="icon-phone"></span></div>
          <div class="text">Call Now</div>
          <a href="#"> (92) 123-456-78 </a> </div>
                <!--Info Box-->
                <div class="info-box  hidden-sm">
          <div class="icon"><span class="icon-map"></span></div>
          <div class="text">Find Us</div>
          <a href="#"> Model Town, Pakistan </a> </div>
              </div>
          </div>
  </div>
  <!-- Header Top End --> 
  
  <!-- Menu Section -->
  <div class="navigation-2"> 
    <!-- navigation-start -->
    <nav class="navbar navbar-default ">
      <div class="container"> 
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-navigation" aria-expanded="false"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        
        <div class="collapse navbar-collapse" id="main-navigation">
          <ul class="nav navbar-nav ">
<li class="dropdown ">
<a href="http://logistic.wordpress.scriptsbundle.com/" class="dropdown-toggle " data-hover="dropdown" data-toggle="dropdown" data-animations="fadeInUp">Home <span class="fa fa-angle-down"></span></a>
<ul class="dropdown-menu">
<li>
<a href="../index.html" class="">Home</a>
</li>
<li>
<a href="../home/index.html" class="">Home Page 2</a>
</li>
<li>
<a href="../home-3/index.html" class="">Home Page 3</a>
</li>
<li>
<a href="index.html" class="">Home Page (Carousel)</a>
</li>
<li>
<a href="../home-4/index.html" class="">Home Page (Parallax)</a>
</li>
<li>
<a href="../home-5/index.html" class="">Home (Static BG)</a>
</li>
<li>
<a href="../onepage/index.html" class="">Onepage</a>
</li>
</ul>
</li>
<li class="dropdown ">
<a href="#about" class="dropdown-toggle " data-hover="dropdown" data-toggle="dropdown" data-animations="fadeInUp">About <span class="fa fa-angle-down"></span></a>
<ul class="dropdown-menu">
<li>
<a href="../about/index.html" class="">About</a>
</li>
<li>
<a href="../about-2/index.html" class="">About 2</a>
</li>
</ul>
</li>
<li class="">
<a href="../gallery/index.html" class="">Gallery</a>
</li>
<li class="dropdown ">
<a href="#services" class="dropdown-toggle " data-hover="dropdown" data-toggle="dropdown" data-animations="fadeInUp">Services <span class="fa fa-angle-down"></span></a>
<ul class="dropdown-menu">
<li>
<a href="../services/index.html" class="">Services</a>
</li>
<li>
<a href="../service-2/index.html" class="">Service 2</a>
</li>
<li>
<a href="../services-3/index.html" class="">Services 3</a>
</li>
<li>
<a href="../services-4/index.html" class="">Services 4 (Sticky Bar)</a>
</li>
<li>
<a href="../service/trucking-service/index.html" class="">Services Detail</a>
</li>
</ul>
</li>
<li class="dropdown ">
<a href="#" class="dropdown-toggle " data-hover="dropdown" data-toggle="dropdown" data-animations="fadeInUp">Blog <span class="fa fa-angle-down"></span></a>
<ul class="dropdown-menu">
<li>
<a href="../blog-1/index.html" class="">Blog - Grid</a>
</li>
<li>
<a href="../blog-left-side-bar/index.html" class="">Blog Left Side Bar</a>
</li>
<li>
<a href="../blog-right-side-bar/index.html" class="">Blog Right Side Bar</a>
</li>
<li>
<a href="../mansory-no-side-bar/index.html" class="">Masonry No Side Bar</a>
</li>
<li>
<a href="../masonry-left-side-bar/index.html" class="">Masonry Left Side Bar</a>
</li>
<li>
<a href="../masonry-right-side-bar/index.html" class="">Masonry Right Side Bar</a>
</li>
</ul>
</li>
<li class="dropdown ">
<a href="#" class="dropdown-toggle " data-hover="dropdown" data-toggle="dropdown" data-animations="fadeInUp">Pages <span class="fa fa-angle-down"></span></a>
<ul class="dropdown-menu">
<li>
<a href="../404.html" class="">Error Page</a>
</li>
<li>
<a href="../our-team-2/index.html" class="">Our Team</a>
</li>
<li>
<a href="../icons-page/index.html" class="">Icons</a>
</li>
<li>
<a href="../gallery/index.html" class="">Gallery</a>
</li>
<li>
<a href="../flaticons/index.html" class="">Flaticons</a>
</li>
</ul>
</li>
<li class="">
<a href="../contact/index.html" class="">Contact</a>
</ul>
                    	<a class="btn btn-primary pull-right" data-toggle="modal" href="../member-order-shipment/index.html">
            
            Booking             </a>
             
        </div>
        <!-- /.navbar-collapse --> 
        
      </div>
      <!-- /.container-end --> 
    </nav>
  </div>
  <!-- /.navigation-end --> 
  <!-- Menu  End --> 
</header>

<section>
		<div class="vc_row wpb_row vc_row-fluid">
			<div class="wpb_column vc_column_container vc_col-sm-12">
				<div class="vc_column-inner ">
					<div class="wpb_wrapper">							
		
					 	<div id="main-slide" class="carousel slide" data-ride="carousel">

		<!-- Indicators -->
		<ol class="carousel-indicators visible-lg visible-md">
			<%
		try{
			int size = new File("C:/Users/harsh/workspace_project/Insurance Mania/WebContent/slider-images").list().length;
			
			Sliders slider = new Sliders();
			Dao dao = new Dao();
			
			List<Sliders> slider_list = dao.show_sliders();
			
			Iterator i = slider_list.iterator();
			
			
			while(i.hasNext())
			{
				
				slider = (Sliders)i.next();
				System.out.println("Slider's Pointers :  "+slider.getId());
			%>
			
		  	<li data-target="#mycarousel" data-slide-to="<%=slider.getId() %>" class="active"></li>
		  	
		<%   }%>
		 
		</ol>
			<!--/ Indicators end-->

		<!-- Carousel inner -->
		<div class="carousel-inner">
			<%
			
			slider= slider_list.get(0);
				String first_slider = slider.getName();
				System.out.println("First Slider:" +first_slider);
				
			%>
			<div class="item active" style="">
              <img alt="" src="<%= request.getContextPath() %>/slider-images/<%= slider.getName()%>">
		   	</div>
		   	<!--/ Carousel item end -->
			<%
			Iterator it = slider_list.iterator();
			while(it.hasNext())
			{
				slider = (Sliders)it.next();
			
				if(slider.getName().equals(first_slider))
					{
						continue;
					}
			%>

		   <div class="item" style="">
		   		<img alt="" src="<%= request.getContextPath() %>/slider-images/<%= slider.getName()%>">
            </div>
            <%
			}
		}catch(Exception e){e.printStackTrace();}	
			%>
			
		    <!--/ Carousel item end -->
		    
		</div><!-- Carousel inner end-->

		<!-- Controllers -->
		<a class="left carousel-control" href="#main-slide" data-slide="prev">
	    	<span><i class="fa fa-angle-left"></i></span>
		</a>
		<a class="right carousel-control" href="#main-slide" data-slide="next">
	    	<span><i class="fa fa-angle-right"></i></span>
		</a>

		<span class="down-arrow-transparent"></span>

	</div>
		
		</div></div></div></div>
		<div class="vc_row wpb_row vc_row-fluid"><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper"><section class="custom-padding set-bg-color white" id="about-section-3">
		  <div class="container">
			<div class="main-boxes">
			  <div class="row">
					
					
									
					<div class="col-sm-12 col-md-4 col-xs-12">
				  <div class="services-grid-1">
					
				<div class="service-image"> 
					<a href="../service/trucking-service/index.html">
						<img alt="Trucking Service" src="<%=request.getContextPath() %>/uploads/2016/08/6-2.jpg">
					</a> 
				</div>
					<div class="services-text">
					  <h4><a href="../service/trucking-service/index.html">Trucking Service</a> </h4>
					  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dictum facilisis nunc in tempor. Praesent vel quam nunc. Sed vel mauris quis eros posuere..</p>
				</div>
					<div class="more-about"> 
						<a class="btn btn-primary btn-lg" href="../service/trucking-service/index.html">
							Read More <i class="fa fa-chevron-circle-right"></i>
						</a> 
					</div>
				  </div>
				  <!-- end services-grid-1 --> 
				</div><div class="col-sm-12 col-md-4 col-xs-12">
				  <div class="services-grid-1">
					
				<div class="service-image"> 
					<a href="../service/warehousing/index.html">
						<img alt="Warehousing" src="<%=request.getContextPath() %>/uploads/2016/08/1-5.jpg">
					</a> 
				</div>
					<div class="services-text">
					  <h4><a href="../service/warehousing/index.html">Warehousing</a> </h4>
					  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dictum facilisis nunc in tempor. Praesent vel quam nunc. Sed vel mauris quis eros posuere..</p>
				</div>
					<div class="more-about"> 
						<a class="btn btn-primary btn-lg" href="../service/warehousing/index.html">
							Read More <i class="fa fa-chevron-circle-right"></i>
						</a> 
					</div>
				  </div>
				  <!-- end services-grid-1 --> 
				</div><div class="col-sm-12 col-md-4 col-xs-12">
				  <div class="services-grid-1">
					
				<div class="service-image"> 
					<a href="../service/logistic-services/index.html">
						<img alt="Logistic Services" src="<%=request.getContextPath() %>/uploads/2016/08/4-2.jpg">
					</a> 
				</div>
					<div class="services-text">
					  <h4><a href="../service/logistic-services/index.html">Logistic Services</a> </h4>
					  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dictum facilisis nunc in tempor. Praesent vel quam nunc. Sed vel mauris quis eros posuere..</p>
				</div>
					<div class="more-about"> 
						<a class="btn btn-primary btn-lg" href="../service/logistic-services/index.html">
							Read More <i class="fa fa-chevron-circle-right"></i>
						</a> 
					</div>
				  </div>
				  <!-- end services-grid-1 --> 
				</div>
					
					
				</div>
			</div>
		 </div>
		</section>
		<div class="parallex-small" id="call-to-action">
        <div class="container">
            <div class="row custom-padding-20 ">
                <div class="col-md-8 col-sm-8">
                    <div class="parallex-text">
                        <h4>Not sure which solution fits you business needs?</h4>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4">
                    <div class="parallex-button"> 
						<a class="page-scroll btn btn-lg btn-clean" href="../contact/index.html" target="#">
						Get A Quote
						<i class="fa fa-angle-double-right "></i></a> 
					</div>
                </div>
            </div>
        </div>
    </div></div></div></div></div><div class="vc_row wpb_row vc_row-fluid"><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper"><section class="custom-padding " >
        <div class="container">
			<div class="main-heading text-center"><h2>SERVICE WE OFFER</h2><p>Cras varius purus in tempus porttitor ut dapibus efficitur sagittis cras vitae lacus metus nunc vulputate facilisis nisi<br />
eu lobortis erat consequat ut. Aliquam et justo ante. Nam a cursus velit</p></div>
            <div class="row">
                <div id="services-2" >
                    <div class="col-md-4 col-xs-12 col-sm-6">
								<div class="services-grid">
								<div class="icons"> <i class="flaticon-box-of-packing-for-delivery"></i></div>
								<h4>packaging and storage</h4> <p>We have the right caring, experience and dedicated professional for you.</p>
								</div>
							</div><div class="col-md-4 col-xs-12 col-sm-6">
								<div class="services-grid">
								<div class="icons"> <i class="flaticon-ocean-transportation"></i></div>
								<h4>cargo</h4> <p>We have the right caring, experience and dedicated professional for you.</p>
								</div>
							</div><div class="col-md-4 col-xs-12 col-sm-6">
								<div class="services-grid">
								<div class="icons"> <i class="flaticon-delivery-truck"></i></div>
								<h4>worldwide transport</h4> <p>We have the right caring, experience and dedicated professional for you.</p>
								</div>
							</div><div class="col-md-4 col-xs-12 col-sm-6">
								<div class="services-grid">
								<div class="icons"> <i class="flaticon-view-symbol-on-delivery-opened-box"></i></div>
								<h4>ware housing</h4> <p>We have the right caring, experience and dedicated professional for you.</p>
								</div>
							</div><div class="col-md-4 col-xs-12 col-sm-6">
								<div class="services-grid">
								<div class="icons"> <i class="flaticon-sea-ship-with-containers"></i></div>
								<h4>Sea Freight</h4> <p>We have the right caring, experience and dedicated professional for you.</p>
								</div>
							</div><div class="col-md-4 col-xs-12 col-sm-6">
								<div class="services-grid">
								<div class="icons"> <i class="flaticon-delivery-truck-with-packages-behind"></i></div>
								<h4>Door To Door Devivery</h4> <p>We have the right caring, experience and dedicated professional for you.</p>
								</div>
							</div><div class="col-md-4 col-xs-12 col-sm-6">
								<div class="services-grid">
								<div class="icons"> <i class="flaticon-international-delivery-symbol"></i></div>
								<h4>global trasnport</h4> <p>We have the right caring, experience and dedicated professional for you.</p>
								</div>
							</div><div class="col-md-4 col-xs-12 col-sm-6">
								<div class="services-grid">
								<div class="icons"> <i class="flaticon-logistics-delivery-truck-in-movement"></i></div>
								<h4>fast delivery</h4> <p>We have the right caring, experience and dedicated professional for you.</p>
								</div>
							</div><div class="col-md-4 col-xs-12 col-sm-6">
								<div class="services-grid">
								<div class="icons"> <i class="flaticon-24-hours-symbol"></i></div>
								<h4>24/7 Support</h4> <p>We have the right caring, experience and dedicated professional for you.</p>
								</div>
							</div>
                </div>
            </div>
        </div>
    </section></div></div></div></div><div class="vc_row wpb_row vc_row-fluid"><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper"><section class="quote white" id="quote">
        <div class="container">
            <div class="row clearfix">
				
                <div class="col-md-7 col-sm-12 col-xs-12 ">
                    <div class="choose-title">
                        <h3>More about us.</h3>
                        <h2>Why People Choose Us.</h2>
                        <p></p>
                    </div>
                    <div class="choose-services">
                        <ul class="choose-list">
                    <li><div class="choose-box"><span class="iconbox"><i class="flaticon-delivery-truck-with-circular-clock"></i></span><div class="choose-box-content"><h4>Fast Worldwide delivery</h4><p>Donec dignissim enim id urna fermentum, non hendrerit sem volutpat ellentesque pretium sapien nec metus.non hendrerit sem volutpat ellentesque pretium sapien nec metus</p></div></div></li><li><div class="choose-box"><span class="iconbox"><i class="flaticon-woman-with-headset"></i></span><div class="choose-box-content"><h4>Safety &amp; Compliance</h4><p>Donec dignissim enim id urna fermentum, non hendrerit sem volutpat ellentesque pretium sapien nec metus.non hendrerit sem volutpat ellentesque pretium sapien nec metus</p></div></div></li><li><div class="choose-box"><span class="iconbox"><i class="flaticon-24-hours-symbol"></i></span><div class="choose-box-content"><h4>24/7 Support</h4><p>Donec dignissim enim id urna fermentum, non hendrerit sem volutpat ellentesque pretium sapien nec metus.non hendrerit sem volutpat ellentesque pretium sapien nec metus</p></div></div></li>
					</ul>
						</div>
					</div>
						<div class="col-md-5 col-sm-12 no-extra col-xs-12">
		<div class="quotation-box">
			<h2>REQUEST A QUOTE</h2>
			<div class="desc-text">
				<p></p>
			</div>
			<form method="post" id="section-qoute">
				<div class="popup-msg-box"></div>
				<div class="row clearfix">
	
					<!--Form Group-->
					  <div class="form-group col-md-6 col-sm-6 col-xs-12">
						<input class="form-control" type="text" placeholder="Your Name" value="" id="your-name" name="your_name" required >
					  </div>
					  <!--Form Group-->
					  <div class="form-group col-md-6 col-sm-6 col-xs-12">
						<input class="form-control" type="email" placeholder="Email Address" value="" id="your-email" name="your_email" required >
					  </div>
					  <!--Form Group-->
					  <div class="form-group col-md-12 col-sm-12 col-xs-12">
						<input class="form-control" type="text" placeholder="Subject" value="" id="your-subject" name="your_subject" required >
					  </div>
					  
					  
					  <div class="form-group col-md-12 col-sm-12 col-xs-12">
					  <select class="form-control" id="select-cargo-type" name="select_cargo_type" required >
							<option value="Select Cargo Type">Select Cargo Type</option><option value="Courier Services">Courier Services</option><option value="Ocean Cargo">Ocean Cargo</option><option value="Ground">Ground</option><option value="Worldwide">Worldwide</option><option value="Cargo Air">Cargo Air</option><option value="Fly Anywhere">Fly Anywhere</option><option value="Door To Door">Door To Door</option>
						</select>
						</div>
					  
				
					  <!--Form Group-->
					  <div class="form-group col-md-6 col-sm-12 col-xs-12">
						<select class="form-control" id="select-location" name="select_location" required >
						  <option value="">Select Your Location</option>
							<option value="Afghanistan">Afghanistan</option><option value="Aland Islands">Aland Islands</option><option value="Albania">Albania</option><option value="Algeria">Algeria</option><option value="American Samoa">American Samoa</option><option value="Andorra">Andorra</option><option value="Angola">Angola</option><option value="Anguilla">Anguilla</option><option value="Antarctica">Antarctica</option><option value="Antigua and Barbuda">Antigua and Barbuda</option><option value="Argentina">Argentina</option><option value="Armenia">Armenia</option><option value="Aruba">Aruba</option><option value="Australia">Australia</option><option value="Austria">Austria</option><option value="Azerbaijan">Azerbaijan</option><option value="Bahamas">Bahamas</option><option value="Bahrain">Bahrain</option><option value="Bangladesh">Bangladesh</option><option value="Barbados">Barbados</option><option value="Belarus">Belarus</option><option value="Belgium">Belgium</option><option value="Belize">Belize</option><option value="Benin">Benin</option><option value="Bermuda">Bermuda</option><option value="Bhutan">Bhutan</option><option value="Bolivia">Bolivia</option><option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option><option value="Botswana">Botswana</option><option value="Bouvet Island">Bouvet Island</option><option value="Brazil">Brazil</option><option value="British Indian Ocean Territory">British Indian Ocean Territory</option><option value="Brunei Darussalam">Brunei Darussalam</option><option value="Bulgaria">Bulgaria</option><option value="Burkina Faso">Burkina Faso</option><option value="Burundi">Burundi</option><option value="Cambodia">Cambodia</option><option value="Cameroon">Cameroon</option><option value="Canada">Canada</option><option value="Cape Verde">Cape Verde</option><option value="Cayman Islands">Cayman Islands</option><option value="Central African Republic">Central African Republic</option><option value="Chad">Chad</option><option value="Chile">Chile</option><option value="China">China</option><option value="Christmas Island">Christmas Island</option><option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option><option value="Colombia">Colombia</option><option value="Comoros">Comoros</option><option value="Congo">Congo</option><option value="The Democratic Republic of The Congo">The Democratic Republic of The Congo</option><option value="Cook Islands">Cook Islands</option><option value="Costa Rica">Costa Rica</option><option value="Cote D&#039;ivoire">Cote D&#039;ivoire</option><option value="Croatia">Croatia</option><option value="Cuba">Cuba</option><option value="Cyprus">Cyprus</option><option value="Czech Republic">Czech Republic</option><option value="Denmark">Denmark</option><option value="Djibouti">Djibouti</option><option value="Dominica">Dominica</option><option value="Dominican Republic">Dominican Republic</option><option value="Ecuador">Ecuador</option><option value="Egypt">Egypt</option><option value="El Salvador">El Salvador</option><option value="Equatorial Guinea">Equatorial Guinea</option><option value="Eritrea">Eritrea</option><option value="Estonia">Estonia</option><option value="Ethiopia">Ethiopia</option><option value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</option><option value="Faroe Islands">Faroe Islands</option><option value="Fiji">Fiji</option><option value="Finland">Finland</option><option value="France">France</option><option value="French Guiana">French Guiana</option><option value="French Polynesia">French Polynesia</option><option value="French Southern Territories">French Southern Territories</option><option value="Gabon">Gabon</option><option value="Gambia">Gambia</option><option value="Georgia">Georgia</option><option value="Germany">Germany</option><option value="Ghana">Ghana</option><option value="Gibraltar">Gibraltar</option><option value="Greece">Greece</option><option value="Greenland">Greenland</option><option value="Grenada">Grenada</option><option value="Guadeloupe">Guadeloupe</option><option value="Guam">Guam</option><option value="Guatemala">Guatemala</option><option value="Guernsey">Guernsey</option><option value="Guinea">Guinea</option><option value="Guinea-bissau">Guinea-bissau</option><option value="Guyana">Guyana</option><option value="Haiti">Haiti</option><option value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald Islands</option><option value="Holy See (Vatican City State)">Holy See (Vatican City State)</option><option value="Honduras">Honduras</option><option value="Hong Kong">Hong Kong</option><option value="Hungary">Hungary</option><option value="Iceland">Iceland</option><option value="India">India</option><option value="Indonesia">Indonesia</option><option value="Iran">Iran</option><option value="Iraq">Iraq</option><option value="Ireland">Ireland</option><option value="Isle of Man">Isle of Man</option><option value="Israel">Israel</option><option value="Italy">Italy</option><option value="Jamaica">Jamaica</option><option value="Japan">Japan</option><option value="Jersey">Jersey</option><option value="Jordan">Jordan</option><option value="Kazakhstan">Kazakhstan</option><option value="Kenya">Kenya</option><option value="Kiribati">Kiribati</option><option value="Democratic People&#039;s Republic of Korea">Democratic People&#039;s Republic of Korea</option><option value="Republic of Korea">Republic of Korea</option><option value="Kuwait">Kuwait</option><option value="Kyrgyzstan">Kyrgyzstan</option><option value="Lao People&#039;s Democratic Republic">Lao People&#039;s Democratic Republic</option><option value="Latvia">Latvia</option><option value="Lebanon">Lebanon</option><option value="Lesotho">Lesotho</option><option value="Liberia">Liberia</option><option value="Libya">Libya</option><option value="Liechtenstein">Liechtenstein</option><option value="Lithuania">Lithuania</option><option value="Luxembourg">Luxembourg</option><option value="Macao">Macao</option><option value="Macedonia">Macedonia</option><option value="Madagascar">Madagascar</option><option value="Malawi">Malawi</option><option value="Malaysia">Malaysia</option><option value="Maldives">Maldives</option><option value="Mali">Mali</option><option value="Malta">Malta</option><option value="Marshall Islands">Marshall Islands</option><option value="Martinique">Martinique</option><option value="Mauritania">Mauritania</option><option value="Mauritius">Mauritius</option><option value="Mayotte">Mayotte</option><option value="Mexico">Mexico</option><option value="Micronesia">Micronesia</option><option value="Moldova">Moldova</option><option value="Monaco">Monaco</option><option value="Mongolia">Mongolia</option><option value="Montenegro">Montenegro</option><option value="Montserrat">Montserrat</option><option value="Morocco">Morocco</option><option value="Mozambique">Mozambique</option><option value="Myanmar">Myanmar</option><option value="Namibia">Namibia</option><option value="Nauru">Nauru</option><option value="Nepal">Nepal</option><option value="Netherlands">Netherlands</option><option value="Netherlands Antilles">Netherlands Antilles</option><option value="New Caledonia">New Caledonia</option><option value="New Zealand">New Zealand</option><option value="Nicaragua">Nicaragua</option><option value="Niger">Niger</option><option value="Nigeria">Nigeria</option><option value="Niue">Niue</option><option value="Norfolk Island">Norfolk Island</option><option value="Northern Mariana Islands">Northern Mariana Islands</option><option value="Norway">Norway</option><option value="Oman">Oman</option><option value="Pakistan">Pakistan</option><option value="Palau">Palau</option><option value="Palestinia">Palestinia</option><option value="Panama">Panama</option><option value="Papua New Guinea">Papua New Guinea</option><option value="Paraguay">Paraguay</option><option value="Peru">Peru</option><option value="Philippines">Philippines</option><option value="Pitcairn">Pitcairn</option><option value="Poland">Poland</option><option value="Portugal">Portugal</option><option value="Puerto Rico">Puerto Rico</option><option value="Qatar">Qatar</option><option value="Reunion">Reunion</option><option value="Romania">Romania</option><option value="Russian Federation">Russian Federation</option><option value="Rwanda">Rwanda</option><option value="Saint Helena">Saint Helena</option><option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option><option value="Saint Lucia">Saint Lucia</option><option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option><option value="Saint Vincent and The Grenadines">Saint Vincent and The Grenadines</option><option value="Samoa">Samoa</option><option value="San Marino">San Marino</option><option value="Sao Tome and Principe">Sao Tome and Principe</option><option value="Saudi Arabia">Saudi Arabia</option><option value="Senegal">Senegal</option><option value="Serbia">Serbia</option><option value="Seychelles">Seychelles</option><option value="Sierra Leone">Sierra Leone</option><option value="Singapore">Singapore</option><option value="Slovakia">Slovakia</option><option value="Slovenia">Slovenia</option><option value="Solomon Islands">Solomon Islands</option><option value="Somalia">Somalia</option><option value="South Africa">South Africa</option><option value="South Sudan">South Sudan</option><option value="South Georgia and The South Sandwich Islands">South Georgia and The South Sandwich Islands</option><option value="Spain">Spain</option><option value="Sri Lanka">Sri Lanka</option><option value="Sudan">Sudan</option><option value="Suriname">Suriname</option><option value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option><option value="Swaziland">Swaziland</option><option value="Sweden">Sweden</option><option value="Switzerland">Switzerland</option><option value="Syrian Arab Republic">Syrian Arab Republic</option><option value="Taiwan, Province of China">Taiwan, Province of China</option><option value="Tajikistan">Tajikistan</option><option value="Tanzania, United Republic of">Tanzania, United Republic of</option><option value="Thailand">Thailand</option><option value="Timor-leste">Timor-leste</option><option value="Togo">Togo</option><option value="Tokelau">Tokelau</option><option value="Tonga">Tonga</option><option value="Trinidad and Tobago">Trinidad and Tobago</option><option value="Tunisia">Tunisia</option><option value="Turkey">Turkey</option><option value="Turkmenistan">Turkmenistan</option><option value="Turks and Caicos Islands">Turks and Caicos Islands</option><option value="Tuvalu">Tuvalu</option><option value="Uganda">Uganda</option><option value="Ukraine">Ukraine</option><option value="United Arab Emirates">United Arab Emirates</option><option value="United Kingdom">United Kingdom</option><option value="United States">United States</option><option value="United States Minor Outlying Islands">United States Minor Outlying Islands</option><option value="Uruguay">Uruguay</option><option value="Uzbekistan">Uzbekistan</option><option value="Vanuatu">Vanuatu</option><option value="Venezuela">Venezuela</option><option value="Vietnam">Vietnam</option><option value="Virgin Islands, British">Virgin Islands, British</option><option value="Virgin Islands, U.S.">Virgin Islands, U.S.</option><option value="Wallis and Futuna">Wallis and Futuna</option><option value="Western Sahara">Western Sahara</option><option value="Yemen">Yemen</option><option value="Zambia">Zambia</option><option value="Zimbabwe">Zimbabwe</option>
						</select>
					  </div>
					  
					  <!--Form Group-->
					  <div class="form-group col-md-6 col-sm-12 col-xs-12">
						<select class="form-control" id="select-rlocation" name="select_rlocation" required >
						  <option value="">Select Destination</option>
							<option value="Afghanistan">Afghanistan</option><option value="Aland Islands">Aland Islands</option><option value="Albania">Albania</option><option value="Algeria">Algeria</option><option value="American Samoa">American Samoa</option><option value="Andorra">Andorra</option><option value="Angola">Angola</option><option value="Anguilla">Anguilla</option><option value="Antarctica">Antarctica</option><option value="Antigua and Barbuda">Antigua and Barbuda</option><option value="Argentina">Argentina</option><option value="Armenia">Armenia</option><option value="Aruba">Aruba</option><option value="Australia">Australia</option><option value="Austria">Austria</option><option value="Azerbaijan">Azerbaijan</option><option value="Bahamas">Bahamas</option><option value="Bahrain">Bahrain</option><option value="Bangladesh">Bangladesh</option><option value="Barbados">Barbados</option><option value="Belarus">Belarus</option><option value="Belgium">Belgium</option><option value="Belize">Belize</option><option value="Benin">Benin</option><option value="Bermuda">Bermuda</option><option value="Bhutan">Bhutan</option><option value="Bolivia">Bolivia</option><option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option><option value="Botswana">Botswana</option><option value="Bouvet Island">Bouvet Island</option><option value="Brazil">Brazil</option><option value="British Indian Ocean Territory">British Indian Ocean Territory</option><option value="Brunei Darussalam">Brunei Darussalam</option><option value="Bulgaria">Bulgaria</option><option value="Burkina Faso">Burkina Faso</option><option value="Burundi">Burundi</option><option value="Cambodia">Cambodia</option><option value="Cameroon">Cameroon</option><option value="Canada">Canada</option><option value="Cape Verde">Cape Verde</option><option value="Cayman Islands">Cayman Islands</option><option value="Central African Republic">Central African Republic</option><option value="Chad">Chad</option><option value="Chile">Chile</option><option value="China">China</option><option value="Christmas Island">Christmas Island</option><option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option><option value="Colombia">Colombia</option><option value="Comoros">Comoros</option><option value="Congo">Congo</option><option value="The Democratic Republic of The Congo">The Democratic Republic of The Congo</option><option value="Cook Islands">Cook Islands</option><option value="Costa Rica">Costa Rica</option><option value="Cote D&#039;ivoire">Cote D&#039;ivoire</option><option value="Croatia">Croatia</option><option value="Cuba">Cuba</option><option value="Cyprus">Cyprus</option><option value="Czech Republic">Czech Republic</option><option value="Denmark">Denmark</option><option value="Djibouti">Djibouti</option><option value="Dominica">Dominica</option><option value="Dominican Republic">Dominican Republic</option><option value="Ecuador">Ecuador</option><option value="Egypt">Egypt</option><option value="El Salvador">El Salvador</option><option value="Equatorial Guinea">Equatorial Guinea</option><option value="Eritrea">Eritrea</option><option value="Estonia">Estonia</option><option value="Ethiopia">Ethiopia</option><option value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</option><option value="Faroe Islands">Faroe Islands</option><option value="Fiji">Fiji</option><option value="Finland">Finland</option><option value="France">France</option><option value="French Guiana">French Guiana</option><option value="French Polynesia">French Polynesia</option><option value="French Southern Territories">French Southern Territories</option><option value="Gabon">Gabon</option><option value="Gambia">Gambia</option><option value="Georgia">Georgia</option><option value="Germany">Germany</option><option value="Ghana">Ghana</option><option value="Gibraltar">Gibraltar</option><option value="Greece">Greece</option><option value="Greenland">Greenland</option><option value="Grenada">Grenada</option><option value="Guadeloupe">Guadeloupe</option><option value="Guam">Guam</option><option value="Guatemala">Guatemala</option><option value="Guernsey">Guernsey</option><option value="Guinea">Guinea</option><option value="Guinea-bissau">Guinea-bissau</option><option value="Guyana">Guyana</option><option value="Haiti">Haiti</option><option value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald Islands</option><option value="Holy See (Vatican City State)">Holy See (Vatican City State)</option><option value="Honduras">Honduras</option><option value="Hong Kong">Hong Kong</option><option value="Hungary">Hungary</option><option value="Iceland">Iceland</option><option value="India">India</option><option value="Indonesia">Indonesia</option><option value="Iran">Iran</option><option value="Iraq">Iraq</option><option value="Ireland">Ireland</option><option value="Isle of Man">Isle of Man</option><option value="Israel">Israel</option><option value="Italy">Italy</option><option value="Jamaica">Jamaica</option><option value="Japan">Japan</option><option value="Jersey">Jersey</option><option value="Jordan">Jordan</option><option value="Kazakhstan">Kazakhstan</option><option value="Kenya">Kenya</option><option value="Kiribati">Kiribati</option><option value="Democratic People&#039;s Republic of Korea">Democratic People&#039;s Republic of Korea</option><option value="Republic of Korea">Republic of Korea</option><option value="Kuwait">Kuwait</option><option value="Kyrgyzstan">Kyrgyzstan</option><option value="Lao People&#039;s Democratic Republic">Lao People&#039;s Democratic Republic</option><option value="Latvia">Latvia</option><option value="Lebanon">Lebanon</option><option value="Lesotho">Lesotho</option><option value="Liberia">Liberia</option><option value="Libya">Libya</option><option value="Liechtenstein">Liechtenstein</option><option value="Lithuania">Lithuania</option><option value="Luxembourg">Luxembourg</option><option value="Macao">Macao</option><option value="Macedonia">Macedonia</option><option value="Madagascar">Madagascar</option><option value="Malawi">Malawi</option><option value="Malaysia">Malaysia</option><option value="Maldives">Maldives</option><option value="Mali">Mali</option><option value="Malta">Malta</option><option value="Marshall Islands">Marshall Islands</option><option value="Martinique">Martinique</option><option value="Mauritania">Mauritania</option><option value="Mauritius">Mauritius</option><option value="Mayotte">Mayotte</option><option value="Mexico">Mexico</option><option value="Micronesia">Micronesia</option><option value="Moldova">Moldova</option><option value="Monaco">Monaco</option><option value="Mongolia">Mongolia</option><option value="Montenegro">Montenegro</option><option value="Montserrat">Montserrat</option><option value="Morocco">Morocco</option><option value="Mozambique">Mozambique</option><option value="Myanmar">Myanmar</option><option value="Namibia">Namibia</option><option value="Nauru">Nauru</option><option value="Nepal">Nepal</option><option value="Netherlands">Netherlands</option><option value="Netherlands Antilles">Netherlands Antilles</option><option value="New Caledonia">New Caledonia</option><option value="New Zealand">New Zealand</option><option value="Nicaragua">Nicaragua</option><option value="Niger">Niger</option><option value="Nigeria">Nigeria</option><option value="Niue">Niue</option><option value="Norfolk Island">Norfolk Island</option><option value="Northern Mariana Islands">Northern Mariana Islands</option><option value="Norway">Norway</option><option value="Oman">Oman</option><option value="Pakistan">Pakistan</option><option value="Palau">Palau</option><option value="Palestinia">Palestinia</option><option value="Panama">Panama</option><option value="Papua New Guinea">Papua New Guinea</option><option value="Paraguay">Paraguay</option><option value="Peru">Peru</option><option value="Philippines">Philippines</option><option value="Pitcairn">Pitcairn</option><option value="Poland">Poland</option><option value="Portugal">Portugal</option><option value="Puerto Rico">Puerto Rico</option><option value="Qatar">Qatar</option><option value="Reunion">Reunion</option><option value="Romania">Romania</option><option value="Russian Federation">Russian Federation</option><option value="Rwanda">Rwanda</option><option value="Saint Helena">Saint Helena</option><option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option><option value="Saint Lucia">Saint Lucia</option><option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option><option value="Saint Vincent and The Grenadines">Saint Vincent and The Grenadines</option><option value="Samoa">Samoa</option><option value="San Marino">San Marino</option><option value="Sao Tome and Principe">Sao Tome and Principe</option><option value="Saudi Arabia">Saudi Arabia</option><option value="Senegal">Senegal</option><option value="Serbia">Serbia</option><option value="Seychelles">Seychelles</option><option value="Sierra Leone">Sierra Leone</option><option value="Singapore">Singapore</option><option value="Slovakia">Slovakia</option><option value="Slovenia">Slovenia</option><option value="Solomon Islands">Solomon Islands</option><option value="Somalia">Somalia</option><option value="South Africa">South Africa</option><option value="South Sudan">South Sudan</option><option value="South Georgia and The South Sandwich Islands">South Georgia and The South Sandwich Islands</option><option value="Spain">Spain</option><option value="Sri Lanka">Sri Lanka</option><option value="Sudan">Sudan</option><option value="Suriname">Suriname</option><option value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option><option value="Swaziland">Swaziland</option><option value="Sweden">Sweden</option><option value="Switzerland">Switzerland</option><option value="Syrian Arab Republic">Syrian Arab Republic</option><option value="Taiwan, Province of China">Taiwan, Province of China</option><option value="Tajikistan">Tajikistan</option><option value="Tanzania, United Republic of">Tanzania, United Republic of</option><option value="Thailand">Thailand</option><option value="Timor-leste">Timor-leste</option><option value="Togo">Togo</option><option value="Tokelau">Tokelau</option><option value="Tonga">Tonga</option><option value="Trinidad and Tobago">Trinidad and Tobago</option><option value="Tunisia">Tunisia</option><option value="Turkey">Turkey</option><option value="Turkmenistan">Turkmenistan</option><option value="Turks and Caicos Islands">Turks and Caicos Islands</option><option value="Tuvalu">Tuvalu</option><option value="Uganda">Uganda</option><option value="Ukraine">Ukraine</option><option value="United Arab Emirates">United Arab Emirates</option><option value="United Kingdom">United Kingdom</option><option value="United States">United States</option><option value="United States Minor Outlying Islands">United States Minor Outlying Islands</option><option value="Uruguay">Uruguay</option><option value="Uzbekistan">Uzbekistan</option><option value="Vanuatu">Vanuatu</option><option value="Venezuela">Venezuela</option><option value="Vietnam">Vietnam</option><option value="Virgin Islands, British">Virgin Islands, British</option><option value="Virgin Islands, U.S.">Virgin Islands, U.S.</option><option value="Wallis and Futuna">Wallis and Futuna</option><option value="Western Sahara">Western Sahara</option><option value="Yemen">Yemen</option><option value="Zambia">Zambia</option><option value="Zimbabwe">Zimbabwe</option>
						</select>
					  </div>
					  					  
					  <!--Form Group-->
					  <div class="form-group col-md-12 col-sm-12 col-xs-12">
						<textarea class="form-control" rows="7" cols="20" placeholder="Your Message" id="your-message" name="your_message" required ></textarea>
					  </div>
	
					<!--Form Group-->
					<div class="form-group col-md-12 col-sm-12 col-xs-12 text-right">
  <a href="javascript:void(0)" class="requesting custom-button light hidden-thing"><i class="fa fa-spinner" aria-hidden="true"></i>Requesting...</a>
 
						<a class="custom-button light" id="section-qoute-button">Submit Request</a> 
					</div>
				</div>
			</form>
		</div>
	</div>
					</div>
				</div>
			</section>
</div></div></div></div><div class="vc_row wpb_row vc_row-fluid"><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper"> <section id="gallery" class="custom-padding gray" >
        <div class="container">
			<div class="main-heading text-center"><h2>OUR GALLERY</h2><p>Cras varius purus in tempus porttitor ut dapibus efficitur sagittis cras vitae lacus metus nunc vulputate facilisis nisi<br />
eu lobortis erat consequat ut. Aliquam et justo ante. Nam a cursus velit</p></div>
            <div class="portfolio-container text-center">
                <ul id="portfolio-grid" class="three-column hover-two">
                    <li class="portfolio-item gutter">
						<div class="portfolio">
							<div class="tt-overlay"></div>
							<img src="<%=request.getContextPath() %>/uploads/2016/08/1-2.jpg" alt="Project Title">
							<div class="portfolio-info">
								<h3 class="project-title">Project Title</h3>
								<a href="#" class="links">App Design</a>
							</div>
							<ul class="portfolio-details">
								<li><a class="tt-lightbox" href="<%=request.getContextPath() %>/uploads/2016/08/1-2.jpg"><i class="fa fa-search"></i></a></li>
								<li><a href="#"><i class="fa fa-external-link"></i></a></li>
							</ul>
						</div>
					</li><li class="portfolio-item gutter">
						<div class="portfolio">
							<div class="tt-overlay"></div>
							<img src="<%=request.getContextPath() %>/uploads/2016/08/2-2.jpg" alt="Project Title">
							<div class="portfolio-info">
								<h3 class="project-title">Project Title</h3>
								<a href="#" class="links">App Design</a>
							</div>
							<ul class="portfolio-details">
								<li><a class="tt-lightbox" href="<%=request.getContextPath() %>/uploads/2016/08/2-2.jpg"><i class="fa fa-search"></i></a></li>
								<li><a href="#"><i class="fa fa-external-link"></i></a></li>
							</ul>
						</div>
					</li><li class="portfolio-item gutter">
						<div class="portfolio">
							<div class="tt-overlay"></div>
							<img src="<%=request.getContextPath() %>/uploads/2016/08/3-2.jpg" alt="Project Title">
							<div class="portfolio-info">
								<h3 class="project-title">Project Title</h3>
								<a href="#" class="links">App Design</a>
							</div>
							<ul class="portfolio-details">
								<li><a class="tt-lightbox" href="<%=request.getContextPath() %>/uploads/2016/08/3-2.jpg"><i class="fa fa-search"></i></a></li>
								<li><a href="#"><i class="fa fa-external-link"></i></a></li>
							</ul>
						</div>
					</li><li class="portfolio-item gutter">
						<div class="portfolio">
							<div class="tt-overlay"></div>
							<img src="<%=request.getContextPath() %>/uploads/2016/08/4-1.jpg" alt="Project Title">
							<div class="portfolio-info">
								<h3 class="project-title">Project Title</h3>
								<a href="#" class="links">App Design</a>
							</div>
							<ul class="portfolio-details">
								<li><a class="tt-lightbox" href="<%=request.getContextPath() %>/uploads/2016/08/4-1.jpg"><i class="fa fa-search"></i></a></li>
								<li><a href="#"><i class="fa fa-external-link"></i></a></li>
							</ul>
						</div>
					</li><li class="portfolio-item gutter">
						<div class="portfolio">
							<div class="tt-overlay"></div>
							<img src="<%=request.getContextPath() %>/uploads/2016/08/5.jpg" alt="Project Title">
							<div class="portfolio-info">
								<h3 class="project-title">Project Title</h3>
								<a href="#" class="links">App Design</a>
							</div>
							<ul class="portfolio-details">
								<li><a class="tt-lightbox" href="<%=request.getContextPath() %>/uploads/2016/08/5.jpg"><i class="fa fa-search"></i></a></li>
								<li><a href="#"><i class="fa fa-external-link"></i></a></li>
							</ul>
						</div>
					</li><li class="portfolio-item gutter">
						<div class="portfolio">
							<div class="tt-overlay"></div>
							<img src="<%=request.getContextPath() %>/uploads/2016/08/6.jpg" alt="Project Title">
							<div class="portfolio-info">
								<h3 class="project-title">Project Title</h3>
								<a href="#" class="links">App Design</a>
							</div>
							<ul class="portfolio-details">
								<li><a class="tt-lightbox" href="<%=request.getContextPath() %>/uploads/2016/08/6.jpg"><i class="fa fa-search"></i></a></li>
								<li><a href="#"><i class="fa fa-external-link"></i></a></li>
							</ul>
						</div>
					</li><li class="portfolio-item gutter">
						<div class="portfolio">
							<div class="tt-overlay"></div>
							<img src="<%=request.getContextPath() %>/uploads/2016/08/7.jpg" alt="Project Title">
							<div class="portfolio-info">
								<h3 class="project-title">Project Title</h3>
								<a href="#" class="links">App Design</a>
							</div>
							<ul class="portfolio-details">
								<li><a class="tt-lightbox" href="<%=request.getContextPath() %>/uploads/2016/08/7.jpg"><i class="fa fa-search"></i></a></li>
								<li><a href="#"><i class="fa fa-external-link"></i></a></li>
							</ul>
						</div>
					</li><li class="portfolio-item gutter">
						<div class="portfolio">
							<div class="tt-overlay"></div>
							<img src="<%=request.getContextPath() %>/uploads/2016/08/8.jpg" alt="Project Title">
							<div class="portfolio-info">
								<h3 class="project-title">Project Title</h3>
								<a href="#" class="links">App Design</a>
							</div>
							<ul class="portfolio-details">
								<li><a class="tt-lightbox" href="<%=request.getContextPath() %>/uploads/2016/08/8.jpg"><i class="fa fa-search"></i></a></li>
								<li><a href="#"><i class="fa fa-external-link"></i></a></li>
							</ul>
						</div>
					</li><li class="portfolio-item gutter">
						<div class="portfolio">
							<div class="tt-overlay"></div>
							<img src="<%=request.getContextPath() %>/uploads/2016/08/7.jpg" alt="Project Title">
							<div class="portfolio-info">
								<h3 class="project-title">Project Title</h3>
								<a href="#" class="links">App Design</a>
							</div>
							<ul class="portfolio-details">
								<li><a class="tt-lightbox" href="<%=request.getContextPath() %>/uploads/2016/08/7.jpg"><i class="fa fa-search"></i></a></li>
								<li><a href="#"><i class="fa fa-external-link"></i></a></li>
							</ul>
						</div>
					</li>
				</ul>	
            </div>
            <!-- Row End -->
        </div>
        <!-- end container -->
    </section></div></div></div></div><div class="vc_row wpb_row vc_row-fluid"><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper"><section data-stellar-background-ratio="0" class="testimonial-bg parallex section-padding text-center" style="background: rgba(255, 255, 255, 0.9) url(<%=request.getContextPath() %>/uploads/2016/08/testimonials.jpg) repeat scroll center top / cover ">
				  <div class="container">
					<div id="testimonials">
                    <div class="item">
						<div class="col-sm-12 col-md-12 col-xs-12 testimonial-grid text-center"> 
							<img src="<%=request.getContextPath() %>/uploads/2016/08/admin-1.jpg" class="img-responsive" alt="John Doe">
						  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam lacus lectus a quam eget, fringilla suscipit sapien. Duis aliquet malesuada ipsum non sodales. Suspendisse a consequat leo. Fusce tempus vitae erat at consequat. Aenean commodo felis odio, ut congue est mollis non. Sed tincidunt.</p>
						  <div class="name">John Doe</div>
						  <div class="profession">Founder, Oxford</div>
						</div>
					  </div><div class="item">
						<div class="col-sm-12 col-md-12 col-xs-12 testimonial-grid text-center"> 
							<img src="<%=request.getContextPath() %>/uploads/2016/08/admin-1.jpg" class="img-responsive" alt="John Doe">
						  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam lacus lectus a quam eget, fringilla suscipit sapien. Duis aliquet malesuada ipsum non sodales. Suspendisse a consequat leo. Fusce tempus vitae erat at consequat. Aenean commodo felis odio, ut congue est mollis non. Sed tincidunt.</p>
						  <div class="name">John Doe</div>
						  <div class="profession">Founder, Oxford</div>
						</div>
					  </div><div class="item">
						<div class="col-sm-12 col-md-12 col-xs-12 testimonial-grid text-center"> 
							<img src="<%=request.getContextPath() %>/uploads/2016/08/admin-1.jpg" class="img-responsive" alt="John Doe">
						  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam lacus lectus a quam eget, fringilla suscipit sapien. Duis aliquet malesuada ipsum non sodales. Suspendisse a consequat leo. Fusce tempus vitae erat at consequat. Aenean commodo felis odio, ut congue est mollis non. Sed tincidunt.</p>
						  <div class="name">John Doe</div>
						  <div class="profession">Founder, Oxford</div>
						</div>
					  </div><div class="item">
						<div class="col-sm-12 col-md-12 col-xs-12 testimonial-grid text-center"> 
							<img src="<%=request.getContextPath() %>/uploads/2016/08/admin-1.jpg" class="img-responsive" alt="John Doe">
						  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam lacus lectus a quam eget, fringilla suscipit sapien. Duis aliquet malesuada ipsum non sodales. Suspendisse a consequat leo. Fusce tempus vitae erat at consequat. Aenean commodo felis odio, ut congue est mollis non. Sed tincidunt.</p>
						  <div class="name">John Doe</div>
						  <div class="profession">Founder, Oxford</div>
						</div>
					  </div>
					</div>
				  </div>
				</section></div></div></div></div><div class="vc_row wpb_row vc_row-fluid"><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper"><section id="blog-post" class="custom-padding white">
		  <div class="container"> 
			<div class="main-heading text-center"><h2>OUR BLOG</h2><p>Cras varius purus in tempus porttitor ut dapibus efficitur sagittis cras vitae lacus metus nunc vulputate facilisis nisi<br />
eu lobortis erat consequat ut. Aliquam et justo ante. Nam a cursus velit</p></div>
			<div class="row"><div class="col-sm-12 col-xs-12 col-md-12 nopadding"> 
						
						<div class="col-md-4 col-sm-12 col-xs-12">
		  <div class="news-box">
			<div class="news-thumb"> 
					<a href="../to-be-the-biggest-most-innovative-and-trustworthy/index.html" title="To be the biggest, most innovative and trustworthy">
						<img class="img-responsive" alt="To be the biggest, most innovative and trustworthy" src="<%=request.getContextPath() %>/uploads/2016/08/1-3.jpg">
					</a>
				<div class="date"> <strong>13</strong> <span>Aug</span> </div>
			</div>
			<div class="news-detail">
			  <h2>
			  	<a href="../to-be-the-biggest-most-innovative-and-trustworthy/index.html" title="To be the biggest, most innovative and trustworthy">
			  		To be the biggest, most innovative and trustworthy
				</a>
			  </h2>
			  <p>Pellentesque malesuada fringilla elit, vitae aliquam lectus posuere ac. Suspendisse suscipit diam vel tortor mollis fermentum non quis tellus. Nulla f..</p>
			 	<div class="entry-footer">
			  <div class="post-meta">
				<div class="post-like"> 
					<i class="icon-calendar"></i> August 23, 2016 </div>
				<div class="post-comment"> 
					<i class="icon-chat"></i> 
					<a href="../to-be-the-biggest-most-innovative-and-trustworthy/index.html">0</a> 
				</div>
			  </div>
			</div>
			</div>
		  </div>
		</div><div class="col-md-4 col-sm-12 col-xs-12">
		  <div class="news-box">
			<div class="news-thumb"> 
					<a href="../the-complete-logistics-company/index.html" title="The Complete Logistics Company">
						<img class="img-responsive" alt="The Complete Logistics Company" src="<%=request.getContextPath() %>/uploads/2016/08/2-3.jpg">
					</a>
				<div class="date"> <strong>13</strong> <span>Aug</span> </div>
			</div>
			<div class="news-detail">
			  <h2>
			  	<a href="../the-complete-logistics-company/index.html" title="The Complete Logistics Company">
			  		The Complete Logistics Company
				</a>
			  </h2>
			  <p>The Complete Logistics Company
Pellentesque malesuada fringilla elit, vitae aliquam lectus posuere ac. Suspendisse suscipit diam vel tortor mollis fe..</p>
			 	<div class="entry-footer">
			  <div class="post-meta">
				<div class="post-like"> 
					<i class="icon-calendar"></i> August 23, 2016 </div>
				<div class="post-comment"> 
					<i class="icon-chat"></i> 
					<a href="../the-complete-logistics-company/index.html">0</a> 
				</div>
			  </div>
			</div>
			</div>
		  </div>
		</div><div class="col-md-4 col-sm-12 col-xs-12">
		  <div class="news-box">
			<div class="news-thumb"> 
					<a href="../logistics-group-is-dedicated-to-our-global-trading/index.html" title="Logistics Group is dedicated to our global trading">
						<img class="img-responsive" alt="Logistics Group is dedicated to our global trading" src="<%=request.getContextPath() %>/uploads/2016/08/3-3.jpg">
					</a>
				<div class="date"> <strong>13</strong> <span>Aug</span> </div>
			</div>
			<div class="news-detail">
			  <h2>
			  	<a href="../logistics-group-is-dedicated-to-our-global-trading/index.html" title="Logistics Group is dedicated to our global trading">
			  		Logistics Group is dedicated to our global trading
				</a>
			  </h2>
			  <p>Logistics Group is dedicated to our global trading
Pellentesque malesuada fringilla elit, vitae aliquam lectus posuere ac. Suspendisse suscipit diam ..</p>
			 	<div class="entry-footer">
			  <div class="post-meta">
				<div class="post-like"> 
					<i class="icon-calendar"></i> August 23, 2016 </div>
				<div class="post-comment"> 
					<i class="icon-chat"></i> 
					<a href="../logistics-group-is-dedicated-to-our-global-trading/index.html">0</a> 
				</div>
			  </div>
			</div>
			</div>
		  </div>
		</div><div class="clearfix"></div>
						
					<div class="clearfix"></div>
			 </div></div>
		  </div>
		 
		</section></div></div></div><div class="vc_row wpb_row vc_row-fluid"></div><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner "><div class="wpb_wrapper"><section class="section-padding-70 " >
        <div class="container">
			<div class="main-heading text-center"><h2>OUR PARTNERS</h2><p>Cras varius purus in tempus porttitor ut dapibus efficitur sagittis cras vitae lacus metus nunc vulputate facilisis nisi<br />
eu lobortis erat consequat ut. Aliquam et justo ante. Nam a cursus velit</p></div>
            <div class="row">
                	<div id="clients" class="text-center">
                    <div class="item"><div class="clients-grid">  <img class='img-responsive' alt='' src='<%=request.getContextPath() %>/uploads/2016/08/client_5.png'> </div></div><div class="item"><div class="clients-grid">  <img class='img-responsive' alt='' src='<%=request.getContextPath() %>/uploads/2016/08/client_5.png'> </div></div><div class="item"><div class="clients-grid">  <img class='img-responsive' alt='' src='<%=request.getContextPath() %>/uploads/2016/08/client_5.png'> </div></div><div class="item"><div class="clients-grid">  <img class='img-responsive' alt='' src='<%=request.getContextPath() %>/uploads/2016/08/client_5.png'> </div></div><div class="item"><div class="clients-grid">  <img class='img-responsive' alt='' src='<%=request.getContextPath() %>/uploads/2016/08/client_5.png'> </div></div><div class="item"><div class="clients-grid">  <img class='img-responsive' alt='' src='<%=request.getContextPath() %>/uploads/2016/08/client_5.png'> </div></div><div class="item"><div class="clients-grid">  <img class='img-responsive' alt='' src='<%=request.getContextPath() %>/uploads/2016/08/client_5.png'> </div></div>
					</div>
                </div>
        </div>
    </section></div></div></div></div>
			             <div class="clearfix"></div>		
		</section>

<footer class="footer-area"> 
  <!--Footer Upper-->
    <div class="footer-content">
    <div class="container">
      <div class="row clearfix"> 
        
        <!--Two 4th column-->
        <div class="col-md-6 col-sm-12 col-xs-12">
          <div class="row clearfix">
            <div class="col-lg-7 col-sm-6 col-xs-12 column">
              <div class="footer-widget about-widget">
                <div class="logo">
                                    <img src="../../logistic.wordpress.scriptsbundle.com/wp-content/themes/logistic-pro/images/logo-1.png" alt="logo">
                                  </div>
                <ul class="contact-info">
                  <li><span class="icon fa fa-map-marker"></span> 60 Link Road Lhr. Pakistan 54770</li><li><span class="icon fa fa-phone"></span> +012 345 6789</li><li><span class="icon fa fa-fax"></span> +012 6789 345</li><li><span class="icon fa fa-envelope"></span> support@company.com</li>                </ul>
                <div class="social-links-two clearfix">
                  <a href="https://www.facebook.com/ScriptsBundle/?fref=ts" target="_blank" class="facebook img-circle"><span class="fa fa-facebook"></span></a><a href="#" target="_blank" class="twitter img-circle"><span class="fa fa-twitter"></span></a><a href="#" target="_blank" class="linkedin img-circle"><span class="fa fa-youtube"></span></a><a href="#" target="_blank" class="linkedin img-circle"><span class="fa fa-linkedin"></span></a><a href="#" target="_blank" class="google-plus img-circle"><span class="fa fa-google-plus"></span></a>                </div>
              </div>
            </div>
            
            <!--Footer Column-->
            <div class="col-lg-5 col-sm-6 col-xs-12 column">
              <h2>Ouick Links</h2>
              <div class="footer-widget links-widget">
                <ul>
                  <li><a href="../home/index.html">Home</a></li><li><a href="../about/index.html">About</a></li><li><a href="../contact/index.html">Contact</a></li><li><a href="../services/index.html">Services</a></li><li><a href="../blog/index.html">Blog</a></li>                </ul>
              </div>
            </div>
          </div>
        </div>
        <!--Two 4th column End--> 
        
        <!--Two 4th column-->
        <div class="col-md-6 col-sm-12 col-xs-12">
          <div class="row clearfix"> 
            <!--Footer Column-->
            <div class="col-lg-7 col-sm-6 col-xs-12 column">
              <div class="footer-widget news-widget">
                <h2>Latest Post</h2>
                                                                <!--News Post-->
                <div class="news-post ">
                  <div class="icon"></div>
                  <div class="news-content">
                                        <figure class="image-thumb"> <img alt="To be the biggest, most innovative and trustworthy" class="img-responsive" src="<%=request.getContextPath() %>/uploads/2016/08/1-3.jpg"> </figure>
                                        <a href="../to-be-the-biggest-most-innovative-and-trustworthy/index.html" title="To be the biggest, most innovative and trustworthy"> To be the biggest, most innovative and trustworthy </a> </div>
                  <div class="time">August 23, 2016</div>
                </div>
                                                <!--News Post-->
                <div class="news-post ">
                  <div class="icon"></div>
                  <div class="news-content">
                                        <figure class="image-thumb"> <img alt="The Complete Logistics Company" class="img-responsive" src="<%=request.getContextPath() %>/uploads/2016/08/2-3.jpg"> </figure>
                                        <a href="../the-complete-logistics-company/index.html" title="The Complete Logistics Company"> The Complete Logistics Company </a> </div>
                  <div class="time">August 23, 2016</div>
                </div>
                              </div>
            </div>
            
            <!--Footer Column-->
            <div class="col-lg-5 col-sm-6 col-xs-12 column">
              <div class="footer-widget links-widget">
                <h2>Our Service</h2>
                <ul>
                <li><a href="../category/web-design/index.html">Web Design</a></li><li><a href="../category/3d-design/index.html">3D Design</a></li><li><a href="../category/expert-review/index.html">Expert Review</a></li><li><a href="../category/graphic-design/index.html">Graphic Design</a></li><li><a href="../category/app-development/index.html">App Development</a></li>                </ul>
              </div>
            </div>
          </div>
        </div>
        <!--Two 4th column End--> 
        
      </div>
    </div>
  </div>
    <!--Footer Bottom-->
  <div class="footer-copyright">
    <div class="container clearfix"> 
      <!--Copyright-->
      <div class="copyright text-center">
        <p>Copyright 2016 © Theme Created By <a href="http://glixentech.com/"><strong>Glixen Technologies</strong></a> All Rights Reserved</p>      </div>
    </div>
  </div>
</footer>
<!-- =-=-=-=-=-=-= Quote Modal =-=-=-=-=-=-= -->
<div class="modal fade " id="request-quote" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
        <div class="quotation-box-1">
          <h2>
		  	REQUEST A QUOTE</h2>
          <div class="desc-text">
            <p>
		  	Lorem ipsum dolor sit amet, consetetur sadipscing elitr.            
            </p>
          </div>
          <form method="post" id="popup-qoute-form">
            <div class="row clearfix"> 
              	<div class="popup-msg-box form-group col-md-12 col-sm-12 col-xs-12"></div>
              <!--Form Group-->
              <div class="form-group col-md-6 col-sm-6 col-xs-12">
                <input class="form-control" type="text" placeholder="Your Name" value="" id="your-name-qoute" name="your_name" required >
              </div>
              <!--Form Group-->
              <div class="form-group col-md-6 col-sm-6 col-xs-12">
                <input class="form-control" type="email" placeholder="Email Address" value="" id="your-email-qoute" name="your_email" required >
              </div>
              <!--Form Group-->
              <div class="form-group col-md-12 col-sm-12 col-xs-12">
                <input class="form-control" type="text" placeholder="Subject" value="" id="your-subject-qoute" name="your_subject" required >
              </div>
              <div class="form-group col-md-12 col-sm-12 col-xs-12">
              
                            
                <select class="form-control" id="select-cargo-type-qoute" name="select_cargo_type" required >
                   <option value="Select Cargo Type">Select Cargo Type</option><option value="Courier Services">Courier Services</option><option value="Ocean Cargo">Ocean Cargo</option><option value="Ground">Ground</option><option value="Worldwide">Worldwide</option><option value="Cargo Air">Cargo Air</option><option value="Fly Anywhere">Fly Anywhere</option><option value="Door To Door">Door To Door</option>                   </select>
              </div>
              <!--Form Group-->
              <div class="form-group col-md-6 col-sm-12 col-xs-12">
                <select class="form-control" id="select-location-qoute" name="select_location" required >
                  <option value="">Select Your Location</option>
                    <option value="Afghanistan">Afghanistan</option><option value="Aland Islands">Aland Islands</option><option value="Albania">Albania</option><option value="Algeria">Algeria</option><option value="American Samoa">American Samoa</option><option value="Andorra">Andorra</option><option value="Angola">Angola</option><option value="Anguilla">Anguilla</option><option value="Antarctica">Antarctica</option><option value="Antigua and Barbuda">Antigua and Barbuda</option><option value="Argentina">Argentina</option><option value="Armenia">Armenia</option><option value="Aruba">Aruba</option><option value="Australia">Australia</option><option value="Austria">Austria</option><option value="Azerbaijan">Azerbaijan</option><option value="Bahamas">Bahamas</option><option value="Bahrain">Bahrain</option><option value="Bangladesh">Bangladesh</option><option value="Barbados">Barbados</option><option value="Belarus">Belarus</option><option value="Belgium">Belgium</option><option value="Belize">Belize</option><option value="Benin">Benin</option><option value="Bermuda">Bermuda</option><option value="Bhutan">Bhutan</option><option value="Bolivia">Bolivia</option><option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option><option value="Botswana">Botswana</option><option value="Bouvet Island">Bouvet Island</option><option value="Brazil">Brazil</option><option value="British Indian Ocean Territory">British Indian Ocean Territory</option><option value="Brunei Darussalam">Brunei Darussalam</option><option value="Bulgaria">Bulgaria</option><option value="Burkina Faso">Burkina Faso</option><option value="Burundi">Burundi</option><option value="Cambodia">Cambodia</option><option value="Cameroon">Cameroon</option><option value="Canada">Canada</option><option value="Cape Verde">Cape Verde</option><option value="Cayman Islands">Cayman Islands</option><option value="Central African Republic">Central African Republic</option><option value="Chad">Chad</option><option value="Chile">Chile</option><option value="China">China</option><option value="Christmas Island">Christmas Island</option><option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option><option value="Colombia">Colombia</option><option value="Comoros">Comoros</option><option value="Congo">Congo</option><option value="The Democratic Republic of The Congo">The Democratic Republic of The Congo</option><option value="Cook Islands">Cook Islands</option><option value="Costa Rica">Costa Rica</option><option value="Cote D&#039;ivoire">Cote D&#039;ivoire</option><option value="Croatia">Croatia</option><option value="Cuba">Cuba</option><option value="Cyprus">Cyprus</option><option value="Czech Republic">Czech Republic</option><option value="Denmark">Denmark</option><option value="Djibouti">Djibouti</option><option value="Dominica">Dominica</option><option value="Dominican Republic">Dominican Republic</option><option value="Ecuador">Ecuador</option><option value="Egypt">Egypt</option><option value="El Salvador">El Salvador</option><option value="Equatorial Guinea">Equatorial Guinea</option><option value="Eritrea">Eritrea</option><option value="Estonia">Estonia</option><option value="Ethiopia">Ethiopia</option><option value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</option><option value="Faroe Islands">Faroe Islands</option><option value="Fiji">Fiji</option><option value="Finland">Finland</option><option value="France">France</option><option value="French Guiana">French Guiana</option><option value="French Polynesia">French Polynesia</option><option value="French Southern Territories">French Southern Territories</option><option value="Gabon">Gabon</option><option value="Gambia">Gambia</option><option value="Georgia">Georgia</option><option value="Germany">Germany</option><option value="Ghana">Ghana</option><option value="Gibraltar">Gibraltar</option><option value="Greece">Greece</option><option value="Greenland">Greenland</option><option value="Grenada">Grenada</option><option value="Guadeloupe">Guadeloupe</option><option value="Guam">Guam</option><option value="Guatemala">Guatemala</option><option value="Guernsey">Guernsey</option><option value="Guinea">Guinea</option><option value="Guinea-bissau">Guinea-bissau</option><option value="Guyana">Guyana</option><option value="Haiti">Haiti</option><option value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald Islands</option><option value="Holy See (Vatican City State)">Holy See (Vatican City State)</option><option value="Honduras">Honduras</option><option value="Hong Kong">Hong Kong</option><option value="Hungary">Hungary</option><option value="Iceland">Iceland</option><option value="India">India</option><option value="Indonesia">Indonesia</option><option value="Iran">Iran</option><option value="Iraq">Iraq</option><option value="Ireland">Ireland</option><option value="Isle of Man">Isle of Man</option><option value="Israel">Israel</option><option value="Italy">Italy</option><option value="Jamaica">Jamaica</option><option value="Japan">Japan</option><option value="Jersey">Jersey</option><option value="Jordan">Jordan</option><option value="Kazakhstan">Kazakhstan</option><option value="Kenya">Kenya</option><option value="Kiribati">Kiribati</option><option value="Democratic People&#039;s Republic of Korea">Democratic People&#039;s Republic of Korea</option><option value="Republic of Korea">Republic of Korea</option><option value="Kuwait">Kuwait</option><option value="Kyrgyzstan">Kyrgyzstan</option><option value="Lao People&#039;s Democratic Republic">Lao People&#039;s Democratic Republic</option><option value="Latvia">Latvia</option><option value="Lebanon">Lebanon</option><option value="Lesotho">Lesotho</option><option value="Liberia">Liberia</option><option value="Libya">Libya</option><option value="Liechtenstein">Liechtenstein</option><option value="Lithuania">Lithuania</option><option value="Luxembourg">Luxembourg</option><option value="Macao">Macao</option><option value="Macedonia">Macedonia</option><option value="Madagascar">Madagascar</option><option value="Malawi">Malawi</option><option value="Malaysia">Malaysia</option><option value="Maldives">Maldives</option><option value="Mali">Mali</option><option value="Malta">Malta</option><option value="Marshall Islands">Marshall Islands</option><option value="Martinique">Martinique</option><option value="Mauritania">Mauritania</option><option value="Mauritius">Mauritius</option><option value="Mayotte">Mayotte</option><option value="Mexico">Mexico</option><option value="Micronesia">Micronesia</option><option value="Moldova">Moldova</option><option value="Monaco">Monaco</option><option value="Mongolia">Mongolia</option><option value="Montenegro">Montenegro</option><option value="Montserrat">Montserrat</option><option value="Morocco">Morocco</option><option value="Mozambique">Mozambique</option><option value="Myanmar">Myanmar</option><option value="Namibia">Namibia</option><option value="Nauru">Nauru</option><option value="Nepal">Nepal</option><option value="Netherlands">Netherlands</option><option value="Netherlands Antilles">Netherlands Antilles</option><option value="New Caledonia">New Caledonia</option><option value="New Zealand">New Zealand</option><option value="Nicaragua">Nicaragua</option><option value="Niger">Niger</option><option value="Nigeria">Nigeria</option><option value="Niue">Niue</option><option value="Norfolk Island">Norfolk Island</option><option value="Northern Mariana Islands">Northern Mariana Islands</option><option value="Norway">Norway</option><option value="Oman">Oman</option><option value="Pakistan">Pakistan</option><option value="Palau">Palau</option><option value="Palestinia">Palestinia</option><option value="Panama">Panama</option><option value="Papua New Guinea">Papua New Guinea</option><option value="Paraguay">Paraguay</option><option value="Peru">Peru</option><option value="Philippines">Philippines</option><option value="Pitcairn">Pitcairn</option><option value="Poland">Poland</option><option value="Portugal">Portugal</option><option value="Puerto Rico">Puerto Rico</option><option value="Qatar">Qatar</option><option value="Reunion">Reunion</option><option value="Romania">Romania</option><option value="Russian Federation">Russian Federation</option><option value="Rwanda">Rwanda</option><option value="Saint Helena">Saint Helena</option><option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option><option value="Saint Lucia">Saint Lucia</option><option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option><option value="Saint Vincent and The Grenadines">Saint Vincent and The Grenadines</option><option value="Samoa">Samoa</option><option value="San Marino">San Marino</option><option value="Sao Tome and Principe">Sao Tome and Principe</option><option value="Saudi Arabia">Saudi Arabia</option><option value="Senegal">Senegal</option><option value="Serbia">Serbia</option><option value="Seychelles">Seychelles</option><option value="Sierra Leone">Sierra Leone</option><option value="Singapore">Singapore</option><option value="Slovakia">Slovakia</option><option value="Slovenia">Slovenia</option><option value="Solomon Islands">Solomon Islands</option><option value="Somalia">Somalia</option><option value="South Africa">South Africa</option><option value="South Sudan">South Sudan</option><option value="South Georgia and The South Sandwich Islands">South Georgia and The South Sandwich Islands</option><option value="Spain">Spain</option><option value="Sri Lanka">Sri Lanka</option><option value="Sudan">Sudan</option><option value="Suriname">Suriname</option><option value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option><option value="Swaziland">Swaziland</option><option value="Sweden">Sweden</option><option value="Switzerland">Switzerland</option><option value="Syrian Arab Republic">Syrian Arab Republic</option><option value="Taiwan, Province of China">Taiwan, Province of China</option><option value="Tajikistan">Tajikistan</option><option value="Tanzania, United Republic of">Tanzania, United Republic of</option><option value="Thailand">Thailand</option><option value="Timor-leste">Timor-leste</option><option value="Togo">Togo</option><option value="Tokelau">Tokelau</option><option value="Tonga">Tonga</option><option value="Trinidad and Tobago">Trinidad and Tobago</option><option value="Tunisia">Tunisia</option><option value="Turkey">Turkey</option><option value="Turkmenistan">Turkmenistan</option><option value="Turks and Caicos Islands">Turks and Caicos Islands</option><option value="Tuvalu">Tuvalu</option><option value="Uganda">Uganda</option><option value="Ukraine">Ukraine</option><option value="United Arab Emirates">United Arab Emirates</option><option value="United Kingdom">United Kingdom</option><option value="United States">United States</option><option value="United States Minor Outlying Islands">United States Minor Outlying Islands</option><option value="Uruguay">Uruguay</option><option value="Uzbekistan">Uzbekistan</option><option value="Vanuatu">Vanuatu</option><option value="Venezuela">Venezuela</option><option value="Vietnam">Vietnam</option><option value="Virgin Islands, British">Virgin Islands, British</option><option value="Virgin Islands, U.S.">Virgin Islands, U.S.</option><option value="Wallis and Futuna">Wallis and Futuna</option><option value="Western Sahara">Western Sahara</option><option value="Yemen">Yemen</option><option value="Zambia">Zambia</option><option value="Zimbabwe">Zimbabwe</option>                </select>
              </div>
              <div class="form-group col-md-6 col-sm-12 col-xs-12">
                <select class="form-control" id="select-rlocation-qoute" name="select_rlocation" required >
                  <option value="">Select Destination</option>
                    <option value="Afghanistan">Afghanistan</option><option value="Aland Islands">Aland Islands</option><option value="Albania">Albania</option><option value="Algeria">Algeria</option><option value="American Samoa">American Samoa</option><option value="Andorra">Andorra</option><option value="Angola">Angola</option><option value="Anguilla">Anguilla</option><option value="Antarctica">Antarctica</option><option value="Antigua and Barbuda">Antigua and Barbuda</option><option value="Argentina">Argentina</option><option value="Armenia">Armenia</option><option value="Aruba">Aruba</option><option value="Australia">Australia</option><option value="Austria">Austria</option><option value="Azerbaijan">Azerbaijan</option><option value="Bahamas">Bahamas</option><option value="Bahrain">Bahrain</option><option value="Bangladesh">Bangladesh</option><option value="Barbados">Barbados</option><option value="Belarus">Belarus</option><option value="Belgium">Belgium</option><option value="Belize">Belize</option><option value="Benin">Benin</option><option value="Bermuda">Bermuda</option><option value="Bhutan">Bhutan</option><option value="Bolivia">Bolivia</option><option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option><option value="Botswana">Botswana</option><option value="Bouvet Island">Bouvet Island</option><option value="Brazil">Brazil</option><option value="British Indian Ocean Territory">British Indian Ocean Territory</option><option value="Brunei Darussalam">Brunei Darussalam</option><option value="Bulgaria">Bulgaria</option><option value="Burkina Faso">Burkina Faso</option><option value="Burundi">Burundi</option><option value="Cambodia">Cambodia</option><option value="Cameroon">Cameroon</option><option value="Canada">Canada</option><option value="Cape Verde">Cape Verde</option><option value="Cayman Islands">Cayman Islands</option><option value="Central African Republic">Central African Republic</option><option value="Chad">Chad</option><option value="Chile">Chile</option><option value="China">China</option><option value="Christmas Island">Christmas Island</option><option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option><option value="Colombia">Colombia</option><option value="Comoros">Comoros</option><option value="Congo">Congo</option><option value="The Democratic Republic of The Congo">The Democratic Republic of The Congo</option><option value="Cook Islands">Cook Islands</option><option value="Costa Rica">Costa Rica</option><option value="Cote D&#039;ivoire">Cote D&#039;ivoire</option><option value="Croatia">Croatia</option><option value="Cuba">Cuba</option><option value="Cyprus">Cyprus</option><option value="Czech Republic">Czech Republic</option><option value="Denmark">Denmark</option><option value="Djibouti">Djibouti</option><option value="Dominica">Dominica</option><option value="Dominican Republic">Dominican Republic</option><option value="Ecuador">Ecuador</option><option value="Egypt">Egypt</option><option value="El Salvador">El Salvador</option><option value="Equatorial Guinea">Equatorial Guinea</option><option value="Eritrea">Eritrea</option><option value="Estonia">Estonia</option><option value="Ethiopia">Ethiopia</option><option value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</option><option value="Faroe Islands">Faroe Islands</option><option value="Fiji">Fiji</option><option value="Finland">Finland</option><option value="France">France</option><option value="French Guiana">French Guiana</option><option value="French Polynesia">French Polynesia</option><option value="French Southern Territories">French Southern Territories</option><option value="Gabon">Gabon</option><option value="Gambia">Gambia</option><option value="Georgia">Georgia</option><option value="Germany">Germany</option><option value="Ghana">Ghana</option><option value="Gibraltar">Gibraltar</option><option value="Greece">Greece</option><option value="Greenland">Greenland</option><option value="Grenada">Grenada</option><option value="Guadeloupe">Guadeloupe</option><option value="Guam">Guam</option><option value="Guatemala">Guatemala</option><option value="Guernsey">Guernsey</option><option value="Guinea">Guinea</option><option value="Guinea-bissau">Guinea-bissau</option><option value="Guyana">Guyana</option><option value="Haiti">Haiti</option><option value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald Islands</option><option value="Holy See (Vatican City State)">Holy See (Vatican City State)</option><option value="Honduras">Honduras</option><option value="Hong Kong">Hong Kong</option><option value="Hungary">Hungary</option><option value="Iceland">Iceland</option><option value="India">India</option><option value="Indonesia">Indonesia</option><option value="Iran">Iran</option><option value="Iraq">Iraq</option><option value="Ireland">Ireland</option><option value="Isle of Man">Isle of Man</option><option value="Israel">Israel</option><option value="Italy">Italy</option><option value="Jamaica">Jamaica</option><option value="Japan">Japan</option><option value="Jersey">Jersey</option><option value="Jordan">Jordan</option><option value="Kazakhstan">Kazakhstan</option><option value="Kenya">Kenya</option><option value="Kiribati">Kiribati</option><option value="Democratic People&#039;s Republic of Korea">Democratic People&#039;s Republic of Korea</option><option value="Republic of Korea">Republic of Korea</option><option value="Kuwait">Kuwait</option><option value="Kyrgyzstan">Kyrgyzstan</option><option value="Lao People&#039;s Democratic Republic">Lao People&#039;s Democratic Republic</option><option value="Latvia">Latvia</option><option value="Lebanon">Lebanon</option><option value="Lesotho">Lesotho</option><option value="Liberia">Liberia</option><option value="Libya">Libya</option><option value="Liechtenstein">Liechtenstein</option><option value="Lithuania">Lithuania</option><option value="Luxembourg">Luxembourg</option><option value="Macao">Macao</option><option value="Macedonia">Macedonia</option><option value="Madagascar">Madagascar</option><option value="Malawi">Malawi</option><option value="Malaysia">Malaysia</option><option value="Maldives">Maldives</option><option value="Mali">Mali</option><option value="Malta">Malta</option><option value="Marshall Islands">Marshall Islands</option><option value="Martinique">Martinique</option><option value="Mauritania">Mauritania</option><option value="Mauritius">Mauritius</option><option value="Mayotte">Mayotte</option><option value="Mexico">Mexico</option><option value="Micronesia">Micronesia</option><option value="Moldova">Moldova</option><option value="Monaco">Monaco</option><option value="Mongolia">Mongolia</option><option value="Montenegro">Montenegro</option><option value="Montserrat">Montserrat</option><option value="Morocco">Morocco</option><option value="Mozambique">Mozambique</option><option value="Myanmar">Myanmar</option><option value="Namibia">Namibia</option><option value="Nauru">Nauru</option><option value="Nepal">Nepal</option><option value="Netherlands">Netherlands</option><option value="Netherlands Antilles">Netherlands Antilles</option><option value="New Caledonia">New Caledonia</option><option value="New Zealand">New Zealand</option><option value="Nicaragua">Nicaragua</option><option value="Niger">Niger</option><option value="Nigeria">Nigeria</option><option value="Niue">Niue</option><option value="Norfolk Island">Norfolk Island</option><option value="Northern Mariana Islands">Northern Mariana Islands</option><option value="Norway">Norway</option><option value="Oman">Oman</option><option value="Pakistan">Pakistan</option><option value="Palau">Palau</option><option value="Palestinia">Palestinia</option><option value="Panama">Panama</option><option value="Papua New Guinea">Papua New Guinea</option><option value="Paraguay">Paraguay</option><option value="Peru">Peru</option><option value="Philippines">Philippines</option><option value="Pitcairn">Pitcairn</option><option value="Poland">Poland</option><option value="Portugal">Portugal</option><option value="Puerto Rico">Puerto Rico</option><option value="Qatar">Qatar</option><option value="Reunion">Reunion</option><option value="Romania">Romania</option><option value="Russian Federation">Russian Federation</option><option value="Rwanda">Rwanda</option><option value="Saint Helena">Saint Helena</option><option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option><option value="Saint Lucia">Saint Lucia</option><option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option><option value="Saint Vincent and The Grenadines">Saint Vincent and The Grenadines</option><option value="Samoa">Samoa</option><option value="San Marino">San Marino</option><option value="Sao Tome and Principe">Sao Tome and Principe</option><option value="Saudi Arabia">Saudi Arabia</option><option value="Senegal">Senegal</option><option value="Serbia">Serbia</option><option value="Seychelles">Seychelles</option><option value="Sierra Leone">Sierra Leone</option><option value="Singapore">Singapore</option><option value="Slovakia">Slovakia</option><option value="Slovenia">Slovenia</option><option value="Solomon Islands">Solomon Islands</option><option value="Somalia">Somalia</option><option value="South Africa">South Africa</option><option value="South Sudan">South Sudan</option><option value="South Georgia and The South Sandwich Islands">South Georgia and The South Sandwich Islands</option><option value="Spain">Spain</option><option value="Sri Lanka">Sri Lanka</option><option value="Sudan">Sudan</option><option value="Suriname">Suriname</option><option value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option><option value="Swaziland">Swaziland</option><option value="Sweden">Sweden</option><option value="Switzerland">Switzerland</option><option value="Syrian Arab Republic">Syrian Arab Republic</option><option value="Taiwan, Province of China">Taiwan, Province of China</option><option value="Tajikistan">Tajikistan</option><option value="Tanzania, United Republic of">Tanzania, United Republic of</option><option value="Thailand">Thailand</option><option value="Timor-leste">Timor-leste</option><option value="Togo">Togo</option><option value="Tokelau">Tokelau</option><option value="Tonga">Tonga</option><option value="Trinidad and Tobago">Trinidad and Tobago</option><option value="Tunisia">Tunisia</option><option value="Turkey">Turkey</option><option value="Turkmenistan">Turkmenistan</option><option value="Turks and Caicos Islands">Turks and Caicos Islands</option><option value="Tuvalu">Tuvalu</option><option value="Uganda">Uganda</option><option value="Ukraine">Ukraine</option><option value="United Arab Emirates">United Arab Emirates</option><option value="United Kingdom">United Kingdom</option><option value="United States">United States</option><option value="United States Minor Outlying Islands">United States Minor Outlying Islands</option><option value="Uruguay">Uruguay</option><option value="Uzbekistan">Uzbekistan</option><option value="Vanuatu">Vanuatu</option><option value="Venezuela">Venezuela</option><option value="Vietnam">Vietnam</option><option value="Virgin Islands, British">Virgin Islands, British</option><option value="Virgin Islands, U.S.">Virgin Islands, U.S.</option><option value="Wallis and Futuna">Wallis and Futuna</option><option value="Western Sahara">Western Sahara</option><option value="Yemen">Yemen</option><option value="Zambia">Zambia</option><option value="Zimbabwe">Zimbabwe</option>                </select>
              </div>
              <!--Form Group-->
              <div class="form-group col-md-12 col-sm-12 col-xs-12">
                <textarea class="form-control" rows="7" cols="20" placeholder="Your Message" id="your-message-qoute" name="your_message" required ></textarea>
              </div>
              
              <!--Form Group-->
              <div class="form-group col-md-12 col-sm-12 col-xs-12 text-right">
              <a href="javascript:void(0)" class="requesting custom-button light hidden-thing"><i class="fa fa-spinner" aria-hidden="true"></i>
 Requesting...</a> 
              	<a class="custom-button light" id="sb_submit_qoute">
					Submit Request 			  		
                </a> 
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
    <!-- /.modal-content --> 
  </div>
  <!-- /.modal-dialog --> 
</div>
<!-- =-=-=-=-=-=-= Quote Modal End =-=-=-=-=-=-= --> 

<script type="text/javascript">
(function($) {
	"use strict";
	$("#sb_submit_qoute, #section-qoute-button").on("click", function() {
		
		var form_button_id = (this.id);
		
		var form_id = '#section-qoute';
		var is_qoute = '';
		if( 'sb_submit_qoute' == form_button_id )
		{
			var form_id = '#popup-qoute-form';
			var is_qoute = '-qoute';
		}
		else
		{
			var form_id = '#section-qoute';
		}
		
		
		var your_name = $('#your-name'+is_qoute).val();
		var your_subject = $('#your-subject'+is_qoute).val();	
		var your_email = $('#your-email'+is_qoute).val();
		var select_location = $('#select-location'+is_qoute).val();	
		var your_message = $('#your-message'+is_qoute).val();
		var cargo_type = $('#select-cargo-type'+is_qoute).val();	
		var select_rlocation = $('#select-rlocation'+is_qoute).val();	
			

		if( your_name == "" )
		{
	  		$('#your-name'+is_qoute).addClass('input-red');
			$(form_id+" .popup-msg-box").html('<div class="alert alert-danger fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Please enter your name</div>');
			
			return false;
		}
		else
		{
			$('#your-name'+is_qoute).removeClass('input-red');
		}
		
		if( your_email == "" || !validateEmail( your_email ))
		{
	  		$('#your-email'+is_qoute).addClass('input-red');
			$(form_id+" .popup-msg-box").html('<div class="alert alert-danger fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Please enter valid email address</div>');
			return false;
		}
		else
		{
			$('#your-email'+is_qoute).removeClass('input-red');	
		}
		if( your_subject == "" )
		{
	  		$('#your-subject'+is_qoute).addClass('input-red');
			$(form_id+" .popup-msg-box").html('<div class="alert alert-danger fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Please enter your subject</div>');
			
			return false;
		}
		else
		{
			$('#your-subject'+is_qoute).removeClass('input-red');
			
		}
		
		if( cargo_type == "" )
		{
	  		$('#select-cargo-type'+is_qoute).addClass('input-red');
			$(form_id+" .popup-msg-box").html('<div class="alert alert-danger fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Please select cargo type</div>');
			
			return false;
		}
		else
		{
			$('#select-cargo-type'+is_qoute).removeClass('input-red');	
		}
				
		if( select_location == "" )
		{
	  		$('#select-location'+is_qoute).addClass('input-red');
			$(form_id+" .popup-msg-box").html('<div class="alert alert-danger fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Please select your country</div>');
			
			return false;
		}
		else
		{
			$('#select-location'+is_qoute).removeClass('input-red');	
		}
		
		if( select_rlocation == "" )
		{
	  		$('#select-rlocation'+is_qoute).addClass('input-red');
			$(form_id+" .popup-msg-box").html('<div class="alert alert-danger fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Please select destination country</div>');
			
			return false;
		}
		else
		{
			$('#select-rlocation'+is_qoute).removeClass('input-red');	
		}		
		
		if( your_message == "" )
		{
	  		$('#your-message'+is_qoute).addClass('input-red');
			$(form_id+" .popup-msg-box").html('<div class="alert alert-danger fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Please enter some description</div>');
			
			return false;
		}
		else
		{
			$('#your-message'+is_qoute).removeClass('input-red');
		}
		
		
		
    var sb_admin_ajax_url = '../wp-admin/admin-ajax.html';
    $(form_id+" #"+form_button_id).hide();
	$(form_id+" a.requesting").show();
    var formData = $("form"+form_id).serialize();

    $.post(sb_admin_ajax_url, {
        action: "sb_qoute_deliver_mail",
        formData: formData
    }).done(function(data) {
		
	var res = data.split("|");
	if (res[0].trim() == 'true') {
		$(form_id+" .popup-msg-box").html('<div class="alert alert-success fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>'+ res[1] +'</div>');
		$(form_id).trigger("reset");
	} else {
	$(form_id+" .popup-msg-box").html('<div class="alert alert-danger fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>'+ res[1] +'</div>');
	}
});

    setTimeout(function() {
        $(form_id+" .requesting").hide();
		$(form_id+" #"+form_button_id).show();
		
    }, 5000);
		
		
		
		
		
		
		
	});
	
	
 function validateEmail($email) { var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/; return emailReg.test( $email ); }	
})( jQuery );

</script>
    <script type="text/javascript">
(function($) {
	"use strict";
	$("#submit-for-contact").on("click", function() {
		
		var your_name = $('#contact-name').val();
		var your_subject = $('#contact-subject').val();	
		var your_email = $('#contact-email').val();
		var your_message = $('#contact-message').val();
		if( your_name == "" )
		{
	  		$('#contact-name').addClass('input-red');
			return false;
		}
		else
		{
			$('#contact-name').removeClass('input-red');
		}
		
		if( your_email == "" || !validateEmail_contact( your_email ))
		{
	  		$('#contact-email').addClass('input-red');
			return false;
		}
		else
		{
			$('#contact-email').removeClass('input-red');	
		}
		if( your_subject == "" )
		{
	  		$('#contact-subject').addClass('input-red');
			return false;
		}
		else
		{
			$('#contact-subject').removeClass('input-red');
			
		}

		if( your_message == "" )
		{
	  		$('#contact-message').addClass('input-red');
			return false;
		}
		else
		{
			$('#contact-message').removeClass('input-red');
		}
    var sb_admin_ajax_url = '../wp-admin/admin-ajax.html';
    $("form#contactForm #submit-for-contact").attr('disabled','disabled');
	//$("form#contactForm a#requesting").show();
    var formData = $("form#contactForm").serialize();

    $.post(sb_admin_ajax_url, {
        action: "sb_contact_deliver_mail",
        formData: formData
    }).done(function(data) {
		
	var res = data.split("|");
	if (res[0].trim() == 'true') {
		$("#msg-box").html('<div class="alert alert-success fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>'+ res[1] +'</div>');
		$('#contactForm').trigger("reset");
	} else {
	$("#msg-box").html('<div class="alert alert-danger fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>'+ res[1] +'</div>');
	}
});

    setTimeout(function() {
        //$("form#popup-qoute-form #requesting").hide();
		$("form#contactForm #submit-for-contact").removeAttr('disabled');
		
    }, 3000);
		
	});
	
	
 function validateEmail_contact($email) { var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/; return emailReg.test( $email ); }	
})( jQuery );

</script>
    <script type="text/javascript">


(function($) {
	
	"use strict";
	$("#track-shipment-button").on("click", function() {
		
		var shipment_id = $('#shipment_id').val();

		if( shipment_id == "" )
		{
	  		$('#shipment_id').addClass('input-red');			
			return false;
		}
		else
		{
			
	  		$('#shipment_id').removeClass('input-red');			
			
		}
		
			

    var sb_admin_ajax_url = '../wp-admin/admin-ajax.html';
    var formData = $("form#trackingForm").serialize();

    $.post(sb_admin_ajax_url, {
        action: "track_shipment_now",
        formData: formData
    }).done(function(data) {
		
		'';
	var res = data.split("|");
	if (res[0].trim() == 'true') {
		//window.location = ( res[1] );
		$('#popup-content').html(res[1]);
		$('#tracking-popup').modal('toggle');
		$('#shipment_id').removeClass('input-red');		
		$('#id-error').html('');
	} else {
		
		
		
		$('#id-error').html('<div class="alert alert-warning col-md-7"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Warning! </strong> ' + res[1] +  '</div>');
		$('#shipment_id').val("");
		$('#shipment_id').attr("placeholder", res[1]);
	    $('#shipment_id').addClass('input-red');	
	}
});	
});	
		//
		
	})( jQuery );
	
</script>
<script type="text/javascript">
            (function($) {
                "use strict";
                      $("#defualt" ).on('click',function(){
                          $("#theme-color-css" ).attr("href", "<%=request.getContextPath() %>/themes/logistic-pro/css/colors/defualt.css");
                          return false;
                      });
                      $("#red" ).on('click',function(){
                          $("#theme-color-css" ).attr("href", "<%=request.getContextPath() %>/themes/logistic-pro/css/colors/red.css");
                          return false;
                      });
                       $("#green" ).on('click',function(){
                        
                          $("#theme-color-css" ).attr("href", "<%=request.getContextPath() %>/themes/logistic-pro/css/colors/green.css");
                          return false;
                      });
                      $("#purple" ).on('click',function(){
                          $("#theme-color-css" ).attr("href", "<%=request.getContextPath() %>/themes/logistic-pro/css/colors/purple.css");
                          return false;
                      });
                      $("#yellow" ).on('click',function(){
                          $("#theme-color-css" ).attr("href", "<%=request.getContextPath() %>/themes/logistic-pro/css/colors/yellow.css");
                          return false;
                      });                      
                      $("#orange" ).on('click',function(){
                          $("#theme-color-css" ).attr("href", "<%=request.getContextPath() %>/themes/logistic-pro/css/colors/orange.css");
                          return false;
                      });
                      $(".picker_close").click(function(){
                            $("#choose_color").toggleClass("position");
                       });                      
            })(jQuery);            
        </script> <link rel='stylesheet' id='revolution-settings-css'  href='<%=request.getContextPath() %>/plugins/sb_framework/inc/shortcodes/revolution-slider/css/settingse100.css?ver=4.7.2' type='text/css' media='all' />
<link rel='stylesheet' id='revolution-navigation-css'  href='<%=request.getContextPath() %>/plugins/sb_framework/inc/shortcodes/revolution-slider/css/navigatione100.css?ver=4.7.2' type='text/css' media='all' />
<script type='text/javascript' src='<%=request.getContextPath() %>/plugins/logisticpro/js/select2.mine100.js?ver=4.7.2'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/plugins/logisticpro/js/momente100.js?ver=4.7.2'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/plugins/logisticpro/js/bootstrap-datetimepicker.mine100.js?ver=4.7.2'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/themes/logistic-pro/js/bootstrap.mine100.js?ver=4.7.2'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/themes/logistic-pro/js/carousel.mine100.js?ver=4.7.2'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/themes/logistic-pro/js/bootstrap-dropdownhover.mine100.js?ver=4.7.2'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/themes/logistic-pro/js/easinge100.js?ver=4.7.2'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/themes/logistic-pro/js/jquery.appear.mine100.js?ver=4.7.2'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/themes/logistic-pro/js/jquery.countToe100.js?ver=4.7.2'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/themes/logistic-pro/js/jquery.shuffle.mine100.js?ver=4.7.2'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/themes/logistic-pro/js/jquery.stellar.mine100.js?ver=4.7.2'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/themes/logistic-pro/js/jquery.waypointse100.js?ver=4.7.2'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/themes/logistic-pro/js/modernizre100.js?ver=4.7.2'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/themes/logistic-pro/js/theia-sticky-sidebare100.js?ver=4.7.2'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/themes/logistic-pro/js/jquery.magnific-popup.mine100.js?ver=4.7.2'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/wp-includes/js/imagesloaded.min55a0.js?ver=3.2.0'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/plugins/js_composer/assets/lib/bower/isotope/dist/isotope.pkgd.min9d08.js?ver=4.12.1'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/themes/logistic-pro/js/custome100.js?ver=4.7.2'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/wp-includes/js/wp-embed.mine100.js?ver=4.7.2'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/plugins/js_composer/assets/js/dist/js_composer_front.min9d08.js?ver=4.12.1'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/plugins/sb_framework/inc/shortcodes/revolution-slider/js/jquery.themepunch.tools.mine100.js?ver=4.7.2'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/plugins/sb_framework/inc/shortcodes/revolution-slider/js/jquery.themepunch.revolution.mine100.js?ver=4.7.2'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/plugins/sb_framework/inc/shortcodes/revolution-slider/js/extensions/revolution.extension.actions.mine100.js?ver=4.7.2'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/plugins/sb_framework/inc/shortcodes/revolution-slider/js/extensions/revolution.extension.carousel.mine100.js?ver=4.7.2'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/plugins/sb_framework/inc/shortcodes/revolution-slider/js/extensions/revolution.extension.kenburn.mine100.js?ver=4.7.2'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/plugins/sb_framework/inc/shortcodes/revolution-slider/js/extensions/revolution.extension.layeranimation.mine100.js?ver=4.7.2'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/plugins/sb_framework/inc/shortcodes/revolution-slider/js/extensions/revolution.extension.migration.mine100.js?ver=4.7.2'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/plugins/sb_framework/inc/shortcodes/revolution-slider/js/extensions/revolution.extension.navigation.mine100.js?ver=4.7.2'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/plugins/sb_framework/inc/shortcodes/revolution-slider/js/extensions/revolution.extension.parallax.mine100.js?ver=4.7.2'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/plugins/sb_framework/inc/shortcodes/revolution-slider/js/extensions/revolution.extension.slideanims.mine100.js?ver=4.7.2'></script>
<script type='text/javascript' src='<%=request.getContextPath() %>/plugins/sb_framework/inc/shortcodes/revolution-slider/js/extensions/revolution.extension.video.mine100.js?ver=4.7.2'></script>
<script src='../../www.google.com/recaptcha/apifef7.js?hl=en'></script><script type="text/javascript">
(function($) {
	"use strict";
	$("#order-for-cargo").on("click", function() 
	{
		
			var logisticpro_admin_ajax_url = '../wp-admin/admin-ajax.html';
			var formData = $("form#order-cargo").serialize();
			$.post(logisticpro_admin_ajax_url, {
				action: "logisticpro_order_for_cargo",
				formData: formData
			}).done(function(data)
			{
				var res = data.split("|");
				if (res[0].trim() == 'true')
				{
	$("#msg-box").html('<div class="alert alert-success"><strong>Bravo!</strong> We have received your order.</div>');
					$('form').trigger("reset");
				} 
				else
				{
					$("form input,form select,form  textarea,form checkbox").removeClass("logistic-err");
					var obj = jQuery.parseJSON( res[1] );
					$.each( obj, function( key, value ) {
						$("[name="+value+"]").addClass("logistic-err");
					});
	$("#msg-box").html('<div class="alert alert-danger"><strong>Alert!</strong> Please fill all required fields.</div>');
				}
		});
		
	});					
	
$(document).ready(function() {
	   
    $("form#order-cargo select").select2({
	  allowClear: true
	});
	$('#logisticpro_pickup_datetime').datetimepicker();
});

$('form input,form select,form  textarea,form  checkbox').on('blur', function(){
   $(this).removeClass("logistic-err");
}).on('focus', function(){
  $(this).removeClass("logistic-err");
});

	
})( jQuery );




</script>
<script type="text/javascript">
(function($) {
	"use strict";
$(document).ready(function() {
 
    var formfield;
 
    /* user clicks button on custom field, runs below code that opens new window */
    jQuery('.onetarek-upload-button').click(function() {
        formfield = jQuery(this).prev('input'); //The input field that will hold the uploaded file url
        tb_show('','media-uploadfe55.html?TB_iframe=true');
 
        return false;
 
    });
    /*
    Please keep these line to use this code snipet in your project
    Developed by oneTarek http://onetarek.com
    */
    //adding my custom function with Thick box close function tb_close() .
    window.old_tb_remove = window.tb_remove;
    window.tb_remove = function() {
        window.old_tb_remove(); // calls the tb_remove() of the Thickbox plugin
        formfield=null;
    };
 
    // user inserts file into post. only run custom if user started process using the above process
    // window.send_to_editor(html) is how wp would normally handle the received data
 
    window.original_send_to_editor = window.send_to_editor;
    window.send_to_editor = function(html){
        if (formfield) {
            fileurl = jQuery('img',html).attr('src');
            jQuery(formfield).val(fileurl);
            tb_remove();
        } else {
            window.original_send_to_editor(html);
        }
    };
 
});
});
</script>

</body>

<!-- Mirrored from logisticpro.glixentech.com/home-2/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 06 Mar 2017 16:44:51 GMT -->
</html>