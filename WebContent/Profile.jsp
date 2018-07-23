<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile</title>

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
        <div class="content-hero content-hero-lg">
          <img class="content-hero-embed" src="<%=request.getContextPath() %>/images/dummy/people4.jpg" alt="cover">
          <div class="content-hero-overlay bg-grd-blue"></div>
          <div class="content-hero-body">
          </div>
          <div class="content-hero-bar">
            <div class="row">
              <div class="pull-right">
                <a data-toggle="modal" href="#" data-scripts="_includes/setups.js" data-target="#templateSetup" title="Template Setups" aria-label="template setups" class="btn btn-sm mr-2x btn-default"><span class="icon-settings fa-lg"></span></a>
              </div>
              <div class="col-lg-6">
                <div class="float-bar clearfix">
                  <div class="float-bar-brand">
                    <a class="kit-avatar kit-avatar-128 no-padding border-white" href="#">
                      <img alt="cover" src="<%=request.getContextPath() %>/images/dummy/uifaces22.jpg">
                    </a>
                  </div>
                  <div class="col-sm-8">
                    <div class="visible-xs">
                      <h2 class="display-name media-heading text-teal">Donald Barne</h2>
                      <p class="text-muted mb-4x"><span class="mr-2x">Senior UI Design</span> <span><i class="fa fa-map-marker fa-fw"></i> San Francisco, CA</span></p>
                    </div>
                    <div class="hidden-xs">
                      <h2 class="media-heading text-light">Donald Barnes</h2>
                      <p class="mb-4x text-light"><span class="mr-2x">Senior UI Design</span> <span><i class="fa fa-map-marker fa-fw"></i> San Francisco, CA</span></p>
                    </div>
                    <div class="mt-4x">
                      <p>About donald ab officia facilis laudantium provident quas, doloremque, dicta doloribus non repudiandae!</p>
                      <p>
                        <a href="#" class="btn btn-danger btn-sm btn-circle" aria-label="google plus"><i class="fa fa-lg fa-google-plus"></i></a>
                        <a href="#" class="btn btn-primary btn-sm btn-circle ml-1x" aria-label="instagram"><i class="fa fa-lg fa-instagram"></i></a>
                        <a href="#" class="btn btn-info btn-sm btn-circle ml-1x" aria-label="twitter"><i class="fa fa-lg fa-twitter"></i></a>
                        <a href="#" class="btn btn-success btn-sm btn-circle ml-1x" aria-label="facebook"><i class="fa fa-lg fa-facebook"></i></a>
                      </p>
                    </div>
                  </div><!-- /.media-body -->
                </div><!-- /.float-bar -->
              </div><!-- /.cols -->

              <div class="col-lg-6">
                <h4 class="text-muted">Achievement</h4>
                <div class="row">
                  <div class="col-xs-3">
                    <span class="headline"><strong>68</strong></span>
                    <p>Posts</p>
                  </div>
                  <div class="col-xs-3">
                    <span class="headline"><strong>23</strong></span>
                    <p>Projects</p>
                  </div>
                  <div class="col-xs-3">
                    <span class="headline"><strong>1,2K</strong></span>
                    <p>Followers</p>
                  </div>
                  <div class="col-xs-3">
                    <span class="headline"><strong>26K</strong></span>
                    <p>Sales</p>
                  </div>
                </div>
              </div><!-- /.cols -->
            </div><!-- /.row -->
          </div><!-- /.content-hero-bar -->
        </div><!-- /.content-hero -->


        <div class="content-body">

          <!-- ============================================
          LATEST POSTS LIST
          =============================================== -->
          <div class="panel" data-fill-color="true">
            <div class="panel-body">
              <div class="row">
                <div class="col-md-4">
                  <div class="help-block">
                    <canvas id="chartjs-profile1"></canvas>
                  </div>
                  <div class="help-block text-center mb-4x">
                    <h4>August sales</h4>
                    <p>Nulla dolore ab mollitia, recusandae quas minima voluptatem sint dolores impedit, iste culpa eligendi perspiciatis nihil similique!</p>
                  </div>
                </div><!-- /.cols -->

                <div class="col-md-4">
                  <div class="help-block">
                    <canvas id="chartjs-profile2"></canvas>
                  </div>
                  <div class="help-block text-center mb-4x">
                    <h4>September sales</h4>
                    <p>Nulla dolore ab mollitia, recusandae quas minima voluptatem sint dolores impedit, iste culpa eligendi perspiciatis nihil similique!</p>
                  </div>
                </div><!-- /.cols -->

                <div class="col-md-4">
                  <div class="help-block">
                    <canvas id="chartjs-profile3"></canvas>
                  </div>
                  <div class="help-block text-center mb-4x">
                    <h4>October sales</h4>
                    <p>Nulla dolore ab mollitia, recusandae quas minima voluptatem sint dolores impedit, iste culpa eligendi perspiciatis nihil similique!</p>
                  </div>
                </div><!-- /.cols -->
              </div><!-- /.row -->
            </div><!-- /.panel-body -->
          </div><!-- /.panel -->


          <!-- ============================================
          LATEST POSTS LIST
          =============================================== -->
          <div class="post-list-head pr-2x pl-2x pt-4x mt-4x">
            <div class="row">
              <div class="col-lg-6 col-md-5 col-sm-6 col-xs-12">
                <p class="text-muted">
                  <small class="hidden-xs"><strong>POST TITLE</strong></small>
                  <small class="visible-xs-inline"><strong>LATEST POSTS</strong></small>
                </p>
              </div>
              <div class="col-lg-2 col-md-2 col-sm-2 hidden-xs">
                <p class="text-muted"><small><strong>DATE</strong></small></p>
              </div>
              <div class="col-lg-1 col-md-1 col-sm-2 hidden-sm hidden-xs">
                <p class="text-muted"><small><strong>VIEWS</strong></small></p>
              </div>
              <div class="col-lg-3 col-md-4 col-sm-2 hidden-xs">
                <p class="text-muted"><small><strong>COMMENTS</strong></small></p>
              </div>
            </div>
          </div><!-- /.post-list-head -->

          <div class="panel mb-1x">
            <div class="panel-body">
              <div class="row">
                <div class="col-lg-6 col-md-5 col-sm-6 col-xs-9">
                  <a href="#" class="kit-avatar kit-avatar-42 kit-avatar-square no-border pull-left kit-avatar-fw">
                    <img src="<%=request.getContextPath() %>/images/dummy/people2.jpg" alt="avatar">
                  </a>
                  <div class="pt-1x">Make Your Design Keep Simple and Easy Read</div>
                </div><!-- /.cols -->
                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 hidden-xs">
                  <div class="pt-1x">12 Sep 2015</div>
                </div><!-- /.cols -->
                <div class="col-lg-1 col-md-1 hidden-xs hidden-sm">
                  <div class="pt-1x">2,681</div>
                </div><!-- /.cols -->
                <div class="col-lg-2 col-md-2 col-sm-2 hidden-xs">
                  <div class="pt-1x">136</div>
                </div><!-- /.cols -->
                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-3 text-right">
                  <a href="#" class="btn btn-primary">Edit</a>
                </div><!-- /.cols -->
              </div><!-- /.row -->
            </div><!-- /.panel-body -->
          </div><!-- /.panel -->

          <div class="panel mb-1x">
            <div class="panel-body">
              <div class="row">
                <div class="col-lg-6 col-md-5 col-sm-6 col-xs-9">
                  <a href="#" class="kit-avatar kit-avatar-42 kit-avatar-square no-border pull-left kit-avatar-fw">
                    <img src="<%=request.getContextPath() %>/images/dummy/desk2.jpg" alt="avatar">
                  </a>
                  <div class="pt-1x">Homing In on 'Intelligent' Web Design</div>
                </div><!-- /.cols -->
                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 hidden-xs">
                  <div class="pt-1x">11 Sep 2015</div>
                </div><!-- /.cols -->
                <div class="col-lg-1 col-md-1 hidden-xs hidden-sm">
                  <div class="pt-1x">468</div>
                </div><!-- /.cols -->
                <div class="col-lg-2 col-md-2 col-sm-2 hidden-xs">
                  <div class="pt-1x">73</div>
                </div><!-- /.cols -->
                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-3 text-right">
                  <a href="#" class="btn btn-primary">Edit</a>
                </div><!-- /.cols -->
              </div><!-- /.row -->
            </div><!-- /.panel-body -->
          </div><!-- /.panel -->

          <div class="panel mb-1x">
            <div class="panel-body">
              <div class="row">
                <div class="col-lg-6 col-md-5 col-sm-6 col-xs-9">
                  <a href="#" class="kit-avatar kit-avatar-42 kit-avatar-square no-border pull-left kit-avatar-fw">
                    <img src="<%=request.getContextPath() %>/images/dummy/desk3.jpg" alt="avatar">
                  </a>
                  <div class="pt-1x">The Ideas to Become a Creative Professionals</div>
                </div><!-- /.cols -->
                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 hidden-xs">
                  <div class="pt-1x">9 Sep 2015</div>
                </div><!-- /.cols -->
                <div class="col-lg-1 col-md-1 hidden-xs hidden-sm">
                  <div class="pt-1x">576</div>
                </div><!-- /.cols -->
                <div class="col-lg-2 col-md-2 col-sm-2 hidden-xs">
                  <div class="pt-1x">26</div>
                </div><!-- /.cols -->
                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-3 text-right">
                  <a href="#" class="btn btn-primary">Edit</a>
                </div><!-- /.cols -->
              </div><!-- /.row -->
            </div><!-- /.panel-body -->
          </div><!-- /.panel -->

          <div class="panel mb-1x">
            <div class="panel-body">
              <div class="row">
                <div class="col-lg-6 col-md-5 col-sm-6 col-xs-9">
                  <a href="#" class="kit-avatar kit-avatar-42 kit-avatar-square no-border pull-left kit-avatar-fw">
                    <img src="<%=request.getContextPath() %>/images/dummy/desk4.jpg" alt="avatar">
                  </a>
                  <div class="pt-1x">Designing our Work Room</div>
                </div><!-- /.cols -->
                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 hidden-xs">
                  <div class="pt-1x">9 Sep 2015</div>
                </div><!-- /.cols -->
                <div class="col-lg-1 col-md-1 hidden-xs hidden-sm">
                  <div class="pt-1x">931</div>
                </div><!-- /.cols -->
                <div class="col-lg-2 col-md-2 col-sm-2 hidden-xs">
                  <div class="pt-1x">86</div>
                </div><!-- /.cols -->
                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-3 text-right">
                  <a href="#" class="btn btn-primary">Edit</a>
                </div><!-- /.cols -->
              </div><!-- /.row -->
            </div><!-- /.panel-body -->
          </div><!-- /.panel -->

          <div class="panel">
            <div class="panel-body">
              <div class="row">
                <div class="col-lg-6 col-md-5 col-sm-6 col-xs-9">
                  <a href="#" class="kit-avatar kit-avatar-42 kit-avatar-square no-border pull-left kit-avatar-fw">
                    <img src="<%=request.getContextPath() %>/images/dummy/people4.jpg" alt="avatar">
                  </a>
                  <div class="pt-1x">Technology Tools: Web 2.0 in the Classroom</div>
                </div><!-- /.cols -->
                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 hidden-xs">
                  <div class="pt-1x">8 Sep 2015</div>
                </div><!-- /.cols -->
                <div class="col-lg-1 col-md-1 hidden-xs hidden-sm">
                  <div class="pt-1x">1,636</div>
                </div><!-- /.cols -->
                <div class="col-lg-2 col-md-2 col-sm-2 hidden-xs">
                  <div class="pt-1x">211</div>
                </div><!-- /.cols -->
                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-3 text-right">
                  <a href="#" class="btn btn-primary">Edit</a>
                </div><!-- /.cols -->
              </div><!-- /.row -->
            </div><!-- /.panel-body -->
          </div><!-- /.panel -->
          <p class="help-block text-right pb-4x mb-4x">
            <a href="#" class="btn btn-icon btn-default"><span class="text-muted">View All Posts <i class="fa fa-angle-double-right"></i></span></a>
          </p>



          <!-- ============================================
          PROJECTS LIST
          =============================================== -->
          <div class="row mb-4x mt-4x">
            <div class="col-xs-12 bg-white">
              <div class="p-2x">
                <h1>You Have 23 Projects</h1>
                <p class="lead">6 of unfinished projects waiting for you.</p>
              </div>
            </div><!-- /.cols -->
          </div><!-- /.row -->

          <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6">
              <div class="panel fade in panel-default" data-init-panel="true">
                <div class="panel-body">
                  <div class="media">
                    <div class="media-left">
                      <div class="kit-avatar kit-avatar-42 kit-avatar-square no-border">
                        <img class="media-object" src="<%=request.getContextPath() %>/images/logo/brand.png" alt="project brand">
                      </div>
                    </div>
                    <div class="media-body">
                      <h3 class="media-heading">Wrapkit Admin Template</h3>
                      <p class="help-block">Progress in 72% - Last update 8h</p>
                    </div><!-- /.media -body-->
                  </div><!-- /.media -->
                </div><!-- /.panel-body -->

                <div class="progress progress-xs no-radius no-margin">
                  <div class="progress-bar bg-grd-teal" role="progressbar" aria-valuenow="72" aria-valuemin="0" aria-valuemax="100" style="width: 72%">
                    <span class="sr-only">72% Complete</span>
                  </div>
                </div><!-- /.progress -->
              </div><!-- /.panel -->
            </div><!-- /.cols -->

            <div class="col-lg-4 col-md-6 col-sm-6">
              <div class="panel fade in panel-default" data-init-panel="true">
                <div class="panel-body">
                  <div class="media">
                    <div class="media-left">
                      <span class="fa-stack fa-2x">
                        <i class="fa fa-circle fa-stack-2x text-blue"></i>
                        <i class="fa fa-cube fa-stack-1x fa-inverse"></i>
                      </span>
                    </div>
                    <div class="media-body">
                      <h3 class="media-heading">Smart Paper</h3>
                      <p class="help-block">Progress in 46% - Last update 2d</p>
                    </div><!-- /.media -body-->
                  </div><!-- /.media -->
                </div><!-- /.panel-body -->

                <div class="progress progress-xs no-radius no-margin">
                  <div class="progress-bar bg-grd-blue" role="progressbar" aria-valuenow="46" aria-valuemin="0" aria-valuemax="100" style="width: 46%">
                    <span class="sr-only">46% Complete</span>
                  </div>
                </div><!-- /.progress -->
              </div><!-- /.panel -->
            </div><!-- /.cols -->

            <div class="col-lg-4 col-md-6 col-sm-6">
              <div class="panel fade in panel-default" data-init-panel="true">
                <div class="panel-body">
                  <div class="media">
                    <div class="media-left">
                      <span class="fa-stack fa-2x">
                        <i class="fa fa-circle fa-stack-2x text-cyan"></i>
                        <i class="icon-rocket fa-stack-1x fa-inverse"></i>
                      </span>
                    </div>
                    <div class="media-body">
                      <h3 class="media-heading">Stilearn Re-design</h3>
                      <p class="help-block">Progress in 89% - Last update 1w</p>
                    </div><!-- /.media -body-->
                  </div><!-- /.media -->
                </div><!-- /.panel-body -->

                <div class="progress progress-xs no-radius no-margin">
                  <div class="progress-bar bg-grd-cyan" role="progressbar" aria-valuenow="89" aria-valuemin="0" aria-valuemax="100" style="width: 89%">
                    <span class="sr-only">89% Complete</span>
                  </div>
                </div><!-- /.progress -->
              </div><!-- /.panel -->
            </div><!-- /.cols -->

            <div class="col-lg-4 col-md-6 col-sm-6">
              <div class="panel fade in panel-default" data-init-panel="true">
                <div class="panel-body">
                  <div class="media">
                    <div class="media-left">
                      <span class="fa-stack fa-2x">
                        <i class="fa fa-circle fa-stack-2x text-violet"></i>
                        <i class="icon-diamond fa-stack-1x fa-inverse"></i>
                      </span>
                    </div>
                    <div class="media-body">
                      <h3 class="media-heading">Syrena Project</h3>
                      <p class="help-block">Progress in 54% - Last update 1d</p>
                    </div><!-- /.media -body-->
                  </div><!-- /.media -->
                </div><!-- /.panel-body -->

                <div class="progress progress-xs no-radius no-margin">
                  <div class="progress-bar bg-grd-violet" role="progressbar" aria-valuenow="54" aria-valuemin="0" aria-valuemax="100" style="width: 54%">
                    <span class="sr-only">54% Complete</span>
                  </div>
                </div><!-- /.progress -->
              </div><!-- /.panel -->
            </div><!-- /.cols -->

            <div class="col-lg-4 col-md-6 col-sm-6">
              <div class="panel fade in panel-default" data-init-panel="true">
                <div class="panel-body">
                  <div class="media">
                    <div class="media-left">
                      <span class="fa-stack fa-2x">
                        <i class="fa fa-circle fa-stack-2x text-red"></i>
                        <i class="fa fa-ticket fa-stack-1x fa-inverse"></i>
                      </span>
                    </div>
                    <div class="media-body">
                      <h3 class="media-heading">Booking App</h3>
                      <p class="help-block">Progress in 96% - Last update 1h</p>
                    </div><!-- /.media -body-->
                  </div><!-- /.media -->
                </div><!-- /.panel-body -->

                <div class="progress progress-xs no-radius no-margin">
                  <div class="progress-bar bg-grd-red" role="progressbar" aria-valuenow="96" aria-valuemin="0" aria-valuemax="100" style="width: 96%">
                    <span class="sr-only">96% Complete</span>
                  </div>
                </div><!-- /.progress -->
              </div><!-- /.panel -->
            </div><!-- /.cols -->

            <div class="col-lg-4 col-md-6 col-sm-6">
              <div class="panel fade in panel-default" data-init-panel="true">
                <div class="panel-body">
                  <div class="media">
                    <div class="media-left">
                      <span class="fa-stack fa-2x">
                        <i class="fa fa-circle fa-stack-2x text-orange"></i>
                        <i class="icon-vector fa-stack-1x fa-inverse"></i>
                      </span>
                    </div>
                    <div class="media-body">
                      <h3 class="media-heading">SVG Icon Bundle</h3>
                      <p class="help-block">Progress in 99% - Last update 3d</p>
                    </div><!-- /.media -body-->
                  </div><!-- /.media -->
                </div><!-- /.panel-body -->

                <div class="progress progress-xs no-radius no-margin">
                  <div class="progress-bar bg-grd-orange" role="progressbar" aria-valuenow="99" aria-valuemin="0" aria-valuemax="100" style="width: 99%">
                    <span class="sr-only">99% Complete</span>
                  </div>
                </div><!-- /.progress -->
              </div><!-- /.panel -->
            </div><!-- /.cols -->
          </div><!-- /.row -->
          <p class="help-block text-right pb-4x mb-4x">
            <a href="#" class="btn btn-icon btn-default"><span class="text-muted">View All Projects <i class="fa fa-angle-double-right"></i></span></a>
          </p>



          <!-- ============================================
          FOLLOWERS LIST
          =============================================== -->
          <div class="row mb-4x mt-4x">
            <div class="col-xs-12 bg-white">
              <div class="p-2x">
                <h1>You Have 1,248 Followers</h1>
                <p class="lead">83% of them are your Customers.</p>
              </div>
            </div><!-- /.cols -->
          </div><!-- /.row -->

          <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6">
              <div class="panel">
                <div class="embed-responsive embed-responsive-16by9 corner-top">
                  <img class="embed-responsive-item" src="<%=request.getContextPath() %>/images/dummy/people5.jpg" alt="cover">
                  <div class="embed-overlay bg-grd-dark"></div>
                </div><!-- /.embed -->

                <div class="embed-extend-item">
                  <a href="#" class="kit-avatar kit-avatar-96 border-white pull-left">
                    <img src="<%=request.getContextPath() %>/images/dummy/uifaces11.jpg" alt="avatar">
                  </a>
                  <h3 class="subhead"><a href="#">Maribel Padilla</a> <small>UI Designer</small></h3>
                </div><!-- /.kit-cover-headline -->

                <div class="panel-body">
                  <div class="row">
                    <div class="col-xs-4 bordered-right">
                      <h5 class="text-center"><small>STARS</small><br><strong>1,397</strong></h5>
                    </div><!-- /.cols -->
                    <div class="col-xs-4 bordered-right">
                      <h5 class="text-center"><small>PROJECTS</small><br><strong>26</strong></h5>
                    </div><!-- /.cols -->
                    <div class="col-xs-4">
                      <h5 class="text-center"><small>SALES</small><br><strong>24,170</strong></h5>
                    </div><!-- /.cols -->
                  </div><!-- /.row -->
                </div><!-- /.panel-body -->
              </div><!-- /.panel -->
            </div><!-- /.cols -->

            <div class="col-lg-4 col-md-6 col-sm-6">
              <div class="panel">
                <div class="embed-responsive embed-responsive-16by9 corner-top">
                  <img class="embed-responsive-item" src="<%=request.getContextPath() %>/images/dummy/people3.jpg" alt="cover">
                  <div class="embed-overlay bg-grd-dark"></div>
                  <div class="embed-badge">
                    <div class="embed-badge-bg bg-teal"></div>
                    <a rel="tooltip" data-container="body" title="" href="#" class="embed-badge-content" data-original-title="Elite User"><i class="icon-badge"></i></a>
                  </div>
                </div><!-- /.embed -->

                <div class="embed-extend-item">
                  <a href="#" class="kit-avatar kit-avatar-96 border-white pull-left">
                    <img src="<%=request.getContextPath() %>/images/dummy/uifaces13.jpg" alt="avatar">
                  </a>
                  <h3 class="subhead"><a href="#">Steven Wade</a> <small>PHP Developer</small></h3>
                </div><!-- /.kit-cover-headline -->

                <div class="panel-body">
                  <div class="row">
                    <div class="col-xs-4 bordered-right">
                      <h5 class="text-center"><small>STARS</small><br><strong>6,245</strong></h5>
                    </div><!-- /.cols -->
                    <div class="col-xs-4 bordered-right">
                      <h5 class="text-center"><small>PROJECTS</small><br><strong>94</strong></h5>
                    </div><!-- /.cols -->
                    <div class="col-xs-4">
                      <h5 class="text-center"><small>SALES</small><br><strong>43,846</strong></h5>
                    </div><!-- /.cols -->
                  </div><!-- /.row -->
                </div><!-- /.panel-body -->
              </div><!-- /.panel -->
            </div><!-- /.cols -->

            <div class="col-lg-4 col-md-6 col-sm-6">
              <div class="panel">
                <div class="embed-responsive embed-responsive-16by9 corner-top">
                  <img class="embed-responsive-item" src="<%=request.getContextPath() %>/images/dummy/people4.jpg" alt="cover">
                  <div class="embed-overlay bg-grd-dark"></div>
                </div><!-- /.embed -->

                <div class="embed-extend-item">
                  <a href="#" class="kit-avatar kit-avatar-96 border-white pull-left">
                    <img src="<%=request.getContextPath() %>/images/dummy/uifaces12.jpg" alt="avatar">
                  </a>
                  <h3 class="subhead"><a href="#">Julia Hill</a> <small>Database Analys</small></h3>
                </div><!-- /.kit-cover-headline -->

                <div class="panel-body">
                  <div class="row">
                    <div class="col-xs-4 bordered-right">
                      <h5 class="text-center"><small>STARS</small><br><strong>1,814</strong></h5>
                    </div><!-- /.cols -->
                    <div class="col-xs-4 bordered-right">
                      <h5 class="text-center"><small>PROJECTS</small><br><strong>9</strong></h5>
                    </div><!-- /.cols -->
                    <div class="col-xs-4">
                      <h5 class="text-center"><small>SALES</small><br><strong>4,170</strong></h5>
                    </div><!-- /.cols -->
                  </div><!-- /.row -->
                </div><!-- /.panel-body -->
              </div><!-- /.panel -->
            </div><!-- /.cols -->

            <div class="col-lg-4 col-md-6 col-sm-6">
              <div class="panel">
                <div class="embed-responsive embed-responsive-16by9 corner-top">
                  <img class="embed-responsive-item" src="<%=request.getContextPath() %>/images/dummy/people2.jpg" alt="cover">
                  <div class="embed-overlay bg-grd-dark"></div>
                  <div class="embed-badge">
                    <div class="embed-badge-bg bg-teal"></div>
                    <a rel="tooltip" data-container="body" title="" href="#" class="embed-badge-content" data-original-title="Elite User"><i class="icon-badge"></i></a>
                  </div>
                </div><!-- /.embed -->

                <div class="embed-extend-item">
                  <a href="#" class="kit-avatar kit-avatar-96 border-white pull-left">
                    <img src="<%=request.getContextPath() %>/images/dummy/uifaces15.jpg" alt="avatar">
                  </a>
                  <h3 class="subhead"><a href="#">Joshua Medina</a> <small>Senior Designer</small></h3>
                </div><!-- /.kit-cover-headline -->

                <div class="panel-body">
                  <div class="row">
                    <div class="col-xs-4 bordered-right">
                      <h5 class="text-center"><small>STARS</small><br><strong>10,565</strong></h5>
                    </div><!-- /.cols -->
                    <div class="col-xs-4 bordered-right">
                      <h5 class="text-center"><small>PROJECTS</small><br><strong>105</strong></h5>
                    </div><!-- /.cols -->
                    <div class="col-xs-4">
                      <h5 class="text-center"><small>SALES</small><br><strong>96,701</strong></h5>
                    </div><!-- /.cols -->
                  </div><!-- /.row -->
                </div><!-- /.panel-body -->
              </div><!-- /.panel -->
            </div><!-- /.cols -->

            <div class="col-lg-4 col-md-6 col-sm-6">
              <div class="panel">
                <div class="embed-responsive embed-responsive-16by9 corner-top">
                  <img class="embed-responsive-item" src="<%=request.getContextPath() %>/images/dummy/people1.jpg" alt="cover">
                  <div class="embed-overlay bg-grd-dark"></div>
                </div><!-- /.embed -->

                <div class="embed-extend-item">
                  <a href="#" class="kit-avatar kit-avatar-96 border-white pull-left">
                    <img src="<%=request.getContextPath() %>/images/dummy/uifaces17.jpg" alt="avatar">
                  </a>
                  <h3 class="subhead"><a href="#">Denise Russell</a> <small>Graphic Designer</small></h3>
                </div><!-- /.kit-cover-headline -->

                <div class="panel-body">
                  <div class="row">
                    <div class="col-xs-4 bordered-right">
                      <h5 class="text-center"><small>STARS</small><br><strong>2,523</strong></h5>
                    </div><!-- /.cols -->
                    <div class="col-xs-4 bordered-right">
                      <h5 class="text-center"><small>PROJECTS</small><br><strong>21</strong></h5>
                    </div><!-- /.cols -->
                    <div class="col-xs-4">
                      <h5 class="text-center"><small>SALES</small><br><strong>9,170</strong></h5>
                    </div><!-- /.cols -->
                  </div><!-- /.row -->
                </div><!-- /.panel-body -->
              </div><!-- /.panel -->
            </div><!-- /.cols -->

            <div class="col-lg-4 col-md-6 col-sm-6">
              <div class="panel">
                <div class="embed-responsive embed-responsive-16by9 corner-top">
                  <img class="embed-responsive-item" src="<%=request.getContextPath() %>/images/dummy/desk2.jpg" alt="cover">
                  <div class="embed-overlay bg-grd-dark"></div>
                  <div class="embed-badge">
                    <div class="embed-badge-bg bg-teal"></div>
                    <a rel="tooltip" data-container="body" title="" href="#" class="embed-badge-content" data-original-title="Elite User"><i class="icon-badge"></i></a>
                  </div>
                </div><!-- /.embed -->

                <div class="embed-extend-item">
                  <a href="#" class="kit-avatar kit-avatar-96 border-white pull-left">
                    <img src="<%=request.getContextPath() %>/images/dummy/uifaces16.jpg" alt="avatar">
                  </a>
                  <h3 class="subhead"><a href="#">Danielle Stone</a> <small>Senior Designer</small></h3>
                </div><!-- /.kit-cover-headline -->

                <div class="panel-body">
                  <div class="row">
                    <div class="col-xs-4 bordered-right">
                      <h5 class="text-center"><small>STARS</small><br><strong>11,584</strong></h5>
                    </div><!-- /.cols -->
                    <div class="col-xs-4 bordered-right">
                      <h5 class="text-center"><small>PROJECTS</small><br><strong>94</strong></h5>
                    </div><!-- /.cols -->
                    <div class="col-xs-4">
                      <h5 class="text-center"><small>SALES</small><br><strong>44,731</strong></h5>
                    </div><!-- /.cols -->
                  </div><!-- /.row -->
                </div><!-- /.panel-body -->
              </div><!-- /.panel -->
            </div><!-- /.cols -->
          </div><!-- /.row -->

          <p class="help-block text-right pb-4x mb-4x">
            <a href="#" class="btn btn-icon btn-default"><span class="text-muted">View All Followers <i class="fa fa-angle-double-right"></i></span></a>
          </p>

        </div><!-- /.content-body -->


        <!-- Template Setups -->
        <div class="modal fade" id="templateSetup">
          <div class="modal-dialog">
            <!-- modal-content -->
            <div class="modal-content"></div>
          </div><!-- /.modal-dialog -->
        </div><!-- /.templateSetup -->


      </div><!-- /.content -->
    </section><!-- /MAIN -->



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

  <!-- CHARTS -->
  <script src="<%=request.getContextPath() %>/scripts/chartjs.js"></script>
  <!-- END CHARTS -->

  <!-- DUMMY: Use for demo -->
  <script src="<%=request.getContextPath() %>/scripts/demo/page-profile-demo.js"></script>


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