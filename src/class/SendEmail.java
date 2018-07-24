package com.mail;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendEmail {
	public String transport(String sender,String password,String reciever,String subject,String msg)
	{

	String to = reciever;
	Properties props = new Properties();
	props.put("mail.smtp.host", "smtp.gmail.com");
	props.put("mail.smtp.socketFactory.port", "465");
	props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	props.put("mail.smtp.auth", "true");
	props.put("mail.smtp.port", "465");
	
	Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
		protected PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication(sender, password);// change
																							// accordingly
		}
	});
	String status = "";
	try {
		MimeMessage message = new MimeMessage(session);
		message.setFrom(new InternetAddress(sender));// change
		message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		message.setSubject(subject);
		message.setText(msg);

		// send message
		Transport.send(message);
		status = "success";
		System.out.println("Message Sent Successfully");
		

	}catch (Exception e) {
		
		e.printStackTrace();
		status = "failed";
	 }
	return status;
	}
}