<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>

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
  <link rel="manifest" href="<%=request.getContextPath() %>/images/favicons/manifest.json">
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

  <main class="signin-wrapper">
    <div class="tab-content">
      <p class="text-center p-4x">
        <img src="<%=request.getContextPath() %>/images/logo/brand-text-color.png" alt="wrapkit" height="28px">
      </p>
      <div class="tab-pane fade in active" id="signin">
      	
        <form id="signinForm" action="http://bentkwek.com/items/preview/wrapkit/1.2/index.jsp" role="form">
          <p class="lead">Login to your account</p>
          <div class="form-group">
            <div class="input-group input-group-in">
              <span class="input-group-addon"><i class="icon-user"></i></span>
              <input name="username" id="username" class="form-control" placeholder="Username">
            </div>
          </div><!-- /.form-group -->
          <div class="form-group">
            <div class="input-group input-group-in">
              <span class="input-group-addon"><i class="icon-lock"></i></span>
              <input type="password" name="passwd" id="passwd" class="form-control" placeholder="Password">
            </div>
          </div><!-- /.form-group -->
          <div class="form-group clearfix">
            <div class="animated-hue pull-right">
              <button id="btnSignin" type="submit" class="btn btn-primary">Signin</button>
            </div>
            <div class="nice-checkbox nice-checkbox-inline">
              <input type="checkbox" name="keepSignin" id="keepSignin" checked="checked">
              <label for="keepSignin">Keep me sign in</label>
            </div>
          </div><!-- /.form-group -->

          <hr>

          <p><a href="#recoverAccount" data-toggle="modal">Can't Access your Account?</a></p>
          <p class="lead">Signin with another account?</p>
          <div class="signin-alt">
            <a href="#" class="btn btn-sm btn-success"><i class="fa fa-facebook"></i></a>
            <a href="#" class="btn btn-sm btn-info"><i class="fa fa-twitter"></i></a>
            <a href="#" class="btn btn-sm btn-danger"><i class="fa fa-google-plus"></i></a>
            <a href="#" class="btn btn-sm btn-default"><i class="fa fa-github"></i></a>
          </div>

          <hr>

          <p>Don't have a account? <a href="#signup" data-toggle="tab">Creata one</a></p>
        </form><!-- /#signinForm -->
      </div><!-- /.tab-pane -->

      <div class="tab-pane fade" id="signup">
        <form id="signupForm" action="http://bentkwek.com/items/preview/wrapkit/1.2/index.jsp" role="form">
          <p class="lead">Create a new account</p>
          <p class="text-muted"><strong>Enter your personal data</strong></p>
          <div class="form-group has-feedback">
            <div class="input-group input-group-in">
              <span class="input-group-addon"><i class="icon-tag"></i></span>
              <input name="fullName" id="fullName" class="form-control" placeholder="Full Name">
              <span class="form-control-feedback"></span>
            </div>
          </div><!-- /.form-group -->
          <div class="form-group has-feedback">
            <div class="input-group input-group-in">
              <span class="input-group-addon"><i class="fa fa-envelope-o"></i></span>
              <input type="email" name="email" id="email" class="form-control" placeholder="Email">
              <span class="form-control-feedback"></span>
            </div>
          </div><!-- /.form-group -->
          <div class="form-group has-feedback">
            <div class="input-group input-group-in">
              <span class="input-group-addon"><i class="icon-direction"></i></span>
              <input name="address" id="address" class="form-control" placeholder="Address">
              <span class="form-control-feedback"></span>
            </div>
          </div><!-- /.form-group -->
          <div class="form-group has-feedback">
            <div class="input-group input-group-in">
              <span class="input-group-addon"><i class="icon-location-pin"></i></span>
              <input name="city" id="city" class="form-control" placeholder="City">
              <span class="form-control-feedback"></span>
            </div>
          </div><!-- /.form-group -->
          <div class="form-group has-feedback">
            <div class="input-group input-group-in">
              <span class="input-group-addon" title="unable to find any Country that match the current query!"><i class="icon-map"></i></span>
              <input name="country" id="country" class="form-control" placeholder="Countries">
              <span class="form-control-feedback"></span>
            </div><!-- /input-group-in -->
          </div><!-- /.form-group -->
          <div class="form-group">
            <label class="control-label" style="margin-right:15px">Gender</label>
            <div class="nice-radio nice-radio-inline">
              <input type="radio" name="gender" id="genderMale" value="male" checked="checked">
              <label for="genderMale">Male</label>
            </div><!-- /.radio -->
            <div class="nice-radio nice-radio-inline">
              <input type="radio" name="gender" id="genderFemale" value="female">
              <label for="genderFemale">Female</label>
            </div><!-- /.radio -->
          </div><!-- /.form-group -->

          <hr>

          <p class="text-muted"><strong>Enter your account data</strong></p>
          <div class="form-group has-feedback">
            <div class="input-group input-group-in">
              <span class="input-group-addon"><i class="icon-user"></i></span>
              <input name="usrName" id="usrName" class="form-control" placeholder="Username">
              <span class="form-control-feedback"></span>
            </div>
          </div><!-- /.form-group -->
          <div class="form-group has-feedback">
            <div class="input-group input-group-in">
              <span class="input-group-addon"><i class="icon-key"></i></span>
              <input type="password" name="password" id="password" class="form-control" placeholder="Password">
              <span class="form-control-feedback"></span>
            </div>
          </div><!-- /.form-group -->
          <div class="form-group has-feedback">
            <div class="input-group input-group-in">
              <span class="input-group-addon"><i class="icon-check"></i></span>
              <input type="password" name="cpassword" id="cpassword" class="form-control" placeholder="Enter Password Again">
              <span class="form-control-feedback"></span>
            </div>
          </div><!-- /.form-group -->
          <div class="form-group animated-hue clearfix">
            <div class="pull-right">
              <button type="submit" class="btn btn-primary">Create account</button>
            </div>
            <div class="pull-left">
              <a href="#signin" class="btn btn-default" data-toggle="tab">Signin</a>
            </div>
          </div><!-- /.form-group -->
        </form><!-- /#signupForm -->

        <hr>

        <p>By creating an account you agree to the <a href="#">Terms of Use</a> and <a href="#">Privacy Policy</a></p>
      </div><!-- /.tab-pane -->
    </div><!-- /.tab-content -->
  </main><!--/#wrapper-->
  <p class="signin-cr text-light">&copy; 2014 Wrapkit. with Love from Stilearning team.</p>


  <!-- Modal Recover -->
  <div class="modal fade" id="recoverAccount" tabindex="-1" role="dialog" aria-labelledby="recoverAccountLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <form id="recoverForm" action="http://bentkwek.com/items/preview/wrapkit/1.2/index.jsp">
          <div class="modal-header">
            <h4 class="modal-title" id="recoverAccountLabel">Reset Password</h4>
          </div>
          <div class="modal-body">
            <div class="form-group">
              <div class="input-group input-group-in">
                <span class="input-group-addon"><i class="fa fa-envelope-o text-muted"></i></span>
                <input type="email" name="recoverEmail" id="recoverEmail" class="form-control" placeholder="Enter your email address">
              </div>
            </div><!-- /.form-group -->
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary">Send reset link</button>
          </div>
        </form><!-- /#recoverForm -->
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /#recoverAccount -->


  <!-- VENDORS : jQuery & Bootstrap -->
  <script src="<%=request.getContextPath() %>/scripts/vendor.js"></script>
  <!-- END VENDORS -->

  <!-- DEPENDENCIES : Required plugins -->
  <script src="<%=request.getContextPath() %>/scripts/dependencies.js"></script>
  <!-- END DEPENDENCIES -->


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