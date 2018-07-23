<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Basic Form</title>
<!-- favicon.ico and apple-touch-icon.png -->
  <link rel="apple-touch-icon" sizes="57x57" href="<%=request.getContextPath() %>/images/favicons/apple-touch-icon-57x57.png">
  <link rel="apple-touch-icon" sizes="60x60" href="<%=request.getContextPath() %>/images/favicons/apple-touch-icon-60x60.png">
  <link rel="apple-touch-icon" sizes="72x72" href="<%=request.getContextPath() %>/images/favicons/apple-touch-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="76x76" href="<%=request.getContextPath() %>/images/favicons/apple-touch-icon-76x76.png">
  <link rel="apple-touch-icon" sizes="114x114" href="<%=request.getContextPath() %>/images/favicons/apple-touch-icon-114x114.png">
  <link rel="apple-touch-icon" sizes="120x120" href="<%=request.getContextPath() %>/images/favicons/apple-touch-icon-120x120.png">
  <link rel="apple-touch-icon" sizes="144x144" href="<%=request.getContextPath() %>/images/favicons/apple-touch-icon-144x144.png">
  <link rel="apple-touch-icon" sizes="152x152" href="<%=request.getContextPath() %>/images/favicons/apple-touch-icon-152x152.png">
  <link rel="icon" type="image/png" href="<%=request.getContextPath() %>/images/favicons/favicon-32x32.png" sizes="32x32">
  <link rel="icon" type="image/png" href="<%=request.getContextPath() %>/images/favicons/favicon-96x96.png" sizes="96x96">
  <link rel="icon" type="image/png" href="<%=request.getContextPath() %>/images/favicons/favicon-16x16.png" sizes="16x16">
  <link rel="manifest" href="images/favicons/manifest.json">
  <meta name="msapplication-TileColor" content="#2d89ef">
  <meta name="msapplication-TileImage" content="<%=request.getContextPath() %>/images/favicons/mstile-144x144.png">
  <meta name="theme-color" content="#ffffff">

  <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,700,600,300" rel="stylesheet" type="text/css">

  <link rel="stylesheet" href="<%=request.getContextPath() %>/styles/bootstrap.css">

  <link rel="stylesheet" href="<%=request.getContextPath() %>/styles/dependencies.css">

  <link rel="stylesheet" href="<%=request.getContextPath() %>/styles/wrapkit.css">

  <link rel="stylesheet" href="<%=request.getContextPath() %>/styles/demo.css">

