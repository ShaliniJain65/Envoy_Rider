  <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,700,600,300" rel="stylesheet" type="text/css">

  <link rel="stylesheet" href="<%=request.getContextPath() %>/styles/bootstrap.css">

  <link rel="stylesheet" href="<%=request.getContextPath() %>/styles/dependencies.css">

  <link rel="stylesheet" href="<%=request.getContextPath() %>/styles/wrapkit.css">

  <link rel="stylesheet" href="<%=request.getContextPath() %>/styles/demo.css">
  
  <link rel="stylesheet" href="<%=request.getContextPath() %>/plugins/animate.css/animate.css">
  
  <link rel="stylesheet" href="<%=request.getContextPath() %>/styles/Custom_elements.css">
	
  <link href="https://fonts.googleapis.com/css?family=Titillium+Web" rel="stylesheet">
<!-- ============================================
    SIDEBAR SECTION
    =============================================== -->

 <aside class="sidebar" role="complementary">

      <!-- profile -->
      <div class="sidebar-block">
        <div class="media">
          <div class="media-left">
            <a href="page-profile.html">
              <span class="status dotted dotted-primary" data-toggle="tooltip" data-container="body" title="available"></span>
              <img class="media-object img-circle" src="<%=request.getContextPath()%>/images/dummy/uifaces14.jpg" alt="photo profile">
            </a>
          </div>
          <div class="media-body">
            <h4 class="media-heading">User</h4>
            <p class="text-muted">
              <small>Graphic Designer</small>
            </p>
          </div>
          
        </div>
      </div><!-- /.sidebar-block -->
      <!-- /profile -->

      <!-- /navigation -->
      <div class="nav-wrapper">
        <ul class="nav nav-stacked" role="navigation">
     
         <li class="nav-header" role="presentation">USER INTERFACES</li>
          
         	<li class="nav-item" role="presentation">
          		<a href="<%=request.getContextPath()%>/wp-content/index.jsp">
            	  <span class="nav-icon"><i class="fa fa-tachometer"></i></span>
              	  <span class="nav-text">Dashboard</span>
            	</a>
            
             </li>
           <li class="nav-item" role="presentation">
          <a href="#" data-toggle="nav-child">
              <span class="nav-icon"><i class="fa fa-check-square"></i></span>
              <span class="nav-text">Customers</span>
            </a>
            <ul class="nav nav-child level-1 nav-stacked nav-pills" role="menu">
              <li role="presentation"><a role="menuitem" tabindex="-1" href="<%=request.getContextPath()%>/wp-content/AddNewCustomer.jsp"><span class="nav-text">Add New Customer</span></a></li>
              <li role="presentation"><a role="menuitem" tabindex="-1" href="<%=request.getContextPath()%>/wp-content/UpdateCustomer.jsp"><span class="nav-text">List of All Customers</span></a></li>          
            </ul>
          </li>
          <li class="nav-item" role="presentation">
          <a href="#" data-toggle="nav-child">
              <span class="nav-icon"><i class="fa fa-check-square"></i></span>
              <span class="nav-text">Courier</span>
            </a>
            <ul class="nav nav-child level-1 nav-stacked nav-pills" role="menu">
              <li role="presentation"><a role="menuitem" tabindex="-1" href="<%=request.getContextPath()%>/wp-content/AddCourier.jsp"><span class="nav-text">Add Courier</span></a></li>
              <li role="presentation"><a role="menuitem" tabindex="-1" href="<%=request.getContextPath()%>/wp-content/UpdateCourier.jsp"><span class="nav-text">Update Courier</span></a></li>          
            </ul>
          </li>
           <li class="nav-item" role="presentation">
          <a href="#" data-toggle="nav-child">
              <span class="nav-icon"><i class="fa fa-check-square"></i></span>
              <span class="nav-text">Tracking</span>
            </a>
            <ul class="nav nav-child level-1 nav-stacked nav-pills" role="menu">
              <li role="presentation"><a role="menuitem" tabindex="-1" href="<%=request.getContextPath()%>/wp-content/AddTracking.jsp"><span class="nav-text">Add Tracking Details</span></a></li>
              <li role="presentation"><a role="menuitem" tabindex="-1" href="<%=request.getContextPath()%>/wp-content/UpdateTracking.jsp"><span class="nav-text">Update Tracking</span></a></li>        
            </ul>
          </li>
           <li class="nav-item" role="presentation">
          <a href="#" data-toggle="nav-child">
              <span class="nav-icon"><i class="fa fa-check-square"></i></span>
              <span class="nav-text">Offices</span>
            </a>
            <ul class="nav nav-child level-1 nav-stacked nav-pills" role="menu">
              <li role="presentation"><a role="menuitem" tabindex="-1" href="<%=request.getContextPath()%>/wp-content/AddOffice.jsp"><span class="nav-text">Add office</span></a></li>
              <li role="presentation"><a role="menuitem" tabindex="-1" href="<%=request.getContextPath()%>/wp-content/UpdateOffice.jsp"><span class="nav-text">Update Offices</span></a></li>          
            </ul>
          </li>
           <li class="nav-item" role="presentation">
          <a href="#" data-toggle="nav-child">
              <span class="nav-icon"><i class="fa fa-check-square"></i></span>
              <span class="nav-text">Transporters</span>
            </a>
            <ul class="nav nav-child level-1 nav-stacked nav-pills" role="menu">
              <li role="presentation"><a role="menuitem" tabindex="-1" href="<%=request.getContextPath()%>/wp-content/AddTransporter.jsp"><span class="nav-text">Add Transporters</span></a></li>
              <li role="presentation"><a role="menuitem" tabindex="-1" href="<%=request.getContextPath()%>/wp-content/UpdateTransporter.jsp"><span class="nav-text">Update Transporters</span></a></li>    
            </ul>
          </li>
           <li class="nav-item" role="presentation">
          <a href="#" data-toggle="nav-child">
              <span class="nav-icon"><i class="fa fa-check-square"></i></span>
              <span class="nav-text">Offers</span>
            </a>
            <ul class="nav nav-child level-1 nav-stacked nav-pills" role="menu">
              <li role="presentation"><a role="menuitem" tabindex="-1" href="<%=request.getContextPath()%>/wp-content/GiftCard.jsp"><span class="nav-text">Add Gift Card</span></a></li>
              <li role="presentation"><a role="menuitem" tabindex="-1" href="<%=request.getContextPath()%>/wp-content/UpdateGiftCard.jsp"><span class="nav-text">View Offers </span></a></li>          
            </ul>
          </li>
          
           <li class="nav-item" role="presentation">
          <a href="#" data-toggle="nav-child">
              <span class="nav-icon"><i class="fa fa-check-square"></i></span>
              <span class="nav-text">Gallery</span>
            </a>
            <ul class="nav nav-child level-1 nav-stacked nav-pills" role="menu">
              <li role="presentation"><a role="menuitem" tabindex="-1" href="Basicform.jsp"><span class="nav-text">Add Picture</span></a></li>
              <li role="presentation"><a role="menuitem" tabindex="-1" href="Basicform.jsp"><span class="nav-text">Update gallery</span></a></li>
		 </ul>
          </li>
          <li class="nav-item" role="presentation">
          <a href="<%= request.getContextPath() %>/wp-content/Slider_manager.jsp" >
              <span class="nav-icon"><i class="fa fa-check-square"></i></span>
              <span class="nav-text">Slider Manager</span>
            </a>
            
          </li>
          <li class="nav-item" role="presentation">
          <a href="<%= request.getContextPath() %>/wp-content/Pricing.jsp" >
              <span class="nav-icon"><i class="fa fa-check-square"></i></span>
              <span class="nav-text">Pricing</span>
            </a>
            
          </li>
           <li class="nav-item" role="presentation">
          <a href="#" data-toggle="nav-child">
              <span class="nav-icon"><i class="fa fa-check-square"></i></span>
              <span class="nav-text">Feedback</span>
            </a>
            <ul class="nav nav-child level-1 nav-stacked nav-pills" role="menu">
              <li role="presentation"><a role="menuitem" tabindex="-1" href="Basicform.jsp"><span class="nav-text">View Feedbacks</span></a></li>
              <li role="presentation"><a role="menuitem" tabindex="-1" href="Basicform.jsp"><span class="nav-text">Reply Feedback</span></a></li>
		 </ul>
          </li>
          
        </ul>
      </div>
    </aside>
    
    <!-- /.SIDEBAR -->
    
    <!-- ============================================
         END SIDEBAR SECTION
    =============================================== -->
   