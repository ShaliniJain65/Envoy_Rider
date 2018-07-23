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
            <li><a href="#">Forms</a></li>
            <li class="active">Basic</li>
          </ul>
        </div><!-- /.content-bar -->


        <div class="content-body">
          <div class="row">
            <div class="col-md-6">
              <div class="panel" data-fill-color="true">
                <div class="panel-heading">
                  <h3 class="panel-title"><i class="icon-note fa-fw"></i> Input Fields</h3>
                </div><!-- /panel-heading -->

                <div class="panel-body">
                  <form class="form-bordered" role="form">
                    <div class="form-group">
                      <label for="input">User Name</label>
                      <input class="form-control" id="input" placeholder="enter user name">
                    </div><!-- /form-group -->

                    <div class="form-group">
                      <label for="inputPass">Password</label>
                      <input type="password" class="form-control" id="inputPass" placeholder="enter your password">
                      <span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span>
                    </div><!-- /form-group -->

                    <div class="form-group">
                      <label for="inputFile">File Input</label>
                      <input type="file" class="form-control" id="inputFile">
                    </div><!-- /form-group -->

                    <div class="form-group">
                      <label for="inputSelect">City</label>
                      <select class="form-control" id="inputSelect">
                        <option>- Select One -</option>
                        <option>Ahmedabad</option>
                        <option>Surat</option>
                        <option>Gandhinagar</option>
                        <option>Rajkot</option>
                        <option>Surat</option>
                      </select>
                    </div><!-- /form-group -->

                   <!-- <div class="form-group">
                      <label for="inputMultiple">Multiple</label>
                      <select class="form-control" id="inputMultiple" multiple="multiple">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                      </select>-->
                    </div><!-- /form-group -->

                   <!--  <div class="form-group">
                      <label>Static control</label>
                      <p class="form-control-static">email@example.com</p>
                    </div>/form-group -->

                    <div class="form-group">
                      <label>Gender</label>
                      <div class="radio">
                        <label><input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="checked"> Male</label>
                      </div>
                      <div class="radio">
                        <label><input type="radio" name="optionsRadios" id="optionsRadios2" value="option2"> Female</label>
                      </div>
                    </div><!-- /form-group -->

                    <div class="form-group">
                      <label>Checkboxes</label>
                      <div class="checkbox">
                        <label><input type="checkbox" name="checkboxes" value="1" checked="checked"> Option one is this and that</label>
                      </div>
                      <div class="checkbox">
                        <label><input type="checkbox" name="checkboxes" value="2"> Be sure to include why it's great</label>
                      </div>
                    </div><!-- /form-group -->

                   <!--   <div class="form-group">
                      <label>Inline checkboxes</label><br>
                      <label class="checkbox-inline">
                        <input type="checkbox" id="inlineCheckbox1" value="option1" checked="checked"> @bent
                      </label>
                      <label class="checkbox-inline">
                        <input type="checkbox" id="inlineCheckbox2" value="option2"> @Iin
                      </label>
                      <label class="checkbox-inline">
                        <input type="checkbox" id="inlineCheckbox3" value="option3"> @stilearningTwit
                      </label>-->
                    </div><!-- /form-group -->

                    <div class="form-group">
                      <label for="inputTextarea">Textarea</label>
                      <textarea rows="3" class="form-control" id="inputTextarea" placeholder="Placeholder"></textarea>
                    </div><!-- /form-group -->

                    <div class="form-group">
                      <button type="submit" class="btn btn-default">Submit Form</button>
                    </div><!-- /form-group -->
                  </form><!-- /form -->
                </div><!-- /panel-body -->
              </div><!-- /panel-basicform -->
              


              <!-- Control states -->
              <div class="panel" data-fill-color="true">
                <div class="panel-heading">
                  <h3 class="panel-title"><i class="icon-flag fa-fw"></i> Control states</h3>
                </div><!-- /panel-heading -->

                <div class="panel-body">
                  <form role="form" class="form-bordered">
                    <div class="form-group">
                      <label for="disabledInput">Disabled input</label>
                      <input class="form-control" id="disabledInput" placeholder="Disabled input here..." disabled="disabled">
                    </div><!-- /form-group -->

                    <div class="form-group">
                      <label for="disabledSelect">Disabled select menu</label>
                      <select id="disabledSelect" class="form-control text-muted" disabled="disabled">
                        <option>Disabled select</option>
                      </select>
                      <div class="radio">
                        <label><input type="radio" disabled="disabled"> <span class="text-muted">Can't check this</span></label>
                      </div>
                      <div class="checkbox">
                        <label><input type="checkbox" disabled="disabled"> <span class="text-muted">Can't check this</span></label>
                      </div>
                    </div><!-- /form-group -->

                    <div class="form-group">
                      <label>Disable custom select</label>
                      <label class="select disabled">
                        <select disabled="disabled">
                          <option>- Select One -</option>
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                        </select>
                      </label>
                      <div class="nice-radio">
                        <input type="radio" id="disabledNiceRadio" checked="checked" disabled="disabled">
                        <label for="disabledNiceRadio">Disable custom radio</label>
                      </div>
                      <div class="nice-checkbox">
                        <input type="checkbox" id="disabledNiceCheck" checked="checked" disabled="disabled">
                        <label for="disabledNiceCheck">Disable custom checkbox</label>
                      </div>
                    </div><!-- /form-group -->

                    <div class="form-group">
                      <label>Disable Switcher</label>
                      <div class="form-group">
                        <input type="checkbox" class="js-switch" checked="checked" disabled="disabled">
                        <input type="checkbox" class="js-switch" data-color="#5D9CEC" checked="checked" disabled="disabled">
                        <input type="checkbox" class="js-switch" data-color="#FFCE54" checked="checked" disabled="disabled">
                        <input type="checkbox" class="js-switch" data-color="#ED5565" checked="checked" disabled="disabled">
                      </div><!-- /form-group -->
                    </div><!-- /form-group -->
                  </form></div><!-- /panel-body -->

                  <div class="panel-body">
                    <h3>Validation states <small>Showcase with tooltip messeges</small></h3>
                    <div class="form-group has-success">
                      <label class="control-label" for="inputSuccess">Input with success</label>
                      <input class="form-control" id="inputSuccess" rel="tooltip" data-placement="right" data-container="body" data-context="success" title="Some text success here..." data-trigger="focus">
                    </div><!-- /form-group -->

                    <div class="form-group has-warning">
                      <label class="control-label" for="inputWarning">Input with warning</label>
                      <input class="form-control" id="inputWarning" rel="tooltip" data-placement="right" data-container="body" data-context="warning" title="Some text warning here..." data-trigger="focus">
                    </div><!-- /form-group -->
                    <div class="form-group has-error">
                      <label class="control-label" for="inputError">Input with error</label>
                      <input class="form-control" id="inputError" rel="tooltip" data-placement="right" data-container="body" data-context="danger" title="Some text error here..." data-trigger="focus">
                    </div><!-- /form-group -->

                    <div class="form-group has-success">
                      <label class="control-label" for="addonSucces">Success with addon</label>
                      <div class="input-group">
                        <span class="input-group-addon" rel="tooltip" data-context="success" title="Some text success here..." data-trigger="focus" data-trigger-input="#inputsuccesState"><i class="icon-check"></i></span>
                        <input class="form-control" name="addonSucces" id="inputsuccesState">
                      </div><!-- /input-group -->
                    </div><!-- /form-group -->

                    <div class="form-group has-warning">
                      <label class="control-label" for="addonWarning">Warning with addon</label>
                      <div class="input-group">
                        <span class="input-group-addon" rel="tooltip" data-context="warning" title="Some text warning here..." data-trigger="focus" data-trigger-input="#inputwarningtate"><i class="icon-info"></i></span>
                        <input class="form-control" name="addonWarning" id="inputwarningtate">
                      </div><!-- /input-group -->
                    </div><!-- /form-group -->

                    <div class="form-group has-error">
                      <label class="control-label" for="addonError">Error with addon</label>
                      <div class="input-group">
                        <span class="input-group-addon" rel="tooltip" data-context="danger" title="Some text error here..." data-trigger="focus" data-trigger-input="#inputerrortate"><i class="icon-close"></i></span>
                        <input class="form-control" name="addonError" id="inputerrortate">
                      </div><!-- /input-group -->
                    </div><!-- /form-group -->

                    <div class="form-group has-success has-feedback">
                      <label class="control-label" for="iconsSuccess">Success with icons</label>
                      <input class="form-control" id="iconsSuccess">
                      <span class="icon-check form-control-feedback" rel="tooltip" data-container="body" data-context="success" title="Some text success here..." data-trigger="focus" data-trigger-input="#iconsSuccess"></span>
                    </div><!-- /form-group -->

                    <div class="form-group has-warning has-feedback">
                      <label class="control-label" for="iconsWarning">Warning with icons</label>
                      <input class="form-control" id="iconsWarning">
                      <span class="icon-info form-control-feedback" rel="tooltip" data-container="body" data-context="warning" title="Some text warning here..." data-trigger="focus" data-trigger-input="#iconsWarning"></span>
                    </div><!-- /form-group -->

                    <div class="form-group has-error has-feedback">
                      <label class="control-label" for="iconsError">Error with icons</label>
                      <input class="form-control" id="iconsError">
                      <span class="icon-close form-control-feedback" rel="tooltip" data-container="body" data-context="danger" title="Some text error here..." data-trigger="focus" data-trigger-input="#iconsError"></span>
                    </div><!-- /form-group -->
                  <!-- /form -->
                </div><!-- /panel-body -->
              </div><!-- /panel-ctrlstate -->

            </div><!-- /.cols -->



            <div class="col-md-6">
              <div class="panel" data-fill-color="true">
                <div class="panel-heading">
                  <h3 class="panel-title"><i class="icon-chemistry fa-fw"></i> Replaced default style</h3>
                </div><!-- /panel-heading -->

                <div class="panel-body">
                  <form role="form" class="form-bordered">
                    <div class="form-group">
                      <label>Selects</label>
                      <label class="select">
                        <select>
                          <option>- Select One -</option>
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                        </select>
                      </label>
                    </div><!-- /form-group -->

                    <div class="form-group">
                      <label>Optional style <code>.select-o</code></label>
                      <label class="select select-o">
                        <select>
                          <option>- Select One -</option>
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                        </select>
                      </label>
                    </div><!-- /form-group -->

                    <div class="form-group">
                      <label>Radio <code>.nice-radio</code></label>
                      <div class="nice-radio">
                        <input type="radio" name="niceRadio" id="niceRadio1" checked="checked">
                        <label for="niceRadio1">Option one is this and that—be sure to include why it's great</label>
                      </div><!--/nice-radio-->
                      <div class="nice-radio">
                        <input type="radio" name="niceRadio" id="niceRadio2">
                        <label for="niceRadio2">Option two can be something else and selecting it will deselect option one</label>
                      </div><!--/nice-radio-->
                    </div><!--/form-group-->

                    <div class="form-group">
                      <label>Optional style & Inline <code>.radio-o</code></label><br>
                      <div class="nice-radio nice-radio-inline">
                        <input class="radio-o" type="radio" name="niceRadioAlt" id="niceRadioAlt1" checked="checked">
                        <label for="niceRadioAlt1">@bent</label>
                      </div><!--/nice-radio-->
                      <div class="nice-radio nice-radio-inline">
                        <input class="radio-o" type="radio" name="niceRadioAlt" id="niceRadioAlt2">
                        <label for="niceRadioAlt2">@iin</label>
                      </div><!--/nice-radio-->
                      <div class="nice-radio nice-radio-inline">
                        <input class="radio-o" type="radio" name="niceRadioAlt" id="niceRadioAlt3">
                        <label for="niceRadioAlt3">@wrapkit</label>
                      </div><!--/nice-radio-->
                    </div><!--/form-group-->

                    <div class="form-group">
                      <label>Checkbox <code>.nice-checkbox</code></label>
                      <div class="nice-checkbox">
                        <input type="checkbox" name="niceCheck" id="niceCheck1" checked="checked">
                        <label for="niceCheck1">Option one is this and that</label>
                      </div><!--/nice-checkbox-->
                      <div class="nice-checkbox">
                        <input type="checkbox" name="niceCheck" id="niceCheck2">
                        <label for="niceCheck2">Be sure to include why it's great</label>
                      </div><!--/nice-checkbox-->
                    </div><!--/form-group-->

                    <div class="form-group">
                      <label>Optional style & Inline <code>.checkbox-o</code></label><br>
                      <div class="nice-checkbox nice-checkbox-inline">
                        <input class="checkbox-o" type="checkbox" name="niceCheckAlt" id="niceCheckAlt1" checked="checked">
                        <label for="niceCheckAlt1">@bent</label>
                      </div><!--/nice-checkbox-->
                      <div class="nice-checkbox nice-checkbox-inline">
                        <input class="checkbox-o" type="checkbox" name="niceCheckAlt" id="niceCheckAlt2">
                        <label for="niceCheckAlt2">@iin</label>
                      </div><!--/nice-checkbox-->
                      <div class="nice-checkbox nice-checkbox-inline">
                        <input class="checkbox-o" type="checkbox" name="niceCheckAlt" id="niceCheckAlt3">
                        <label for="niceCheckAlt3">@wrapkit</label>
                      </div><!--/nice-checkbox-->
                    </div><!--/form-group-->

                    <div class="form-group">
                      <label>Swicher</label>
                      <div class="form-group">
                        <input type="checkbox" class="js-switch" checked="checked">
                        <input type="checkbox" class="js-switch" data-color="#5D9CEC" checked="checked">
                        <input type="checkbox" class="js-switch" data-color="#FFCE54" checked="checked">
                        <input type="checkbox" class="js-switch" data-color="#ED5565" checked="checked">
                      </div><!-- /form-group -->
                    </div><!-- /form-group -->

                    <div class="form-group">
                      <label>Optional style</label>
                      <div class="form-group">
                        <input type="checkbox" class="js-switch" data-class-name="switchery switchery-alt" checked="checked">
                        <input type="checkbox" class="js-switch" data-class-name="switchery switchery-alt" data-color="#5D9CEC" checked="checked">
                        <input type="checkbox" class="js-switch" data-class-name="switchery switchery-alt" data-color="#FFCE54" checked="checked">
                        <input type="checkbox" class="js-switch" data-class-name="switchery switchery-alt" data-color="#ED5565" checked="checked">
                      </div><!-- /form-group -->
                    </div><!-- /form-group -->

                    <div class="form-group">
                      <label for="inputAutogrow">Autogrow</label>
                      <textarea class="form-control autogrow" id="inputAutogrow" rows="7" placeholder="Type any line and I will auto grow"></textarea>
                    </div><!-- /form-group -->
                  </form><!-- /form -->
                </div><!-- /panel-body -->
              </div><!-- /panel-rpcdefault -->



              <!-- Input groups -->
              <div class="panel" data-fill-color="true">
                <div class="panel-heading">
                  <h3 class="panel-title"><i class="icon-layers fa-fw"></i> Input groups</h3>
                </div><!-- /panel-heading -->

                <div class="panel-body">
                  <form role="form" class="form-bordered">
                    <div class="form-group">
                      <label for="leftaddon">Left Addon</label>
                      <div class="input-group">
                        <span class="input-group-addon">http://</span>
                        <input class="form-control" id="leftaddon" placeholder="domain.com">
                      </div><!-- /input-group -->
                      <br>
                      <div class="input-group input-group-in">
                        <span class="input-group-addon"><i class="icon-users"></i></span>
                        <input class="form-control" placeholder="Search contact">
                      </div><!-- /input-group-in -->
                      <p class="help-block"><small>Just add <code>.input-group-in</code> to any input group and you get a beautifull minimalis style.</small></p>
                    </div><!-- /form-group -->

                    <div class="form-group">
                      <label for="rightaddon">Right Addon</label>
                      <div class="input-group">
                        <input class="form-control" id="rightaddon" placeholder="find domain">
                        <span class="input-group-addon">.com</span>
                      </div><!-- /input-group -->
                      <br>
                      <div class="input-group input-group-in">
                        <input class="form-control" placeholder="Simulate loader">
                        <span class="input-group-addon"><i class="icon-refresh fa-spin"></i></span>
                      </div><!-- /input-group-in -->
                    </div><!-- /form-group -->

                    <div class="form-group">
                      <label for="bothaddon">Both Addon</label>
                      <div class="input-group input-group-in">
                        <span class="input-group-addon"><i class="icon-basket"></i></span>
                        <input class="form-control" id="bothaddon" value="$219.00">
                        <span class="input-group-btn">
                          <button class="btn btn-default" type="button">Checkout</button>
                        </span>
                      </div><!-- /input-group -->
                    </div><!-- /form-group -->

                    <div class="form-group">
                      <label for="checkaddon">Checkbox addon</label>
                      <div class="input-group">
                        <span class="input-group-addon">
                          <span class="nice-checkbox">
                            <input class="checkbox-o" type="checkbox" name="addoncheckbox" id="addoncheckbox1" checked="checked">
                            <label for="addoncheckbox1"></label>
                          </span>
                        </span>
                        <input class="form-control" id="checkaddon">
                      </div><!-- /input-group -->
                      <br>
                      <div class="input-group input-group-in">
                        <span class="input-group-addon">
                          <span class="nice-checkbox">
                            <input class="checkbox-o" type="checkbox" name="addoncheckbox" id="addoncheckbox2">
                            <label for="addoncheckbox2"></label>
                          </span>
                        </span>
                        <input class="form-control" id="checkaddon">
                      </div><!-- /input-group-in -->
                    </div><!-- /form-group -->

                    <div class="form-group">
                      <label for="radioaddon">Radio addon</label>
                      <div class="input-group">
                        <span class="input-group-addon">
                          <span class="nice-radio text-primary">
                            <input type="radio" name="addonradio" id="addonradio1" checked="checked">
                            <label for="addonradio1"></label>
                          </span>
                        </span>
                        <input class="form-control" id="radioaddon">
                      </div><!-- /input-group -->
                      <br>
                      <div class="input-group input-group-in">
                        <span class="input-group-addon">
                          <span class="nice-radio text-primary">
                            <input type="radio" name="addonradio" id="addonradio2">
                            <label for="addonradio2"></label>
                          </span>
                        </span>
                        <input class="form-control" id="radioaddon">
                      </div><!-- /input-group-in -->
                    </div><!-- /form-group -->

                    <div class="form-group">
                      <label for="btnaddon">Button addon</label>
                      <div class="input-group">
                        <span class="input-group-btn">
                          <button class="btn btn-default" type="button"><i class="icon-basket fa-fw"></i> Checkout</button>
                        </span>
                        <input class="form-control" value="219.00" id="btnaddon">
                      </div><!-- /input-group -->
                      <br>
                      <div class="input-group input-group-in">
                        <span class="input-group-btn">
                          <button class="btn btn-default" type="button"><i class="icon-basket fa-fw"></i> Checkout</button>
                        </span>
                        <input class="form-control" value="219.00">
                      </div><!-- /input-group-in -->
                    </div><!-- /form-group -->

                    <div class="form-group">
                      <label for="btnaddonright">Right button</label>
                      <div class="input-group">
                        <input class="form-control" id="btnaddonright" placeholder="Type something...">
                        <span class="input-group-btn dropdown">
                          <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-filter fa-fw"></i>Filters <i class="fa fa-angle-down"></i></button>
                          <ul class="dropdown-menu dropdown-menu-right">
                            <li><a href="#"><span class="fa fa-circle-o fa-fw text-danger"></span> Important</a></li>
                            <li><a href="#"><span class="fa fa-circle-o fa-fw text-info"></span> News</a></li>
                            <li><a href="#"><span class="fa fa-circle-o fa-fw text-success"></span> Interesting</a></li>
                            <li><a href="#"><span class="fa fa-circle-o fa-fw text-warning"></span> Off Topic</a></li>
                          </ul>
                        </span>
                      </div><!-- /input-group -->
                      <br>
                      <div class="input-group input-group-in">
                        <input class="form-control" placeholder="Type something...">
                        <span class="input-group-btn dropdown">
                          <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-filter fa-fw"></i>Filters <i class="fa fa-angle-down"></i></button>
                          <ul class="dropdown-menu dropdown-menu-right">
                            <li><a href="#"><span class="fa fa-circle-o fa-fw text-danger"></span> Important</a></li>
                            <li><a href="#"><span class="fa fa-circle-o fa-fw text-info"></span> News</a></li>
                            <li><a href="#"><span class="fa fa-circle-o fa-fw text-success"></span> Interesting</a></li>
                            <li><a href="#"><span class="fa fa-circle-o fa-fw text-warning"></span> Off Topic</a></li>
                          </ul>
                        </span>
                      </div><!-- /input-group-in -->
                    </div><!-- /form-group -->

                    <div class="form-group">
                      <label for="btnaddonboth">Both button</label>
                      <div class="input-group">
                        <span class="input-group-btn dropdown">
                          <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">All <i class="fa fa-angle-down"></i></button>
                          <ul class="dropdown-menu">
                            <li><a href="#"><span class="fa fa-circle-o fa-fw text-danger"></span> Important</a></li>
                            <li><a href="#"><span class="fa fa-circle-o fa-fw text-info"></span> News</a></li>
                            <li><a href="#"><span class="fa fa-circle-o fa-fw text-success"></span> Interesting</a></li>
                            <li><a href="#"><span class="fa fa-circle-o fa-fw text-warning"></span> Off Topic</a></li>
                          </ul>
                        </span>
                        <input class="form-control" placeholder="Search..." id="btnaddonboth">
                        <span class="input-group-btn">
                          <button class="btn btn-default" type="button">Search</button>
                        </span>
                      </div><!-- /input-group -->
                      <br>
                      <div class="input-group input-group-in">
                        <span class="input-group-btn dropdown">
                          <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">All <i class="fa fa-angle-down"></i></button>
                          <ul class="dropdown-menu">
                            <li><a href="#"><span class="fa fa-circle-o fa-fw text-danger"></span> Important</a></li>
                            <li><a href="#"><span class="fa fa-circle-o fa-fw text-info"></span> News</a></li>
                            <li><a href="#"><span class="fa fa-circle-o fa-fw text-success"></span> Interesting</a></li>
                            <li><a href="#"><span class="fa fa-circle-o fa-fw text-warning"></span> Off Topic</a></li>
                          </ul>
                        </span>
                        <input class="form-control" placeholder="Search..." id="btnaddonboth">
                        <span class="input-group-btn">
                          <button class="btn btn-default" type="button">Search</button>
                        </span>
                      </div><!-- /input-group-in -->
                    </div><!-- /form-group -->

                    <div class="form-group">
                      <label for="segmentaddon">Segmented button</label>
                      <div class="input-group">
                        <input class="form-control" placeholder="Search..." id="segmentaddon">
                        <div class="input-group-btn">
                          <button class="btn btn-default" type="button">Search</button>
                          <div class="btn-group dropdown">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"><i class="fa fa-filter"></i></button>
                            <ul class="dropdown-menu dropdown-menu-right" role="menu">
                              <li><a href="#"><span class="fa fa-circle-o fa-fw text-danger"></span> Important</a></li>
                              <li><a href="#"><span class="fa fa-circle-o fa-fw text-info"></span> News</a></li>
                              <li><a href="#"><span class="fa fa-circle-o fa-fw text-success"></span> Interesting</a></li>
                              <li><a href="#"><span class="fa fa-circle-o fa-fw text-warning"></span> Off Topic</a></li>
                            </ul>
                          </div>
                        </div>
                      </div><!-- /input-group -->
                      <br>
                      <div class="input-group input-group-in">
                        <input id="trigger-popover-input" class="form-control" placeholder="Please focus me...">
                        <div class="input-group-btn">
                          <button class="btn btn-default" type="button" rel="popover" data-placement="top" data-container="body" data-trigger="click focus" data-trigger-input="#trigger-popover-input" title="Input information" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
                            <i class="icon-info"></i>
                          </button>
                          <div class="btn-group dropdown">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"><i class="icon-cloud-download fa-fw"></i> Download</button>
                            <ul class="dropdown-menu dropdown-menu-right" role="menu">
                              <li class="dropdown-header">Download as...</li>
                              <li><a href="#"><i class="fa fa-file-text-o fa-fw"></i> Plain text</a></li>
                              <li><a href="#"><i class="fa fa-file-excel-o fa-fw"></i> Excel</a></li>
                              <li><a href="#"><i class="fa fa-file-pdf-o fa-fw"></i> PDF</a></li>
                              <li class="divider"></li>
                              <li><a href="#"><i class="fa fa-file-zip-o fa-fw"></i> Zip</a></li>
                            </ul>
                          </div>
                        </div>
                      </div><!-- /input-group-in -->
                    </div><!-- /form-group -->
                    <div class="form-group">
                      <label for="segmentaddon">With textarea</label>
                      <div class="input-group input-group-in">
                        <div class="input-group-btn input-group-textarea" rel="tooltip" title="Some text helper goes here" data-trigger="click" data-trigger-input="#tooltip-trigger-input">
                          <button type="button" class="btn btn-default"><i class="fa fa-terminal"></i></button>
                        </div>
                        <textarea id="tooltip-trigger-input" class="form-control autogrow" rows="8" placeholder="Please focus me..."></textarea>
                      </div><!-- /input-group-in -->
                    </div><!-- /form-group -->
                  </form><!-- /form -->
                </div><!-- /panel-body -->
              </div><!-- /panel-inpgroup -->

            </div><!-- /.cols -->

            <div class="col-md-12">
              <div class="panel" data-fill-color="true">
                <div class="panel-heading">
                  <h3 class="panel-title">Control Sizing</h3>
                </div>
                <div class="panel-body">
                  <form role="form" class="form-horizontal form-bordered">
                    <div class="form-group">
                      <label class="col-sm-3 control-label" for="inputSizing">Input sizing</label>
                      <div class="col-md-5">
                        <input id="inputSizing" class="form-control input-lg" placeholder=".input-lg"> <br>
                        <input class="form-control" placeholder="Default input"> <br>
                        <input class="form-control input-sm" placeholder=".input-sm"> <br>
                      </div>
                    </div><!-- /form-group -->

                    <div class="form-group">
                      <label class="col-sm-3 control-label" for="selectSizing">Select sizing</label>
                      <div class="col-md-5">
                        <select id="selectSizing" class="form-control input-lg">
                          <option>.input-lg</option>
                        </select> <br>
                        <select class="form-control">
                          <option>Default size</option>
                        </select> <br>
                        <select class="form-control input-sm">
                          <option>.input-sm</option>
                        </select>
                      </div>
                    </div><!-- /form-group -->

                    <div class="form-group">
                      <label class="col-sm-3 control-label">Custom select sizing</label>
                      <div class="col-md-5">
                        <label class="select select-lg">
                          <select>
                            <option>.select-lg</option>
                          </select>
                        </label> <br>
                        <label class="select">
                          <select>
                            <option>Default size</option>
                          </select>
                        </label> <br>
                        <label class="select select-sm">
                          <select>
                            <option>.select-sm</option>
                          </select>
                        </label>
                      </div>
                    </div><!-- /form-group -->

                    <div class="form-group">
                      <p class="text-muted"><strong>Column sizing</strong></p>
                      <div class="row">
                        <div class="col-md-12 mb-2x">
                          <input class="form-control" placeholder=".col-md-12">
                        </div>
                      </div><!-- /row -->
                      <br>
                      <div class="row">
                        <div class="col-md-6 mb-2x">
                          <input class="form-control" placeholder=".col-md-6">
                        </div>
                        <div class="col-md-6 mb-2x">
                          <input class="form-control" placeholder=".col-md-6">
                        </div>
                      </div><!-- /row -->
                      <br>
                      <div class="row">
                        <div class="col-md-4 mb-2x">
                          <input class="form-control" placeholder=".col-md-4">
                        </div>
                        <div class="col-md-4 mb-2x">
                          <input class="form-control" placeholder=".col-md-4">
                        </div>
                        <div class="col-md-4 mb-2x">
                          <input class="form-control" placeholder=".col-md-4">
                        </div>
                      </div><!-- /row -->
                      <br>
                      <div class="row">
                        <div class="col-md-3 mb-2x">
                          <input class="form-control" placeholder=".col-md-3">
                        </div>
                        <div class="col-md-3 mb-2x">
                          <input class="form-control" placeholder=".col-md-3">
                        </div>
                        <div class="col-md-3 mb-2x">
                          <input class="form-control" placeholder=".col-md-3">
                        </div>
                        <div class="col-md-3 mb-2x">
                          <input class="form-control" placeholder=".col-md-3">
                        </div>
                      </div><!-- /row -->
                      <br>
                      <div class="row">
                        <div class="col-md-2 mb-2x">
                          <input class="form-control" placeholder=".col-md-2">
                        </div>
                        <div class="col-md-2 mb-2x">
                          <input class="form-control" placeholder=".col-md-2">
                        </div>
                        <div class="col-md-2 mb-2x">
                          <input class="form-control" placeholder=".col-md-2">
                        </div>
                        <div class="col-md-2 mb-2x">
                          <input class="form-control" placeholder=".col-md-2">
                        </div>
                        <div class="col-md-2 mb-2x">
                          <input class="form-control" placeholder=".col-md-2">
                        </div>
                        <div class="col-md-2 mb-2x">
                          <input class="form-control" placeholder=".col-md-2">
                        </div>
                      </div><!-- /cols -->
                    </div><!-- /form-group -->
                  </form><!-- /form -->
                </div>
              </div><!-- /.panel -->
            </div><!-- /.cols -->
          </div><!-- /.row -->

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