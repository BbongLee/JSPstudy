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
request.setCharacterEncoding("UTF-8");

String name = request.getParameter("name");
String people = request.getParameter("people");
String choice ="";

choice=people;
out.println(name+"님은 "+choice+"님과 결혼하고 싶군요!!");

%>
</body>
</html>
