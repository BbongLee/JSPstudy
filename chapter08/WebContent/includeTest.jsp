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
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
%>
<%=name %>이 보고싶어!!!ㅠㅠㅠㅠㅠㅠ
</body>
</html>
