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
 String pageName = request.getParameter("pageName");
 pageName += ".jsp";
%>

현재 페이지는 <%=pageName %>입니다.
<%=name %> 사랑해요!
</body>
</html>
