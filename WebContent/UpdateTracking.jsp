<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="com.model.AddTracking" %>
<%@ page import="com.dao.Dao" %>    
<%@ page import="java.util.*" %>   
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
  
  <link rel="stylesheet" href="<%=request.getContextPath() %>/plugins/animate.css/animate.css">
  
  <link rel="stylesheet" href="<%=request.getContextPath() %>/styles/Custom_elements.css">
	
  <link href="https://fonts.googleapis.com/css?family=Titillium+Web" rel="stylesheet">	
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
            <li><a href="#">Manage Tracking</a></li>
            <li class="active">Add</li>
          </ul>
        </div><!-- /.content-bar -->
 			<div class="content-body">
	          <div class="row">
	            <div class="col-sm-12">
	              <!-- /panel-basicform -->
	                <div class="panel adjust-panel panel-white" style="padding: 20px;margin-top: 15px">
	                	<div class="panel-heading">
	                		<h3 class="text-left"><i class="fa fa-pencil-square"></i> Update <span class="text-bold">Tracking</span></h3>
	                	</div>
	     	           <div class="panel-body">
		                	<form action="<%= request.getContextPath() %>/Controller1" method="post">
	                			<input type="hidden" name="actionCode" value="update_tracking_by_courierid">
	                		<div class="col-sm-8">
								<input type="number" class="form-control" name="courierid" id="courierid" placeholder="Insert Courier Id here" required>
	                		</div>
	                		<div class="col-sm-4">
	                		<button type="submit" class="btn btn-info" >Submit</button>
	                		</div>
	                		</form>
	                		<% 
	                	try{	
	                		List<AddTracking> tracking_list =(List<AddTracking>) request.getAttribute("trackingDetail");
	                		AddTracking addtracking = new AddTracking();
	                		if(!tracking_list.isEmpty() && tracking_list != null)
	                		{
	                			Iterator i = tracking_list.iterator();
	                			while(i.hasNext())
	                			{
	                				addtracking = (AddTracking) i.next();
	                		%>
	                		
	                		<br>
	                		<br>
	                		<br>
	                		
	                			<div class="col-sm-12 text-left"> 
	                  <form  class="animated bounceInRight" id="form">
							<input type="hidden" name="actionCode" value="doUpdateTracking">
							<input type="hidden" name="id" value="<%= addtracking.getId() %>">
		
                       <div class="row">
                       		<div class="col-sm-3">
                      			<label for="inputSelect">Insert Courier Mode</label>
                      			<select class="form-control" id="inputSelect" name="mode">
                        		<option>- Select One -</option>
                        		<option value="Air" <%if((addtracking.getMode()).equals("Air")){%> selected <%}%>>Air</option>
                        		<option value="Bicycle" <%if((addtracking.getMode()).equals("Bicycle")){%> selected <%}%>>Bicycle</option>
                        		<option value="Car" <%if((addtracking.getMode()).equals("Car")){%> selected <%}%>>Car</option>
                        		<option value="Railway" <%if((addtracking.getMode()).equals("Railway")){%> selected <%}%>>Railway</option>
                      			</select>
                      		</div>
                      		
                        <div class="col-sm-5">
                         <label for="input">Enter Courier ID</label>
                          <input class="form-control" id="input" placeholder="enter your courier id" name="courierid" value="<%= addtracking.getCourierid()%>">
                        </div>
                        
                         
                        <div class="col-sm-4">
                         <label for="input">Intermediate Location</label>
                          <input class="form-control" id="input" placeholder="enter intermediate location" name="intermediatelocation" value="<%=addtracking.getIntermediatelocation()%>">
                        </div>
                      </div>
                       <br>
                        
                      <div class="row">  
                        
                        <div class="col-sm-4">
                      		<label class="control-label" for="mask-date">Delivery Date</label>
                     		 <div class="input-group input-group-in">
                        	<span class="input-group-addon"><i class="icon-calendar"></i></span>
                        	<input data-mask="date" id="mask-date" class="form-control" placeholder="dd/mm/yyyy" name="deliverydate" value="<%= addtracking.getDeliverydate()%>">
                     		 </div><!-- /input-group-in -->
						</div>                    
                    
                    
                      
                        <div class="col-sm-4">
                      		<label for="inputSelect">Reminder Type</label>
                      		<select class="form-control" id="inputSelect" name="reminder" >
                        		<option>- Select One -</option>
                        		<option value="SMS" <%if((addtracking.getReminder()).equals("SMS")){%> selected <%}%>>SMS</option>
                        		<option value="Email" <%if((addtracking.getReminder()).equals("Email")){%> selected <%}%>>Email</option>
                      		</select>
                      </div>
                       
                          
                        <div class="col-sm-4">
                         <label for="input">Status</label>
                          <input class="form-control" id="input" placeholder="enter status" name="status" value="<%= addtracking.getStatus()%>">
                        </div>
                        
                     </div>
                     <br>  
                    <div class="form-group">
                      <div class="row">
                           <div class="col-md-8 mb-2x">
                      <label for="inputTextarea">Message</label>
                      <textarea rows="3" class="form-control" id="inputTextarea" placeholder="Enter Message for the sender" name="message" value="<%= addtracking.getMessage()%>"></textarea>
                   </div>
                        </div>
                    </div><!-- /form-group -->
                     <div class="form-group">
                      
	                      <input type="button" onclick="Update()" class="btn btn-block btn-yellow-green btn-default" value="Update">
	                    </div><!-- /form-group -->
	                    
	                  </form>
	                </div>
	                			
	                				
	                			
	                		<% 	
	                				
	                			}
	                			
	                		}
	                		
	                	}catch(Exception e){e.printStackTrace();}
	                		%>
	                		
	                		
	                		
	                		
	                		
	                		
	                	</div>
	                </div>      
	                
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


	<script>
			
		
	  function Update(){
			
			$.ajax({
				
			url:'${pageContext.request.contextPath}/Controller1',
			method:'post',	
			data:$('#form').serialize(),
			/*data:{actionCode:$('input#actionCode').val(),comp:$('input#comp').val()}, */
			
		success:function(){alert('success');},
		error: function (jqXHR, exception) {
	        var msg = '';
	        if (jqXHR.status === 0) {
	            msg = 'Not connect.\n Verify Network.';
	        } else if (jqXHR.status == 404) {
	            msg = "404 error";
	        } else if (jqXHR.status == 500) {
	            msg = 'Internal Server Error [500].';
	        } else if (exception === 'parsererror') {
	            msg = 'Requested JSON parse failed.';
	        } else if (exception === 'timeout') {
	            msg = 'Time out error.';
	        } else if (exception === 'abort') {
	            msg = 'Ajax request aborted.';
	        } else {
	            msg = 'Uncaught Error.\n' + jqXHR.responseText;
	        }
	        alert(msg);
	    	},
		  });
				
		}
	  function Reload(){
		  window.location.reload();
	  }
	
	
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

</body>

</html>