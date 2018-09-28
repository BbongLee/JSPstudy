<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page info = "copyright by Bong" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Timestamp now = new Timestamp(System.currentTimeMillis());
SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
String strDate = format.format(now);
%>
오늘은 <%=strDate%>입니다.
</body>
</html>
