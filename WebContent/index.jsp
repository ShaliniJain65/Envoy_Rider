<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Envoy Rider</title>
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

  <link href="<%=request.getContextPath() %>/http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,700,600,300" rel="stylesheet" type="text/css">

  <link rel="stylesheet" href="<%=request.getContextPath() %>/styles/bootstrap.css">

  <link rel="stylesheet" href="<%=request.getContextPath() %>/styles/dependencies.css">

  <link rel="stylesheet" href="<%=request.getContextPath() %>/styles/components.css">

  <link rel="stylesheet" href="<%=request.getContextPath() %>/styles/wrapkit.css">

  <link rel="stylesheet" href="<%=request.getContextPath() %>/styles/demo.css">
</head>
<body>
    <main class="wrapkit-wrapper" id="wrapper">
	 <!-- ============================================
    HEADER SECTION
    =============================================== -->
   
   <jsp:include page="Header.jsp"></jsp:include>
   
   
 <!-- ============================================
   END HEADER SECTION
    =============================================== -->

    <!-- ============================================
    SIDEBAR SECTION
    =============================================== -->
    
    <jsp:include page="Sidebar.jsp"></jsp:include>
    
    <!-- ============================================
         END SIDEBAR SECTION
    =============================================== -->
   



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
            <li class="active">Dashboard</li>
          </ul>
        </div><!-- /.content-bar -->


  


            

          <!-- AUDIENCE OVERVIEW -->
          <div class="panel" data-fill-color="true">
            <div class="panel-heading">
              <div class="panel-control pull-right">
                <a href="#" class="btn btn-default">Day</a>
                <a href="#" class="btn btn-default">Week</a>
                <a href="#" class="btn btn-default">Month</a>
              </div>
              <h3 class="panel-title">Audience overview</h3>
            </div>
            <div class="panel-body">
              <div class="row mb-2x">
                <div class="col-md-8 col-md-push-4">
                  <div id="graph-audience" class="morris-chart mb-4x" style="height:220px"></div>
                </div><!-- /.cols -->

                <div class="col-md-4 col-md-pull-8">
                  <div class="help-block">
                    <span class="pull-right">9,214 visitors</span>
                    <span>Chrome</span>
                  </div>
                  <div class="progress progress-sm">
                    <div class="progress-bar progress-bar-primary" style="width:85%"></div>
                  </div>

                  <div class="help-block">
                    <span class="pull-right">6,541 visitors</span>
                    <span>Firefox</span>
                  </div>
                  <div class="progress progress-sm">
                    <div class="progress-bar progress-bar-primary" style="width:52%"></div>
                  </div>

                  <div class="help-block">
                    <span class="pull-right">7,951 visitors</span>
                    <span>Internet Explorer</span>
                  </div>
                  <div class="progress progress-sm">
                    <div class="progress-bar progress-bar-primary" style="width:64%"></div>
                  </div>

                  <div class="help-block">
                    <span class="pull-right">4,628 visitors</span>
                    <span>Safari</span>
                  </div>
                  <div class="progress progress-sm">
                    <div class="progress-bar progress-bar-primary" style="width:42%"></div>
                  </div>
                </div><!-- /.cols -->
              </div><!-- /.row -->


                <div class="col-md-6 col-sm-12">
                  <div class="row">
                    <div class="col-xs-12">
                      <div>
                        <span class="pull-right"><small><i class="fa fa-arrow-up text-teal fa-fw"></i> 3%</small></span>
                        <span class="text-overflow"><span class="hidden-xxs">Total</span> Pageviews</span>
                      </div>
                      <p class="fa-2x">34,681</p>
                      <div class="progress progress-xs">
                        <div class="progress-bar progress-bar-danger" style="width:68%"></div>
                      </div>
                    </div><!-- /.cols -->
                    <div class="col-xs-12">
                      <div>
                        <span class="pull-right"><small><i class="fa fa-arrow-up text-teal fa-fw"></i> 0.2%</small></span>
                        <span class="text-overflow">Total Signup</span>
                      </div>
                      <p class="fa-2x">7,921</p>
                      <div class="progress progress-xs">
                        <div class="progress-bar progress-bar-warning" style="width:82%"></div>
                      </div>
                    </div><!-- /.cols -->
                  </div><!-- /.row -->
                </div><!-- /.cols -->
              </div><!-- /.row -->
            </div><!-- /.panel-body -->
          </div><!-- /.panel -->
          <!-- /AUDIENCE OVERVIEW -->



          <div class="row">
            <!-- LATEST SIGNUP -->
            <div class="col-md-12">
              <div class="panel" data-fill-color="true">
                <div class="panel-body">
                  <p class="title">Latest Signup</p>
                  <div class="text-right text-muted">
                    <small class="text-cyan mr-2x"><span class="i fa fa-male fa-fw"></span> 2,145</small>
                    <small class="text-violet"><span class="i fa fa-female fa-fw"></span> 1,746</small>
                  </div>
                  <div id="graph-latest-signup" class="morris-chart row" style="height:150px"></div>

                  <div class="last-signup">
                    <a href="#" class="kit-avatar kit-avatar-32 align-middle no-border mb-1x" rel="tooltip" data-container="body" title="Artie Citron">
                      <img alt="avatar" src="<%=request.getContextPath() %>/images/dummy/uifaces1.jpg">
                    </a>
                    <a href="#" class="kit-avatar kit-avatar-32 align-middle no-border mb-1x" rel="tooltip" data-container="body" title="Tyler Cantabrana">
                      <img alt="avatar" src="<%=request.getContextPath() %>/images/dummy/uifaces22.jpg">
                    </a>
                    <a href="#" class="kit-avatar kit-avatar-32 align-middle no-border mb-1x" rel="tooltip" data-container="body" title="Aletha Dehart">
                      <img alt="avatar" src="<%=request.getContextPath() %>/images/dummy/uifaces21.jpg">
                    </a>
                    <a href="#" class="kit-avatar kit-avatar-32 align-middle no-border mb-1x" rel="tooltip" data-container="body" title="Viva Bencivenga">
                      <img alt="avatar" src="<%=request.getContextPath() %>/images/dummy/uifaces8.jpg">
                    </a>
                    <a href="#" class="kit-avatar kit-avatar-32 align-middle no-border mb-1x" rel="tooltip" data-container="body" title="Lue Flem">
                      <img alt="avatar" src="<%=request.getContextPath() %>/images/dummy/uifaces17.jpg">
                    </a>
                    <a href="#" class="kit-avatar kit-avatar-32 align-middle no-border mb-1x" rel="tooltip" data-container="body" title="Synthia Sarconi">
                      <img alt="avatar" src="<%=request.getContextPath() %>/images/dummy/uifaces19.jpg">
                    </a>
                    <a href="#" class="kit-avatar kit-avatar-32 align-middle no-border mb-1x" rel="tooltip" data-container="body" title="Edward Bandura">
                      <img alt="avatar" src="<%=request.getContextPath() %>/images/dummy/uifaces6.jpg">
                    </a>
                    <a href="#" class="kit-avatar kit-avatar-32 align-middle no-border mb-1x" rel="tooltip" data-container="body" title="Mammie Bisping">
                      <img alt="avatar" src="<%=request.getContextPath() %>/images/dummy/uifaces18.jpg">
                    </a>
                    <a href="#" class="kit-avatar kit-avatar-32 align-middle no-border mb-1x" rel="tooltip" data-container="body" title="Margaretta Buress">
                      <img alt="avatar" src="<%=request.getContextPath() %>/images/dummy/uifaces9.jpg">
                    </a>
                    <a href="#" class="kit-avatar kit-avatar-32 align-middle no-border mb-1x" rel="tooltip" data-container="body" title="Queenie Lind">
                      <img alt="avatar" src="<%=request.getContextPath() %>/images/dummy/uifaces13.jpg">
                    </a>
                    <a href="#" class="kit-avatar kit-avatar-32 align-middle no-border mb-1x" rel="tooltip" data-container="body" title="Wanita Buer">
                      <img alt="avatar" src="<%=request.getContextPath() %>/images/dummy/uifaces5.jpg">
                    </a>
                    <a href="#" class="kit-avatar kit-avatar-32 align-middle no-border mb-1x" rel="tooltip" data-container="body" title="Dirk Jenquin">
                      <img alt="avatar" src="<%=request.getContextPath() %>/images/dummy/uifaces11.jpg">
                    </a>
                    <a href="#" class="kit-avatar kit-avatar-32 align-middle no-border mb-1x" rel="tooltip" data-container="body" title="Jenni Cratty">
                      <img alt="avatar" src="<%=request.getContextPath() %>/images/dummy/uifaces20.jpg">
                    </a>
                    <a href="#" class="kit-avatar kit-avatar-32 align-middle no-border mb-1x" rel="tooltip" data-container="body" title="Jenni Cratty">
                      <img alt="avatar" src="<%=request.getContextPath() %>/images/dummy/uifaces5.jpg">
                    </a>
                    <a href="#" class="kit-avatar kit-avatar-32 align-middle no-border mb-1x" rel="tooltip" data-container="body" title="India Standiford">
                      <img alt="avatar" src="<%=request.getContextPath() %>/images/dummy/uifaces16.jpg">
                    </a>
                    <a href="#" class="kit-avatar kit-avatar-32 align-middle no-border mb-1x" rel="tooltip" data-container="body" title="Shanice Segobia">
                      <img alt="avatar" src="<%=request.getContextPath() %>/images/dummy/uifaces21.jpg">
                    </a>
                    <a href="#" class="btn btn-sm btn-default btn-circle mb-1x" rel="tooltip" data-container="body" title="See all"><i class="icon-options text-muted"></i></a>
                  </div><!-- /.last-signup -->
                </div><!-- /.panel-body -->
                <div class="panel-footer">
                  <div class="input-group input-group-in no-border">
                    <span class="input-group-addon"><i class="icon-user-follow text-muted"></i></span>
                    <input class="form-control" placeholder="Invite people">
                  </div>
                </div><!-- /.panel-footer -->
              </div><!-- /.panel -->
            </div><!-- /.cols -->

            <!-- SOCIAL ACTIVITY -->
            <div class="col-md-6">
              <div class="panel" data-fill-color="true">
                <div class="panel-body">
                  <p class="title">Social Activity</p>
                  <div class="media">
                    <div class="media-left">
                      <div class="media-object mr-1x">
                        <div class="easyPieChart" data-percent="72" data-size="52" data-line-width="3" data-line-cap="square" data-scale-color="false" data-track-color="#F5F7FA" data-bar-color="#ED5565">
                          <span class="percentage text-red"><i class="fa fa-google-plus fa-lg"></i></span>
                        </div><!-- /.easyPieChart -->
                      </div>
                    </div>
                    <div class="media-body">
                      <h3 class="media-heading">864,591 <small></small></h3>
                      <p class="text-muted">+267 circle last week</p>
                    </div>
                  </div><!-- /.media -->

                  <div class="media">
                    <div class="media-left">
                      <div class="media-object mr-1x">
                        <div class="easyPieChart" data-percent="82" data-size="52" data-line-width="3" data-line-cap="square" data-scale-color="false" data-track-color="#F5F7FA" data-bar-color="#4FC1E9">
                          <span class="percentage text-cyan"><i class="fa fa-twitter fa-lg"></i></span>
                        </div><!-- /.easyPieChart -->
                      </div>
                    </div>
                    <div class="media-body">
                      <h3 class="media-heading">638,546</h3>
                      <p class="text-muted">+267 followers last week</p>
                    </div>
                  </div><!-- /.media -->

                  <div class="media">
                    <div class="media-left">
                      <div class="media-object mr-1x">
                        <div class="easyPieChart" data-percent="64" data-size="52" data-line-width="3" data-line-cap="square" data-scale-color="false" data-track-color="#F5F7FA" data-bar-color="#5D9CEC">
                          <span class="percentage text-blue"><i class="fa fa-facebook fa-lg"></i></span>
                        </div><!-- /.easyPieChart -->
                      </div>
                    </div>
                    <div class="media-body">
                      <h3 class="media-heading">528,693</h3>
                      <p class="text-muted">+267 friends last week</p>
                    </div>
                  </div><!-- /.media -->

                  <div class="media">
                    <div class="media-left">
                      <div class="media-object mr-1x">
                        <div class="easyPieChart" data-percent="47" data-size="52" data-line-width="3" data-line-cap="square" data-scale-color="false" data-track-color="#F5F7FA" data-bar-color="#48CFAD">
                          <span class="percentage text-teal"><i class="fa fa-instagram fa-lg"></i></span>
                        </div><!-- /.easyPieChart -->
                      </div>
                    </div>
                    <div class="media-body">
                      <h3 class="media-heading">324,863</h3>
                      <p class="text-muted">+267 followers last week</p>
                    </div>
                  </div><!-- /.media -->

                </div><!-- /.panel-body -->
              </div><!-- /.panel -->
            </div><!-- /.cols -->

            <div class="clearfix"></div>

            <!-- INQUIRIES -->
            <div class="col-md-6">
              <div class="panel" data-fill-color="true">
                <div class="panel-body">
                  <p class="pull-right">
                    <a href="#" class="btn btn-danger btn-bordered btn-circle btn-xs">7</a>
                  </p>
                  <p class="title">Inquiries</p>
                  <div class="clearfix"></div>
                  <div data-toggle="slimScroll" style="height:390px" data-color="#CCD1D9" data-allow-page-scroll="true">
                    <a href="#" class="media">
                      <div class="media-left">
                        <i class="fa fa-envelope-o fa-2x text-muted"></i>
                      </div>
                      <div class="media-body">
                        <p class="media-heading"><strong>Stacie Skates</strong> Quaerat quibusdam beatae assumenda atque voluptatum dolores!</p>
                        <p class="text-muted"><small>Just Now</small></p>
                      </div>
                    </a><!-- /.media -->
                    <a href="#" class="media">
                      <div class="media-left">
                        <i class="icon-speech fa-2x text-muted"></i>
                      </div>
                      <div class="media-body">
                        <p class="media-heading"><strong>Charles Ewing</strong> Architecto, neque, suscipit? Quo quibusdam placeat beatae.</p>
                        <p class="text-muted"><small>About 4 minutes ago</small></p>
                      </div>
                    </a><!-- /.media -->
                    <a href="#" class="media">
                      <div class="media-left">
                        <i class="fa fa-envelope-o fa-2x text-muted"></i>
                      </div>
                      <div class="media-body">
                        <p class="media-heading"><strong>Alene Notter</strong> Consequatur dolorum maxime voluptatum laborum maiores omnis.</p>
                        <p class="text-muted"><small>26 minutes ago</small></p>
                      </div>
                    </a><!-- /.media -->
                    <a href="#" class="media">
                      <div class="media-left">
                        <i class="fa fa-envelope-o fa-2x text-muted"></i>
                      </div>
                      <div class="media-body">
                        <p class="media-heading"><strong>Mozell Firestone</strong> Fuga, minima temporibus porro. Ipsam, blanditiis expedita.</p>
                        <p class="text-muted"><small>1 hours ago</small></p>
                      </div>
                    </a><!-- /.media -->
                    <a href="#" class="media">
                      <div class="media-left">
                        <i class="icon-speech fa-2x text-muted"></i>
                      </div>
                      <div class="media-body">
                        <p class="media-heading"><strong>Apolonia Mcnevin</strong> Nobis numquam alias voluptatum. Repudiandae, dolores, qui.</p>
                        <p class="text-muted"><small>2 hours ago</small></p>
                      </div>
                    </a><!-- /.media -->
                    <a href="#" class="media">
                      <div class="media-left">
                        <i class="fa fa-envelope-o fa-2x text-muted"></i>
                      </div>
                      <div class="media-body">
                        <p class="media-heading"><strong>Cassondra Hittman</strong> Consequuntur cupiditate ex quas, quia doloremque, quisquam.</p>
                        <p class="text-muted"><small>2 hours ago</small></p>
                      </div>
                    </a><!-- /.media -->
                    <a href="#" class="media">
                      <div class="media-left">
                        <i class="icon-speech fa-2x text-muted"></i>
                      </div>
                      <div class="media-body">
                        <p class="media-heading"><strong>Princess Faerber</strong> Nam, ipsam explicabo, similique obcaecati facere atque.</p>
                        <p class="text-muted"><small>4 hours ago</small></p>
                      </div>
                    </a><!-- /.media -->
                  </div>
                </div><!-- /.panel-body -->
              </div><!-- /.panel -->
            </div><!-- /.cols -->

            <!-- SITE RESUME -->
            <!-- /.cols -->
          </div><!-- /.row -->
        </div><!-- /.content-body -->


        <!-- Template Setups -->
        <div class="modal fade" id="templateSetup">
          <div class="modal-dialog">
            <!-- modal-content -->
            <div class="modal-content"></div>
          <div><!-- /.modal-dialog -->
        </div><!-- /.templateSetup -->


      </div><!-- /.content -->
    </section><!-- /MAIN -->



    <!-- ============================================
    FOOTER SECTION
    =============================================== -->
    
    <jsp:include page="Footer.jsp"></jsp:include>
     <!-- ============================================
    END FOOTER SECTION
    =============================================== -->
    

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

  <!-- COMPONENTS -->
  <!-- Morris.js + Raphael -->
  <script src="<%=request.getContextPath() %>/scripts/morris.bundle.js"></script>
  <script src="<%=request.getContextPath() %>/scripts/jquery.sparkline.js"></script>
  <script src="<%=request.getContextPath() %>/scripts/jquery.easypiechart.js"></script>
  <!-- END COMPONENTS -->


  <!-- DUMMY: Use for demo -->
  <script src="<%=request.getContextPath() %>/scripts/demo/dashboard1-demo.js"></script>


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