</head>
<body>
  <!--[if lt IE 9]>
    <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->


    <main class="wrapkit-wrapper" id="wrapper">

    <!-- ============================================
    HEADER SECTION
    =============================================== -->
    

 
   <jsp:include page="Header.jsp"></jsp:include>

    <!-- ============================================
    SIDEBAR SECTION
    =============================================== -->
    <jsp:include page="Sidebar.jsp"></jsp:include>

    <!-- ============================================
    MAIN CONTENT SECTION
    =============================================== -->
    <section class="content-wrapper" role="main">
      <div class="content">
        <div class="content-bar">
          <div class="pull-right" role="group">
            <a data-toggle="modal" href="#" data-scripts="_includes/setups.js" data-target="#templateSetup" title="Template Setups" aria-label="template setups" class="btn btn-nofill btn-sm btn-default" href="#"><span class="icon-settings fa-lg text-muted"></span></a>
          </div>
          <ul class="breadcrumb breadcrumb-angle">
            <li><a href="#" aria-label="home"><i class="fa fa-home"></i></a></li>
            <li><a href="#">Manage Offers</a></li>
            <li class="active">Coupon</li>
          </ul>
        </div><!-- /.content-bar -->
 			<div class="content-body">
	          <div class="row">
	            <div class="col-md-12">
	              <div class="panel" data-fill-color="true">
	                <div class="panel-heading">
	                  <h3 class="panel-title"><i class="icon-note fa-fw"></i>Apply coupon</h3>
	             </div><!-- /panel-heading -->
	              <div class="panel-body">
	               <form action="<%=request.getContextPath()%>/Controller1" method="post">
							<input type="hidden" name=actionCode" value="coupon">
							
						<div class="row">
	                        <div class="col-md-8 mb-2x">
	                         <label for="input">Enter Coupon Code</label>
	                          <input class="form-control" id="input" placeholder="enter your coupon code" name="couponcode">
	                        </div>
	                        </div>
	                        
	                  <div class="form-group">
                      <div class="row">
                           <div class="col-md-8 mb-2x">
                      <label for="inputTextarea">Coupon Description</label>
                      <textarea rows="3" class="form-control" id="inputTextarea" placeholder="Enter coupon description" name="coupondescription"></textarea>
                   </div>
                        </div>
                        
					 <div class="form-group">
                       <div class="row">
                        <div class="col-md-8 mb-2x">
                      <label for="inputSelect">Discunt Percent</label>
                      <select class="form-control" id="inputSelect" name="percentdiscount">
                        <option>- Select One -</option>
                        <option>10%</option>
                        <option>20%</option>
                        <option>30%</option>
                        <option>50%</option>
                        <option>70%</option>
                      </select>
                      </div>
                        </div>
                   
                    
                    <div class="form-group">
                       <div class="row">
                        <div class="col-md-8 mb-2x">
                      <label for="inputSelect">Applicable on</label>
                      <select class="form-control" id="inputSelect" name="applicablecoupon">
                        <option>- Select One -</option>
                        <option>Free Shipping</option>
                        <option>Percent discount</option>
                      </select>
                      </div>
                        </div>
                        
                     <div class="form-group">
                      <label class="control-label" for="mask-date">Start Date</label>
                      <div class="input-group input-group-in">
                        <span class="input-group-addon"><i class="icon-calendar"></i></span>
                        <input data-mask="date" id="mask-date" class="form-control" placeholder="dd/mm/yyyy" name="startdate">
                      </div><!-- /input-group-in -->
                    </div><!--/form-group-->
                    
                     <div class="form-group">
                      <label class="control-label" for="mask-date">Applicable till Date</label>
                      <div class="input-group input-group-in">
                        <span class="input-group-addon"><i class="icon-calendar"></i></span>
                        <input data-mask="date" id="mask-date" class="form-control" placeholder="dd/mm/yyyy" name="enddate">
                      </div><!-- /input-group-in -->
                    </div><!--/form-group-->
                    
                      <div class="form-group">
                      <div class="row">
                           <div class="col-md-8 mb-2x">
                     <label for="inputTextarea">Steps to apply Offer</label>
                     <textarea rows="3" class="form-control" id="inputTextarea" placeholder="write Steps to follow" name="couponsteps"></textarea>
                      
                        </div>
                        </div>
                        </div>
                        <div class="form-group">
                      
	                      <input type="submit" class="btn btn-default" value="Apply">
	                  </div>
                    
							
							  </div><!-- /panel-body -->
	              </div><!-- /panel-basicform -->
	                    
	              </div><!-- /.cols -->
	          </div><!-- /.row -->
	
	        </div><!-- /.content-body -->
	
	      </section><!-- /.content -->
	                    
                    
	<!-- ============================================
    FOOTER SECTION
    =============================================== -->
    
    <jsp:include page="Footer.jsp"></jsp:include>
  </main><!-- /#MAIN -->


  <!-- VENDORS : jQuery & Bootstrap -->
  <script src="<%=request.getContextPath() %>/scripts/vendor.js"></script>
  <!-- END VENDORS -->

  <!-- DEPENDENCIES : Required plugins -->
  <script src="<%=request.getContextPath() %>/scripts/dependencies.js"></script>
  <!-- END DEPENDENCIES -->

  <!-- WRAPKIT -->
  <script src="<%=request.getContextPath() %>/scripts/wrapkit.js"></script>
  <!-- END WRAPKIT -->

  <!-- WRAPKIT SETUPS -->
  <script src="<%=request.getContextPath() %>/scripts/wrapkit-setup.js"></script>
  <!-- end WRAPKIT SETUPS -->

  <!-- PLUGIN SETUPS: vendors & dependencies setups -->
  <script src="<%=request.getContextPath() %>/scripts/plugin-setups.js"></script>
  <!-- END PLUGIN SETUPS -->


  <!-- Google Analytics: change UA-71722129-1 to be your site's ID. -->
  <script>
    (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
      function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
    e=o.createElement(i);r=o.getElementsByTagName(i)[0];
    e.src='../../../../../www.google-analytics.com/analytics.js';
    r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
    ga('create','UA-71722129-1');ga('send','pageview');
  </script>
</body>
</html>