<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	String name ="정동환";
	URLEncoder.encode(name, "UTF-8");
	response.sendRedirect("incoIndex.jsp?name="+name);

%>

</body>
</html>
