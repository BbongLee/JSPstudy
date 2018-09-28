<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>intag1</title>
</head>
<body>
intag1.jsp파일!!!!!!<br>

<%
	String irum = request.getParameter("irum");
%>

<%= "넘겨진 값은 "+ irum %>
</body>
</html>
