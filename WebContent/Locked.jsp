<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lock Screen</title>
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
  <meta name="msapplication-TileImage" content="images/favicons/mstile-144x144.png">
  <meta name="theme-color" content="#ffffff">

  <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,700,600,300" rel="stylesheet" type="text/css">

  <link rel="stylesheet" href="<%=request.getContextPath() %>/styles/bootstrap.css">

  <link rel="stylesheet" href="<%=request.getContextPath() %>/styles/dependencies.css">

  <link rel="stylesheet" href="<%=request.getContextPath() %>/styles/wrapkit.css">

  <link rel="stylesheet" href="<%=request.getContextPath() %>/styles/pages.css">
</head>
<body class="bg-grd-blue">
  <!--[if lt IE 9]>
  <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
  <![endif]-->

  <main class="locked-wrapper">
    <section class="locked-container">
      <p class="text-center p-1x">
        <img src="<%=request.getContextPath() %>/images/logo/brand-text-color.png" alt="wrapkit" height="24px">
      </p>
      <div class="locked-actions">
        <a href="Login.jsp" class="btn btn-default btn-icon" rel="tooltip" data-container="body" title="Sign out"><i class="fa fa-sign-out"></i></a>
      </div>
      <div class="locked-avatar">
        <img class="img-circle" src="<%=request.getContextPath() %>/images/dummy/profile.jpg" alt="photo profile">
      </div>
      <p class="locked-username">Shalini Jain</p>
      <p class="locked-email">shalinijain910@gmail.com</p>
      <p class="locked-status">Locked</p>
      <form id="lockeForm" role="form" action="#">
        <div id="lockedInput" class="form-group">
          <div class="input-group input-group-in">
            <input type="password" name="lockPasswd" id="lockPasswd" class="form-control" placeholder="Password">
            <div class="input-group-btn">
              <button type="submit" class="btn"><i class="icon-lock-open"></i></button>
            </div>
          </div>
        </div>
        <div id="lockedLoader" class="form-group hide">
          <div class="locked-loader">
            <span class="fa fa-spin fa-spinner"></span>
          </div>
        </div>
      </form>
    </section><!-- /.locked-container -->
  </main><!--/#wrapper-->
  <div class="locked-cr text-light">&copy; 2016 Shalini Jain, Neelam Kumari</div>



  <!-- VENDORS : jQuery & Bootstrap -->
  <script src="<%=request.getContextPath() %>/scripts/vendor.js"></script>
  <!-- END VENDORS -->

  <!-- DEPENDENCIES : Required plugins -->
  <script src="<%=request.getContextPath() %>/scripts/dependencies.js"></script>
  <!-- END DEPENDENCIES -->


  <!-- PLUGIN SETUPS: vendors & dependencies setups -->
  <script src="<%=request.getContextPath() %>/scripts/plugin-setups.js"></script>
  <!-- END PLUGIN SETUPS -->

  <script type="text/javascript">
    $(function(){
      'use strict';
      $( '#lockeForm' ).on( 'submit', function(){

        $( '#lockedInput' ).addClass( 'hide' );
        $( '#lockedLoader' ).removeClass( 'hide' );

        setTimeout( function(){
          window.location.href = 'index.html';
        }, 3000);
        return false;
      });
    });
  </script>


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