<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션 intag</title>
</head>
<body>

짝수 출력 :
<%
for (int i=2;i<=10;i+=2)
{
	out.print(i+" ");	
}
%>
<br>

<%="**액션 태그의 역할 : 각 페이지 간 이동 또는 빈즈 사용 등에 활용" %>
<br>
<%= "**액션 태그의 종류 : include, forward, plug-in, useBean, setProperty, getProperty" %>
<br>



</body>
</html>
