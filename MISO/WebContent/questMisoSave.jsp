<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
   String result;
	String name=  request.getParameter("name");
	String email=  request.getParameter("email");
	String phone=  request.getParameter("phone");
	String inquireType=  request.getParameter("inquireType");
	String subject=  request.getParameter("subject");

   String host = "10.96.123.187";
   Properties properties = System.getProperties();
   properties.setProperty("mail.smtp.host", host);
   Session mailSession = Session.getDefaultInstance(properties);

      MimeMessage message = new MimeMessage(mailSession);
      message.setFrom(new InternetAddress(email));
      message.addRecipient(Message.RecipientType.TO,new InternetAddress("jebon0722@gmail.com"));
      message.setSubject(name+" / "+inquireType);
      message.setText(subject);
      Transport.send(message);
%>