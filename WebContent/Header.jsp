 <!-- ============================================
    HEADER SECTION
    =============================================== -->
    <!-- navigation -->
    <nav class="header navbar">
      <div class="container-fluid">
        <!-- use .pull-*, couse we need this float on any screen size -->
        <div class="pull-left">
          <a class="navbar-brand" href="index.html" role="logo" aria-label="Logo">
            <img class="logo" src="<%=request.getContextPath() %>/images/logo/brand-text-dark.png" alt="Brand">
          </a>
          <button data-sidebar="toggleVisible" class="btn btn-icon navbar-btn">
            <i class="fa fa-bars"></i>
            <i class="fa fa-caret-down"></i>
          </button>
        </div>

        <!-- use .pull-*, couse we need this float on any screen size -->
        <div class="pull-right" role="navigation">
          <a aria-label="Search" id="brandSearchNav" class="btn btn-icon navbar-btn" href="#"><i class="fa fa-search"></i></a>

          <div class="dropdown-ext">
            <a aria-label="notifications" class="btn btn-icon navbar-btn dropdown-toggle" data-toggle="dropdown" href="#">
              <i class="fa fa-inbox"></i>
              <span class="dotted dotted-danger"></span>
            </a>
            <div class="dropdown-menu dropdown-menu-ext dropdown-menu-right" role="menu">
              <div class="dd-head">
                <div class="dd-head-actions">
                  <a href="#" class="btn btn-xs btn-default">Compose</a>
                </div>
                <p><a href="#">Inbox (2)</a></p>
              </div>
              <div class="dd-body">
                <ul class="media-list">
                  <li class="media unread">
                    <a href="#">
                      <div class="media-left">
                        <img class="media-object img-circle" width="32" src="<%=request.getContextPath() %>/images/dummy/unknown-profile.jpg" alt="user">
                      </div>
                      <div class="media-body">
                        <p class="pull-right"><small>6m</small></p>
                        <h4 class="media-heading body-text">Stilearning</h4>
                        <p>Newest Themes & Templates - Et est, sed mattis, donec hac</p>
                      </div>
                    </a>
                    <span class="dd-actions">
                      <a href="#" title="mark as read" data-toggle="tooltip" data-container="body" data-placement="bottom"><i class="fa fa-circle-o"></i></a>
                    </span>
                  </li>
                  <li class="media">
                    <a href="#">
                      <div class="media-left">
                        <img class="media-object img-circle" width="32" src="<%=request.getContextPath() %>/images/dummy/uifaces7.jpg" alt="user">
                      </div>
                      <div class="media-body">
                        <p class="pull-right"><small>Today, 03:11am</small></p>
                        <h4 class="media-heading body-text">Eugene Barnett</h4>
                        <p>Service Update: added support for Angular - Sed ultricies nibh, in feugiat</p>
                      </div>
                    </a>
                    <span class="dd-actions">
                      <a href="#" title="mark as unread" data-toggle="tooltip" data-container="body" data-placement="bottom"><i class="fa fa-circle"></i></a>
                    </span>
                  </li>
                  <li class="media">
                    <a href="#">
                      <div class="media-left">
                        <img class="media-object img-circle" width="32" src="<%=request.getContextPath() %>/images/dummy/uifaces4.jpg" alt="user">
                      </div>
                      <div class="media-body">
                        <p class="pull-right"><small>Today, 02:47am</small></p>
                        <h4 class="media-heading body-text">bent10@stilearning.com</h4>
                        <p>Spread the Word & Earn! - Dapibus nec. Integer sed purus</p>
                      </div>
                    </a>
                    <span class="dd-actions">
                      <a href="#" title="mark as unread" data-toggle="tooltip" data-container="body" data-placement="bottom"><i class="fa fa-circle"></i></a>
                    </span>
                  </li>
                  <li class="media unread">
                    <a href="#">
                      <div class="media-left">
                        <img class="media-object img-circle" width="32" src="<%=request.getContextPath() %>/images/dummy/uifaces3.jpg" alt="user">
                      </div>
                      <div class="media-body">
                        <p class="pull-right"><small>Yesterday, 11:41pm</small></p>
                        <h4 class="media-heading body-text">David Lloyd</h4>
                        <p>Say thanks for your awesome works! - Viverra fermentum ac. Litora mauris elit</p>
                      </div>
                    </a>
                    <span class="dd-actions">
                      <a href="#" title="mark as read" data-toggle="tooltip" data-container="body" data-placement="bottom"><i class="fa fa-circle"></i></a>
                    </span>
                  </li>
                  <li class="media">
                    <a href="#">
                      <div class="media-left">
                        <img class="media-object img-circle" width="32" src="<%=request.getContextPath() %>/images/dummy/unknown-profile.jpg" alt="user">
                      </div>
                      <div class="media-body">
                        <p class="pull-right"><small>Yesterday, 10:04pm</small></p>
                        <h4 class="media-heading body-text">Dribbble</h4>
                        <p>Design brief from Apple - Quis in nonummy. Ut augue, proident habitant</p>
                      </div>
                    </a>
                    <span class="dd-actions">
                      <a href="#" title="mark as unread" data-toggle="tooltip" data-container="body" data-placement="bottom"><i class="fa fa-circle-o"></i></a>
                    </span>
                  </li>
                  <li class="media">
                    <a href="#">
                      <div class="media-left">
                        <img class="media-object img-circle" width="32" src="<%=request.getContextPath() %>/images/dummy/uifaces16.jpg" alt="user">
                      </div>
                      <div class="media-body">
                        <p class="pull-right"><small>Yesterday, 08:55pm</small></p>
                        <h4 class="media-heading body-text">Olivia Gonzales</h4>
                        <p>Updating some of the designs! - Commodo non ac, sem netus adipiscing</p>
                      </div>
                    </a>
                    <span class="dd-actions">
                      <a href="#" title="mark as unread" data-toggle="tooltip" data-container="body" data-placement="bottom"><i class="fa fa-circle"></i></a>
                    </span>
                  </li>
                  <li class="media">
                    <a href="#">
                      <div class="media-left">
                        <img class="media-object img-circle" width="32" src="<%=request.getContextPath() %>/images/dummy/uifaces20.jpg" alt="user">
                      </div>
                      <div class="media-body">
                        <p class="pull-right"><small>Yesterday, 03:57pm</small></p>
                        <h4 class="media-heading body-text">Marco Auer</h4>
                        <p>Request custom designs! - Adipiscing pellentesque cum, proin luctus</p>
                      </div>
                    </a>
                    <span class="dd-actions">
                      <a href="#" title="mark as unread" data-toggle="tooltip" data-container="body" data-placement="bottom"><i class="fa fa-circle"></i></a>
                    </span>
                  </li>
                </ul>
              </div><!-- /.dd-body -->
            </div><!-- /.dropdown-menu -->
          </div><!-- /.dropdown -->

          <div class="dropdown">
            <a aria-label="More" class="btn btn-icon navbar-btn dropdown-toggle" data-toggle="dropdown" href="#">
              <i class="fa fa-ellipsis-v"></i>
            </a>
            <ul class="dropdown-menu dropdown-menu-right" role="menu">
              <li role="presentation"><a role="menuitem" tabindex="-1" href="<%=request.getContextPath() %>/web-content/Profile.jsp"><span class="pull-right"><i class="fa fa-user text-muted"></i></span>Profile</a></li>
              <li role="presentation"><a role="menuitem" tabindex="-1" href="<%=request.getContextPath() %>/page-timeline.html"><span class="pull-right"><i class="fa fa-clock-o text-muted"></i></span>Timeline</a></li>
              <li class="divider"></li>
              <li role="presentation"><a role="menuitem" tabindex="-1" href="page-help.html"><span class="pull-right"><i class="fa fa-question-circle text-muted"></i></span>Help</a></li>
              <li class="divider"></li>
              <li role="presentation"><a role="menuitem" tabindex="-1" href="<%=request.getContextPath() %>/web-content/Locked.jsp"><span class="pull-right"><i class="fa fa-lock text-muted"></i></span>Locked</a></li>
              <li role="presentation"><a role="menuitem" tabindex="-1" href="<%=request.getContextPath() %>/web-content/Login.jsp"><span class="pull-right"><i class="fa fa-sign-out text-muted"></i></span> Sign out</a></li>
            </ul>
          </div><!-- /.dropdown -->
        </div><!-- /navigation -->

        <div class="brand-search" id="brandSearchFrm">
          <form action="#" role="search">
            <a href="#" class="search-close">&times;</a>
            <input class="search-field" placeholder="Search for everything you want..." tabindex="-1">
          </form>
        </div><!-- /.brand-search -->
      </div><!-- /.container-fluid -->
    </nav><!-- /navigation -->
     <!-- ============================================
          END HEADER SECTION
    =============================================== -->
