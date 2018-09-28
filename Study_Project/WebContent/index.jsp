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
%>

index페이지입니다.<br>
<b>이름 : <%=name %></b><br>




</body>
</html>
