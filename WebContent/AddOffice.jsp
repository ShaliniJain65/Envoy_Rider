<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.AddNewOffice" %>
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

</head>
<body>
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
	            <li><a href="#">Manage Office</a></li>
	            <li class="active">Add</li>
	          </ul>
	        </div><!-- /.content-bar -->
	        <div class="content-body">
	          <div class="row">
	            <div class="col-md-12">
	              <div class="panel" data-fill-color="true">
	              	<ul class="tab">
						<li><a href="javascript:void(0)"  class="tablinks" onclick="openTab(event,'Add')"><i class="icon-note fa-fw"></i> Add New Office</a></li> 
						<li><a href="javascript:void(0)" id="defaultOpen" class="tablinks" onclick="openTab(event,'Manage')"><i class="fa fa-users"></i> Manage Office</a></li>
						<button class="btn animated bounceInUp btn-dark-purple pull-right" style="margin-left: 5px;" type="button" id="btnExport">Export Table  <i class="fa fa-arrow-circle-down" aria-hidden="true"></i></button>
						<button type="button" onclick="Reload()" class="btn pull-right btn-dark-green"> <i class="fa fa-spin fa-refresh"></i>  Refresh</button>
					</ul>
	                <div id="Add" class="tabcontent panel adjust-panel">
		                <div class="row">
		                	<div class="col-sm-12">
		                  		<h3 class="panel-title"></h3>
		                  	</div>
		                </div>	
	                  	<div class="col-sm-12 text-left">
	                	 <form class="animated bounceInRight" id="form">
							<input type="hidden" name="actionCode" value="addNewOffice">
							<div class="row">
	                       	 	<div class="col-md-6 mb-2x">
	                         		<label for="input">Name Of Office</label>
	                          		<input class="form-control" id="input" placeholder="enter office name" name="Officename">
	                        	</div>
	                        	<div class="col-md-6 mb-2x">
	                         		<label for="input">Owner Of Office</label>
	                          		<input class="form-control" id="input" placeholder="enter owner name" name="Ownername">
	                        	</div>
                        	</div><!-- /row -->
		                    <div class="row">
	                        	<div class="col-md-6 mb-2x">
			                        <label for="input">Email</label>
			                        <input class="form-control" id="input" placeholder="Enter your Email" name="email">
			                    </div>
                        		<div class="col-md-6 mb-2x">
	                      			<label for="input">Contact Number</label>
	                      			<input class="form-control" id="input" placeholder="Mobile No." name="contactno">
	                    		</div><!-- /form-group -->
	                    	</div>
		                    <div class="row">
		                    	<div class="col-md-6 mb-2x">
			                        <label for="inputTextarea">Address</label>
			                        <textarea rows="3" class="form-control" id="inputTextarea" name="address" placeholder="Enter your address"></textarea>
		                    	</div>
		                 	    <div class="col-md-6 mb-2x">
		                      		<label for="inputSelect">City</label>
		                      		<select class="form-control" id="inputSelect" name="city">
		                        		<option>- Select One -</option>
		                        		<option>Ahmedabad</option>
		                        		<option>Surat</option>
		                        		<option>Gandhinagar</option>
		                        		<option>Rajkot</option>
		                        		<option>Surat</option>
		                      		</select>
	                    		</div>
                    		</div>
	                   		<div class="form-group">
	                      		<input type="button" onclick="Insert()" class="btn btn-block btn-yellow-green btn-default" value="ADD">
	                   		</div><!-- /form-group -->
	                 </form>
	                </div>
	               </div>
	                    <div id="Manage" class="tabcontent panel">
	                	<p style="margin-right: 5px;"> </p><br>
	                  	<div class="table-responsive text-center custom-table animated bounceInRight"" id="dvData">
	                  		<table>
	                  			<tr>
	                  				<td>Office Name</td>
	                  				<td>Owner Name</td>
	                  				<td>Email</td>
	                  				<td>Contact No.</td>
	                  				<td>Address</td>
	                  				<td>City</td>
	                  				<td>Update</td>
	                  				<td>Delete</td>
	                  			</tr>
	                  	<% 
	                  try{	
	                  	Dao dao = new Dao();
	                  	AddNewOffice addnewoffice = new AddNewOffice();
	                  	List<AddNewOffice> office_list = dao.doLoadOffice();
	                  	
	                  	if(!office_list.isEmpty() && office_list != null)
	                  	{
	                  		Iterator i = office_list.iterator();
	                  		while(i.hasNext())
	                  		{
	                  			addnewoffice = (AddNewOffice)i.next();
	                  	%>
	                  	
	                  		<tr>
	                  				<td><%= addnewoffice.getOfficeName() %></td>
	                  				<td><%= addnewoffice.getOwnerName() %></td>
	                  				<td><%= addnewoffice.getEmail() %></td>
	                  				<td><%=addnewoffice.getContactNo() %></td>
	                  				<td><%= addnewoffice.getAddress() %></td>
	                  				<td><%=addnewoffice.getCity() %></td>
	                  				<td><a href="<%= request.getContextPath() %>/Controller1?actionCode=update_office_by_officename&name=<%= addnewoffice.getOfficeName()%>"><i class="fa fa-pencil-square" style="color: #ffebcd" aria-hidden="true"></i></a></td>
	                  				<td><a onclick="return confirm('Are you sure want to delete?')" href="<%= request.getContextPath() %>/Controller1?actionCode=delete_office&name=<%= addnewoffice.getOfficeName()%>"><i class="fa fa-minus-square" style="color: #FA8072" aria-hidden="true"></a></i></td>
	                  			</tr>
	                  	<% 				
	                  		}
	                  	}
	                  }catch(Exception e){e.printStackTrace();}	
	                  	%>
	                  		</table>
	                  		</div>
	                </div>
	              </div>
	              </div>
	          </div>
	        </div>
		</section>
	       
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
  <script type="text/javascript">
$(document).ready(function(){
	$("#btnExport").click(function(e){
		window.open('data:application/vnd.ms-excel,' + $('#dvData').html());
	 	e.preventDefault();
	});
});
</script>


	<script>
			
	function openTab(evt, user) {
    	var i, tabcontent, tablinks;
    	tabcontent = document.getElementsByClassName("tabcontent");
    	for (i = 0; i < tabcontent.length; i++) {
        	tabcontent[i].style.display = "none";
    	}
    	tablinks = document.getElementsByClassName("tablinks");
    	for (i = 0; i < tablinks.length; i++) {
        	tablinks[i].className = tablinks[i].className.replace(" active", "");
    	}
    	document.getElementById(user).style.display = "flex";
    	evt.currentTarget.className += " active";
	  }

	// Get the element with id="defaultOpen" and click on it
	  document.getElementById("defaultOpen").click();
	
	  function Insert(){
			
			$.ajax({
				
			url:'${pageContext.request.contextPath}/Controller1',
			method:'get',	
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