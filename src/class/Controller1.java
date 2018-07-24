package com.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.*;

import com.model.AddCourier;
import com.model.AddGiftCard;
import com.model.AddNewOffice;
import com.model.AddNewTransporter;
import com.model.AddTracking;
import com.model.Pricing;
import com.model.Sliders;
import com.dao.Dao;
import com.mail.SendEmail;
import com.model.AddNewCustomer;
public class Controller1 extends HttpServlet {
	Dao dao = new Dao();

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String actionCode = request.getParameter("actionCode");
		if (actionCode.equals("listTracking")) {

			java.util.List<AddTracking> addTracking = dao.doLoadTracking();
			request.getSession(false).setAttribute("addTracking", addTracking);
			response.sendRedirect(request.getContextPath()
					+ "/wp-content/ListTracking.jsp");
		}
		
		
		
		
		doPost(request, response);
		}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String actionCode = request.getParameter("actionCode");
		System.out.println("hello");
		
		if(actionCode.equals("resetpassword"))
		{
			String code  = request.getParameter("code");
			String email = request.getParameter("email");
			
			System.out.println("Email " +email+"Pass "+code);
			List<AddNewCustomer> customer_list = dao.doFindCustomer(email);
			
			if(customer_list != null && !customer_list.isEmpty())
			{
				
				AddNewCustomer customer = new AddNewCustomer();
				Iterator i = customer_list.iterator();
				
				while(i.hasNext())
				{
					customer = (AddNewCustomer)i.next();
				}
				
				String password  = customer.getPassword();
				if(password.equals(code))
				{
					response.sendRedirect(request.getContextPath()+"/wp-content/setPassword.jsp");
				}
				
			}
			else{
				request.setAttribute("Message", "Some Error occured. Contact Us on phone number");
				request.getRequestDispatcher("/wp-content/portal/Member-login.jsp").forward(request, response);
				
			}
				
		}
		if(actionCode.equals("member-login"))
		{
			
			String email =request.getParameter("email");
			String password=request.getParameter("password");
			
			List<AddNewCustomer> customer_list = dao.doFindCustomer(email);
			
			AddNewCustomer customer = new AddNewCustomer();
			
			String FirstName="";
			String dbpassword="";
			if(!customer_list.isEmpty() && customer_list != null){
				
				Iterator it = customer_list.iterator();
				while(it.hasNext())
				{
					customer = (AddNewCustomer)it.next();
					
					dbpassword = customer.getPassword();
					
				}
			}
			
			if(password.equals(dbpassword))
			{
				FirstName = customer.getFirstname();
				HttpSession session= request.getSession();
				session.setAttribute("firstName", FirstName);
				
				response.sendRedirect(request.getContextPath()+"/wp-content/portal/Courier_details.jsp");
			}
			else{
				response.sendRedirect(request.getContextPath()+"/wp-content/portal/Member-login.jsp");
			}
			
	}
		
		if (actionCode.equals("login2")) 
		{
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			
			String Error_msg = null;
			System.out.println("hello");
			if(username.equals("shalini") && password.equals("shalini"))
			{
				response.sendRedirect(request.getContextPath() + "/wp-content/index.jsp");
			}
			else
			{
				Error_msg = "Invalid Username or Password";
				request.setAttribute("error_msg", Error_msg);
				request.getRequestDispatcher("/wp-content/LoginBack.jsp").forward(request, response);
				
			}
		}	
		if (actionCode.equals("addNewCustomer")) {
			Integer id = Integer.valueOf(0);
			String firstname = request.getParameter("firstname");
			String lastname = request.getParameter("lastname");
			System.out.println(firstname + "" + lastname);
			String gender = request.getParameter("gender");
			String email = request.getParameter("email");
			
			String contactno = request.getParameter("contactno");
			String address = request.getParameter("address");
			String city = request.getParameter("city");
			Random ran = new Random();
			String otp = ran.nextInt(8994)+1005 + "";

			com.model.AddNewCustomer addnewcustomer = new com.model.AddNewCustomer();
			addnewcustomer.setId(id);
			addnewcustomer.setFirstname(firstname);
			addnewcustomer.setLastname(lastname);
			addnewcustomer.setGender(gender);
			addnewcustomer.setEmail(email);
			addnewcustomer.setPassword(otp);
			addnewcustomer.setContactno(contactno);
			addnewcustomer.setAddress(address);
			addnewcustomer.setCity(city);
			

			id = dao.doAddNewCustomer(addnewcustomer);
			
			if(email!=null)
			{
				
				String sender= "slashinvester@gmail.com";
				String password = "priyank@9377";
				String reciever = email;
				String subject = "Your password link from Envoy Rider Courier Company";
				String msg = "http://localhost:8080/Envoy_rider_final/Controller1?actionCode=resetpassword&code="+otp+"&email="+email;
				SendEmail mail = new SendEmail();
				
				String status = mail.transport(sender, password, reciever, subject, msg);
				if(status.equals("success"))
				{
					request.setAttribute("Message", "Check your email for login link !");
					request.getRequestDispatcher("/wp-content/portal/Member-login.jsp").forward(request, response);
					
				}
				
			}
		}
		if (actionCode.equals("addCourier")) {
			Integer id = Integer.valueOf(0);

			long courierid = Long.parseLong(request.getParameter("courierid"));
			String userEmail = request.getParameter("userid");
			String mode = request.getParameter("mode");
			String sourceaddress = request.getParameter("sourceaddress");
			String sourcecity = request.getParameter("sourcecity");
			String destinationaddress = request
					.getParameter("destinationaddress");
			String destinationcity = request.getParameter("destinationcity");
			int weight = Integer.parseInt(request.getParameter("weight"));
			int quantity = Integer.parseInt( request.getParameter("quantity"));

			com.model.AddCourier addcourier = new com.model.AddCourier();

			addcourier.setCourierid(courierid);
			addcourier.setUserEmail(userEmail);
			addcourier.setMode(mode);
			addcourier.setSourceaddress(sourceaddress);
			addcourier.setSourcecity(sourcecity);
			addcourier.setDestinationaddress(destinationaddress);
			addcourier.setDestinationcity(destinationcity);
			addcourier.setWeight(weight);
			addcourier.setQuantity(quantity);

			id = dao.doAddCourier(addcourier);
		}
		
		if (actionCode.equals("addTracking")) {
			Integer id = Integer.valueOf(0);
			String mode = request.getParameter("mode");
			long courierid = Long.parseLong( request.getParameter("courierid"));
			String intermediatelocation = request.getParameter("intermediatelocation");
			String deliverydate = request.getParameter("deliverydate");
			String reminder = request.getParameter("reminder");
			String status = request.getParameter("status");
			String message = request.getParameter("message");
			AddTracking addtracking = new AddTracking();
			
			addtracking.setCourierid(courierid);
			addtracking.setDeliverydate(deliverydate);
			addtracking.setIntermediatelocation(intermediatelocation);
			addtracking.setMessage(message);
			addtracking.setMode(mode);
			addtracking.setReminder(reminder);
			addtracking.setStatus(status);
			id = dao.doAddTracking(addtracking);
		}
		if(actionCode.equals("addNewOffice"))
 		{
 				Integer id=Integer.valueOf(0);
 				String officeName=request.getParameter("Officename");
 				String ownerName=request.getParameter("Ownername");
 				String email=request.getParameter("email");
 				String contactNo=request.getParameter("contactno");
 				String address=request.getParameter("address");
 				String city=request.getParameter("city");
 				
 				com.model.AddNewOffice addNewOffice=new com.model.AddNewOffice();
 				
 				addNewOffice.setId(id);
 				addNewOffice.setOfficeName(officeName);
 				addNewOffice.setOwnerName(ownerName);
 				addNewOffice.setEmail(email);
 				addNewOffice.setContactNo(contactNo);
 				addNewOffice.setAddress(address);
 				addNewOffice.setCity(city);
 				
 				id=dao.doAddNewOffice(addNewOffice);
 				
 			}
		if(actionCode.equals("addNewTranporter"))
 			{
 				Integer id=Integer.valueOf(0);
 				String mode=request.getParameter("modes");
 				String companyname=request.getParameter("companyname");
 				String contactno=request.getParameter("contactno");
 				String address=request.getParameter("address");
 							
 				com.model.AddNewTransporter addNewTranspoter=new com.model.AddNewTransporter();
 				
 				addNewTranspoter.setId(id);
 				addNewTranspoter.setMode(mode);
 				addNewTranspoter.setCompanyname(companyname);
				addNewTranspoter.setContactno(contactno);
				addNewTranspoter.setAddress(address);
				System.out.println("adding");
				id=dao.doAddNewTransporter(addNewTranspoter);
		}

		
		if (actionCode.equals("giftCard")) {
			System.out.println("hello");
			Integer id = Integer.valueOf(0);
			String offercode = request.getParameter("offercode");
			String description = request.getParameter("description");
			String startdate = request.getParameter("startdate");
			String enddate = request.getParameter("enddate");
			String reminder = request.getParameter("reminder");
			String descriptionToApply = request.getParameter("descriptionToApply");
			String tipSelect = request.getParameter("tipSelect");
			

			AddGiftCard addnewgift = new AddGiftCard();
			addnewgift.setId(id);
			addnewgift.setOffercode(offercode);
			addnewgift.setDescription(description);
			addnewgift.setStartdate(startdate);
			addnewgift.setEnddate(enddate);
			addnewgift.setReminder(reminder);
			addnewgift.setDescriptionToApply(descriptionToApply);;
			addnewgift.setTipSelect(tipSelect);;
			
			id = dao.doAddNewGift(addnewgift);
			
		}

		if(actionCode.equals("update_courier_by_courierid")){
			
			long courierId = Long.parseLong(request.getParameter("courierid"));
			List<AddCourier> courier_list = dao.findCouriersByCourierId(courierId);
			
			if(!courier_list.isEmpty() && courier_list != null)
			{
				request.setAttribute("courierDetail", courier_list);
				request.getRequestDispatcher("/wp-content/UpdateCourier.jsp").forward(request, response);
			}
			
		}
		if(actionCode.equals("update_customer_by_emailid")){
			
			long emailId = Long.parseLong(request.getParameter("emailid"));
			List<AddNewCustomer> customer_list = dao.findCustomerByemailId(emailId);
			
			if(!customer_list.isEmpty() && customer_list != null)
			{
				request.setAttribute("courierDetail", customer_list);
				request.getRequestDispatcher("/wp-content/UpdateCustomer.jsp").forward(request, response);
			}
			
		}
	if(actionCode.equals("update_tracking_by_courierid")){
		
		long courierId = Long.parseLong(request.getParameter("courierid"));
		List<AddTracking> tracking_list = dao.findTrackingByCourierId(courierId);
		
		if(!tracking_list.isEmpty() && tracking_list != null)
		{
			request.setAttribute("trackingDetail", tracking_list);
			request.getRequestDispatcher("/wp-content/UpdateTracking.jsp").forward(request, response);
		}
		
	}
		if(actionCode.equals("update_office_by_officename")){
			
			String Officename = request.getParameter("name");
			System.out.println("office name " +Officename);
			List<AddNewOffice> office_list = dao.findOfficeByOfficeName(Officename);
			
			if(!office_list.isEmpty() &&office_list != null)
			{
				request.setAttribute("officeDetail", office_list);
				request.getRequestDispatcher("/wp-content/UpdateOffice.jsp").forward(request, response);
			}
			
		}
		if(actionCode.equals("update_transporter_by_contact")){
			
			long contactno = Long.parseLong(request.getParameter("contactno"));
			List<AddNewTransporter> transporter_list = dao.findTransporterBycontactno(contactno);
			
			if(!transporter_list.isEmpty() && transporter_list != null)
			{
				request.setAttribute("TransporterDetail", transporter_list);
				request.getRequestDispatcher("/wp-content/UpdateTransporter.jsp").forward(request, response);
			}
			
		}
		if(actionCode.equals("update_giftcard_by_offercode")){
			
			long offercode = Long.parseLong(request.getParameter("offercode"));
			List<AddGiftCard> giftcard_list = dao.findGiftCardByoffercode(offercode);
			
			if(!giftcard_list.isEmpty() && giftcard_list != null)
			{
				request.setAttribute("TransporterDetail", giftcard_list);
				request.getRequestDispatcher("/wp-content/UpdategiftCard.jsp").forward(request, response);
			}
			
		}
		if(actionCode.equals("update_courier")){
			
			int id = Integer.parseInt(request.getParameter("id"));
			List<AddCourier> courier_list = dao.findCouriers(id);
			
			if(!courier_list.isEmpty() && courier_list != null)
			{
				request.setAttribute("courierDetail", courier_list);
				request.getRequestDispatcher("/wp-content/UpdateCourier.jsp").forward(request, response);
			}
			
		}
			if(actionCode.equals("update_customer")){
			
			int id = Integer.parseInt(request.getParameter("id"));
			List<AddNewCustomer> customer_list = dao.findCustomer(id);
			
			if(!customer_list.isEmpty() && customer_list != null)
			{
				request.setAttribute("customerDetail", customer_list);
				request.getRequestDispatcher("/wp-content/UpdateCustomer.jsp").forward(request, response);
			}
			
		}
		
			if(actionCode.equals("update_tracking")){
				
				int id = Integer.parseInt(request.getParameter("id"));
				List<AddTracking> tracking_list = dao.findTracking(id);
				
				if(!tracking_list.isEmpty() && tracking_list != null)
				{
					request.setAttribute("trackingDetail", tracking_list);
					request.getRequestDispatcher("/wp-content/UpdateTracking.jsp").forward(request, response);
				}
				
			}
			if(actionCode.equals("update_transporter")){
				
				int id = Integer.parseInt(request.getParameter("id"));
				List<AddNewTransporter> transporter_list = dao.findTransporter(id);
				
				if(!transporter_list.isEmpty() && transporter_list != null)
				{
					request.setAttribute("transporterDetail", transporter_list);
					request.getRequestDispatcher("/wp-content/UpdateTransporter.jsp").forward(request, response);
				}
				
			}
			if(actionCode.equals("update_office")){
				
				int id = Integer.parseInt(request.getParameter("id"));
				List<AddNewOffice> office_list = dao.findOffice(id);
				System.out.println("in Update");
				if(!office_list.isEmpty() && office_list != null)
				{
					request.setAttribute("officeDetail", office_list);
					request.getRequestDispatcher("/wp-content/UpdateOffice.jsp").forward(request, response);
				}
				
			}
			if(actionCode.equals("update_giftcard")){
				
				int id = Integer.parseInt(request.getParameter("id"));
				List<AddGiftCard> giftcard_list = dao.findGiftCard(id);
				
				if(!giftcard_list.isEmpty() &&giftcard_list != null)
				{
					request.setAttribute("giftcardDetail", giftcard_list);
					request.getRequestDispatcher("/wp-content/UpdateGiftCard.jsp").forward(request, response);
				}
				
			}
	
		if(actionCode.equals("doUpdateCourier"))
		{
			int id = Integer.parseInt(request.getParameter("id"));
			long courierid = Long.parseLong(request.getParameter("courierid"));
			String userEmail = request.getParameter("userid");
			String mode = request.getParameter("mode");
			String sourceaddress = request.getParameter("sourceaddress");
			String sourcecity = request.getParameter("sourcecity");
			String destinationaddress = request
					.getParameter("destinationaddress");
			String destinationcity = request.getParameter("destinationcity");
			int weight = Integer.parseInt(request.getParameter("weight"));
			int quantity = Integer.parseInt( request.getParameter("quantity"));

			com.model.AddCourier addcourier = new com.model.AddCourier();
			
			addcourier.setId(id);
			addcourier.setCourierid(courierid);
			addcourier.setUserEmail(userEmail);
			addcourier.setMode(mode);
			addcourier.setSourceaddress(sourceaddress);
			addcourier.setSourcecity(sourcecity);
			addcourier.setDestinationaddress(destinationaddress);
			addcourier.setDestinationcity(destinationcity);
			addcourier.setWeight(weight);
			addcourier.setQuantity(quantity);

			String status = dao.doUpdateCourier(addcourier);
			if(status.equals("Success"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/AddCourier.jsp");
			}
		 }
		if (actionCode.equals("doUpdateCustomer")) {
			int id = Integer.parseInt(request.getParameter("id"));
			String firstname = request.getParameter("firstname");
			String lastname = request.getParameter("lastname");
			System.out.println(firstname + "" + lastname);
			String gender = request.getParameter("gender");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String contactno = request.getParameter("contactno");
			String address = request.getParameter("address");
			String city = request.getParameter("city");
			

			com.model.AddNewCustomer addnewcustomer = new com.model.AddNewCustomer();
			addnewcustomer.setId(id);
			addnewcustomer.setFirstname(firstname);
			addnewcustomer.setLastname(lastname);
			addnewcustomer.setGender(gender);
			addnewcustomer.setEmail(email);
			addnewcustomer.setPassword(password);
			addnewcustomer.setContactno(contactno);
			addnewcustomer.setAddress(address);
			addnewcustomer.setCity(city);
			
			String status = dao.doUpdateCustomer(addnewcustomer);
			if(status.equals("Success"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/AddNewCustomer.jsp");
			}
		 }
		if (actionCode.equals("doUpdateTracking")) {
			int id = Integer.parseInt(request.getParameter("id"));
			String mode = request.getParameter("mode");
			long courierid = Long.parseLong( request.getParameter("courierid"));
			String intermediatelocation = request.getParameter("intermediatelocation");
			String deliverydate = request.getParameter("deliverydate");
			String reminder = request.getParameter("reminder");
			String status = request.getParameter("status");
			String message = request.getParameter("message");
			AddTracking addtracking = new AddTracking();
			
			addtracking.setCourierid(courierid);
			addtracking.setDeliverydate(deliverydate);
			addtracking.setIntermediatelocation(intermediatelocation);
			addtracking.setMessage(message);
			addtracking.setMode(mode);
			addtracking.setReminder(reminder);
			addtracking.setStatus(status);
			String Status = dao.doUpdateTracking(addtracking);
			if(Status.equals("Success"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/AddTracking.jsp");
			}
		 }

		if(actionCode.equals("doUpdateOffice"))
 		{
 				Integer id=Integer.valueOf(0);
 				String officeName=request.getParameter("Officename");
 				String ownerName=request.getParameter("Ownername");
 				String email=request.getParameter("email");
 				String contactNo=request.getParameter("contactno");
 				String address=request.getParameter("address");
 				String city=request.getParameter("city");
 				
 				com.model.AddNewOffice addNewOffice=new com.model.AddNewOffice();
 				
 				addNewOffice.setId(id);
 				addNewOffice.setOfficeName(officeName);
 				addNewOffice.setOwnerName(ownerName);
 				addNewOffice.setEmail(email);
 				addNewOffice.setContactNo(contactNo);
 				addNewOffice.setAddress(address);
 				addNewOffice.setCity(city);
 				
 				String status = dao.doUpdateOffice(addNewOffice);
 				if(status.equals("Success"))
 				{
 					response.sendRedirect(request.getContextPath()+"/wp-content/AddOffice.jsp");
 				}
 			 }
 				
 			
		if(actionCode.equals("doUpdateTranporter"))
 			{
 				Integer id=Integer.valueOf(0);
 				String mode=request.getParameter("modes");
 				String companyname=request.getParameter("companyname");
 				String contactno=request.getParameter("contactno");
 				String address=request.getParameter("address");
 							
 				com.model.AddNewTransporter addNewTranspoter=new com.model.AddNewTransporter();
 				
 				addNewTranspoter.setId(id);
 				addNewTranspoter.setMode(mode);
 				addNewTranspoter.setCompanyname(companyname);
				addNewTranspoter.setContactno(contactno);
				addNewTranspoter.setAddress(address);
				System.out.println("adding");
				
				String status = dao.doUpdateTransporter(addNewTranspoter);
				if(status.equals("Success"))
				{
					response.sendRedirect(request.getContextPath()+"/wp-content/AddTransporter.jsp");
				}
			 }
		

		
		if (actionCode.equals("doUpdategiftCard")) {
			System.out.println("hello");
			Integer id = Integer.valueOf(0);
			String offercode = request.getParameter("offercode");
			String description = request.getParameter("description");
			String startdate = request.getParameter("startdate");
			String enddate = request.getParameter("enddate");
			String reminder = request.getParameter("reminder");
			String descriptionToApply = request.getParameter("descriptionToApply");
			String tipSelect = request.getParameter("tipSelect");
			

			AddGiftCard addnewgift = new AddGiftCard();
			addnewgift.setId(id);
			addnewgift.setOffercode(offercode);
			addnewgift.setDescription(description);
			addnewgift.setStartdate(startdate);
			addnewgift.setEnddate(enddate);
			addnewgift.setReminder(reminder);
			addnewgift.setDescriptionToApply(descriptionToApply);;
			addnewgift.setTipSelect(tipSelect);;
			
			String Status = dao.doUpdateGiftCard(addnewgift);
			if(Status.equals("Success"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/GiftCard.jsp");
			}
		 }			
		
		if(actionCode.equals("deleteSlider"))
		{
			try {
				int id = Integer.parseInt(request.getParameter("id"));
				
				String file = dao.find_slider(id);
				String filename = "C:/Users/harsh/eclipse_project/Envoy_rider_final/WebContent/slider-images/"+file;
				System.out.println(filename+ " to be deleted");
				File SliderImage = new File(filename);
				
				String msg = "";
				if(SliderImage.delete())
				{
					Sliders slider = new Sliders();
					slider.setId(id);
					dao.delete_slider(slider);
					msg = "File Successfully Deleted !";
					request.setAttribute("Message", msg);
					request.getRequestDispatcher("/wp-content/Slider_manager.jsp").forward(request, response);
					
				}
				else{
					msg = "File Deleteting failed !";
					request.setAttribute("Message", msg);
					request.getRequestDispatcher("/wp-content/Slider_manager.jsp").forward(request, response);
					
				}
			} catch (Exception e) {
				
				e.printStackTrace();
			}
			
		}
		
		
		if(actionCode.equals("delete_courier"))
		{
			int id = Integer.parseInt(request.getParameter("id"));
			com.model.AddCourier addcourier = new com.model.AddCourier();
			
			addcourier.setId(id);
			String status = dao.doDeleteCourier(addcourier); 
			
			if(status.equals("Success"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/AddCourier.jsp");
			}
		}
		if(actionCode.equals("delete_customer"))
		{
			int id = Integer.parseInt(request.getParameter("id"));
			com.model.AddNewCustomer addnewcustomer = new com.model.AddNewCustomer();
			
			addnewcustomer.setId(id);
			String status = dao.doDeleteCustomer(addnewcustomer); 
			
			if(status.equals("Success"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/AddNewCustomer.jsp");
			}
		}
		if(actionCode.equals("delete_tracking"))
		{
			int id = Integer.parseInt(request.getParameter("id"));
			com.model.AddTracking addtracking = new com.model.AddTracking();
			
			addtracking.setId(id);
			String status = dao.doDeleteTracking(addtracking); 
			
			if(status.equals("Success"))
			{
				response.sendRedirect(request.getContextPath()+"/wp-content/AddTracking.jsp");
			}
		}
			
	
	if(actionCode.equals("delete_office"))
	{
		int id = Integer.parseInt(request.getParameter("id"));
		com.model.AddNewOffice addnewoffice = new com.model.AddNewOffice();
		
		addnewoffice.setId(id);
		String status = dao.doDeleteOffice(addnewoffice); 
		
		if(status.equals("Success"))
		{
			response.sendRedirect(request.getContextPath()+"/wp-content/AddOffice.jsp");
		}
	}
	if(actionCode.equals("delete_transporter"))
	{
		int id = Integer.parseInt(request.getParameter("id"));
		com.model.AddNewTransporter addnewtransporter = new com.model.AddNewTransporter();
		
		addnewtransporter.setId(id);
		String status = dao.doDeleteTransporter(addnewtransporter); 
		
		if(status.equals("Success"))
		{
			response.sendRedirect(request.getContextPath()+"/wp-content/AddTracking.jsp");
		}
	}
	if(actionCode.equals("delete_giftcard"))
	{
		int id = Integer.parseInt(request.getParameter("id"));
		com.model.AddGiftCard addgiftcard= new com.model.AddGiftCard();
		
		addgiftcard.setId(id);
		String status = dao.doDeleteGiftCard(addgiftcard); 
		
		if(status.equals("Success"))
		{
			response.sendRedirect(request.getContextPath()+"/wp-content/AddGiftCard.jsp");
		}
	}
	if (actionCode.equals("Add_pricing_table")) {
		int grid11 = Integer.parseInt(request.getParameter("grid1-1"));
		int grid12 = Integer.parseInt(request.getParameter("grid1-2"));
		int a1 = Integer.parseInt(request.getParameter("a1"));
		int r1 = Integer.parseInt(request.getParameter("r1"));
		int c1 = Integer.parseInt(request.getParameter("c1"));
		char Grade1 = 'D';
		
		Pricing obj1 = new Pricing();
		obj1.setWeight_from(grid11);
		obj1.setWeight_to(grid12);
		obj1.setAir_price(a1);
		obj1.setRailway_price(r1);
		obj1.setCar_price(c1);
		obj1.setGrade(Grade1);

		boolean status1 = dao.insert_pricing_table(obj1);

		int grid21 = Integer.parseInt(request.getParameter("grid2-1"));
		int grid22 = Integer.parseInt(request.getParameter("grid2-2"));
		int a2 = Integer.parseInt(request.getParameter("a2"));
		int r2 = Integer.parseInt(request.getParameter("r2"));
		int c2 = Integer.parseInt(request.getParameter("c2"));
		char Grade2 = 'C';
		
		Pricing obj2 = new Pricing();
		obj2.setWeight_from(grid21);
		obj2.setWeight_to(grid22);
		obj2.setAir_price(a2);
		obj2.setRailway_price(r2);
		obj2.setCar_price(c2);
		obj1.setGrade(Grade2);
		
		boolean status2 = dao.insert_pricing_table(obj2);

		int grid31 = Integer.parseInt(request.getParameter("grid3-1"));
		int grid32 = Integer.parseInt(request.getParameter("grid3-2"));
		int a3 = Integer.parseInt(request.getParameter("a3"));
		int r3 = Integer.parseInt(request.getParameter("r3"));
		int c3 = Integer.parseInt(request.getParameter("c3"));
		char Grade3 = 'B';
		
		Pricing obj3 = new Pricing();
		obj3.setWeight_from(grid31);
		obj3.setWeight_to(grid32);
		obj3.setAir_price(a3);
		obj3.setRailway_price(r3);
		obj3.setCar_price(c3);
		obj3.setGrade(Grade3);

		boolean status3 = dao.insert_pricing_table(obj3);

		int grid41 = Integer.parseInt(request.getParameter("grid4-1"));
		int grid42 = Integer.parseInt(request.getParameter("grid4-2"));
		int a4 = Integer.parseInt(request.getParameter("a4"));
		int r4 = Integer.parseInt(request.getParameter("r4"));
		int c4 = Integer.parseInt(request.getParameter("c4"));
		char Grade4 = 'A';
		
		Pricing obj4 = new Pricing();
		obj4.setWeight_from(grid41);
		obj4.setWeight_to(grid42);
		obj4.setAir_price(a4);;
		obj4.setRailway_price(r4);
		obj4.setCar_price(c4);
		obj4.setGrade(Grade4);

		boolean status4 = dao.insert_pricing_table(obj4);

	}

	if (actionCode.equals("calculate_pricing")) {

		
		int air_price, railway_price, car_price;
		String mode = request.getParameter("mode");
		String gde	=  request.getParameter("grade");
		char grade = gde.charAt(0);
		
		if (mode.equals("Air")) {
			
				
				air_price = dao.find_air_price(grade);
				
				System.out.println("Pricing counted :" + air_price);

				request.getSession(false).setAttribute("Price", air_price);
				
				/* request.setAttribute("data", final_commission); */


		}
		
		if (mode.equals("Railway")) {
			
				
				railway_price = dao.find_railway_price(grade);
				
				System.out.println("Pricing counted :" + railway_price);

				request.getSession(false).setAttribute("Price", railway_price);
				
				/* request.setAttribute("data", final_commission); */
		

		}
		
		if (mode.equals("Car")) {
			
				car_price = dao.find_car_price(grade);
				
				System.out.println("Pricing counted :" + car_price);

				request.getSession(false).setAttribute("Price", car_price);
				
				/* request.setAttribute("data", final_commission); */
			
		}

	}
	
	
	}
		
}



			
		
			
	

