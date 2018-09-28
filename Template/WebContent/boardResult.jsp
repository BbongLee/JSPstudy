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
	String str = request.getParameter("send");
if(str.equals("ok")){
	out.println("<font color='red'>게시물</font>저장되어쑤");
}else{
	out.println("<font color='red'>게시물</font>저장 할 수 없ㄷ더");
}
%>

<meta http-equiv='refresh' content='3; url=main.jsp'>
</body>
</html>
