<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/styles/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/styles/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/styles/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/styles/custom.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="box">
		<div class="left">
			  <form action="<%=request.getContextPath()%>/Controller1" method="post">
			<input type="hidden" name="actionCode" value="login2">
	
				<div class="form">
					<% 
					try{
						String Error_msg =  (String)request.getAttribute("error_msg");
						
						if(!Error_msg.isEmpty() && Error_msg != null)
						{
							
					%>
						<span style="background-color: tomato;color: white;font-family: cursive;"> <i class="fa fa-meh-o"></i>  <%= Error_msg %></span>
					<% 		
						}
					}catch(Exception e){e.printStackTrace();}	
					
					%>
					
					
										
					<h1>Log In</h1>
					<a>to your account</a>
					<input type="text" class="tbox" name="username" placeholder="Username">
					<input type="text" class="tbox" name="password" placeholder="Password">
					<input type="submit" class="btn" value="login" name="login">
					<div class="footer"><a href="password" >Forgot Password</div>
					
			<div class="footer">Don't have an account?</div>
			<button class="btn"><a href="register" >Register</a></button>
				</div>
			</form>
		</div>
		
		
	</div>

</body>
</html>