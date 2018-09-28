
<%@page import="java.util.Scanner"%>
<%@page import="java.sql.Timestamp"%>
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
String str1 = str2+"server page";
//_jspservice안에서 사용. 지역변수, str1
%>
<%!
String str2 ="Java";//전역
%>

출력결과 <%=str1 %>


<%
Scanner sc = new Scanner(System.in);
Timestamp now = new Timestamp(System.currentTimeMillis());
sc.nextLine();
%>

현재는 <%=now.getHours()%>시, <%=now.getMinutes() %>분 입니다.

</body>
</html>
