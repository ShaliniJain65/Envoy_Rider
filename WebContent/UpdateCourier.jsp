<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="com.model.AddCourier" %>
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
            <li><a href="#">Manage Courier</a></li>
            <li class="active">Add</li>
          </ul>
        </div><!-- /.content-bar -->
 			<div class="content-body">
	          <div class="row">
	            <div class="col-sm-12">
	              <!-- /panel-basicform -->
	                <div class="panel adjust-panel panel-white" style="padding: 20px;margin-top: 15px">
	                	<div class="panel-heading">
	                		<h3 class="text-left"><i class="fa fa-pencil-square"></i> Update <span class="text-bold">Courier</span></h3>
	                	</div>
	     	           <div class="panel-body">
		                	<form action="<%= request.getContextPath() %>/Controller1" method="post">
	                			<input type="hidden" name="actionCode" value="update_courier_by_courierid">
	                		<div class="col-sm-8">
								<input type="number" class="form-control" name="courierid" id="courierid" placeholder="Insert Courier Id here" required>
	                		</div>
	                		<div class="col-sm-4">
	                		<button type="submit" class="btn btn-info" >Submit</button>
	                		</div>
	                		</form>
	                		<% 
	                	try{	
	                		List<AddCourier> courier_list =(List<AddCourier>) request.getAttribute("courierDetail");
	                		AddCourier addCourier = new AddCourier();
	                		if(!courier_list.isEmpty() && courier_list != null)
	                		{
	                			Iterator i = courier_list.iterator();
	                			while(i.hasNext())
	                			{
	                				addCourier = (AddCourier) i.next();
	                		%>
	                		
	                		<br>
	                		<br>
	                		<br>
	                		
	                			<div class="col-sm-12 text-left"> 
	                  <form  class="animated bounceInRight" id="form">
							<input type="hidden" name="actionCode" value="doUpdateCourier">
							<input type="hidden" name="id" value="<%= addCourier.getId() %>">
	
						<div class="row">
                        	<div class="col-sm-4">
                         		<label for="input">Courier ID</label>
                          		<input class="form-control" id="input" placeholder="Courier id" name="courierid" value="<%= addCourier.getCourierid() %>">
                       		</div>
                       		<div class="col-sm-5">
                         		<label for="input">User ID</label>
                          		<input class="form-control" id="input" placeholder="Email id" name="userid"  value="<%= addCourier.getUserEmail() %>">
                        	</div>
							<div class="col-sm-3">
                      			<label for="inputSelect">Courier Mode</label>
                      			<select class="form-control" id="inputSelect" name="mode">
                        			<option disabled>- Select One -</option>
                       				<option value="Air" <%if((addCourier.getMode()).equals("Air")){%> selected <%}%>>Air</option>
                       	 			<option value="Bicycle"  <%if((addCourier.getMode()).equals("Bicycle")){%> selected <%}%>>Bicycle</option>
                        			<option value="Car" <%if((addCourier.getMode()).equals("Car")){%> selected <%}%>>Car</option>
                        			<option value="Railway" <%if((addCourier.getMode()).equals("Railway")){%> selected <%}%>>Railway</option>
                      			</select>
                      		</div>	
                        </div>
                         <br>
                    
					<div class="row">
                        <div class="col-sm-8">
                     		 <label for="inputTextarea">Source Address</label>
                     		 <textarea rows="3" class="form-control" id="inputTextarea" placeholder=" Enter Source address" name="sourceaddress"><%= addCourier.getSourceaddress() %></textarea>
                     	</div>
                   		
                      	<div class="col-sm-4">
	                      <label for="sourcecity">Source City</label>
	                      <select class="form-control" id="sourcecity" name="sourcecity">
	                        <option disabled>- Select One -</option>
	                        <option value="Ahmedabad" <%if((addCourier.getSourcecity()).equals("Ahmedabad")){%> selected <%}%> >Ahmedabad</option>
	                        <option value="Surat" <%if((addCourier.getSourcecity()).equals("Surat")){%> selected <%}%>>Surat</option>
	                        <option value="Gandhinagar"  <%if((addCourier.getSourcecity()).equals("Gandhinagar")){%> selected <%}%>>Gandhinagar</option>
	                        <option value="Rajkot"  <%if((addCourier.getSourcecity()).equals("Rajkot")){%> selected <%}%>>Rajkot</option>
	                        
	                      </select>
	                      </div>
                   		
                   </div>
                   <br>
                    <div class="row">    
                      
                         <div class="col-sm-8">
                     		 <label for="destinationaddress">Destination Address</label>
                      		<textarea rows="3" class="form-control" id="destinationaddress" placeholder="Enter Destination address" name="destinationaddress"><%= addCourier.getDestinationaddress() %></textarea>
                   		</div>
                       <div class="col-sm-4">
	                      <label for="destinationcity">Destination City</label>
	                      <select class="form-control" id="destinationcity" name="destinationcity">
	                        <option  disabled>- Select One -</option>
	                        <option value="Ahmedabad"  <%if((addCourier.getDestinationcity()).equals("Ahmedabad")){%> selected <%}%>>Ahmedabad</option>
	                        <option value="Surat" <%if((addCourier.getDestinationcity()).equals("Surat")){%> selected <%}%>>Surat</option>
	                        <option value="Gandhinagar"  <%if((addCourier.getDestinationcity()).equals("Gandhinagar")){%> selected <%}%>>Gandhinagar</option>
	                        <option value="Rajkot"  <%if((addCourier.getDestinationcity()).equals("Rajkot")){%> selected <%}%>>Rajkot</option>
	                      </select>
	                    </div>
	                      
	                    
	                </div>    
	                <br>     
					<div class="row">
                        <div class="col-md-8 mb-2x">
                         <label for="input">Weight</label>
                          <input class="form-control" id="input" placeholder="Weight(in GMS)" name="weight" value="<%= addCourier.getWeight() %>">
                        </div>
                        
                        <div class="col-md-4 mb-2x">
                      		<label>Quantity</label>
                      		<label class="select enabled">
                        	<select enabled="enabled" name="quantity" >
                          	<option  disabled>- Select One -</option>
                          	<option value="1" <%if(addCourier.getQuantity()==1){%> selected <%}%>>1</option>
                          	<option value="2" <%if(addCourier.getQuantity()==2){%> selected <%}%>>2</option>
                          	<option value="3" <%if(addCourier.getQuantity()==3){%> selected <%}%>>3</option>
                          	<option value="4"  <%if(addCourier.getQuantity()==4){%> selected <%}%>>4</option>
                          	<option value="5"  <%if(addCourier.getQuantity()==5){%> selected <%}%>>5</option>
                        	</select>
                      
                      		</label>
                      </div>
                    </div>  
                       
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