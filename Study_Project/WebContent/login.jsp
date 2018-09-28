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
String id = request.getParameter("id");
out.print("ID : "+id);

//DB확인작업==>session id setAttribute
if(id.equals("choi")){
	response.sendRedirect("insert.jsp?name="+id);
}
else{
	//out.println("login failed!!");
	response.sendRedirect("insert.jsp");
}
%>

</body>
</html>
