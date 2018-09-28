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
String[] str ={"이제훈","이기홍","윤두준","젤리통통","수지","쯔위", "태한"};
int i = (int)(Math.random()*str.length); 
%>

<%= str[i] %>이가 너무머누머ㅜ 조앙용~~~~~!!!
</body>
</html>
