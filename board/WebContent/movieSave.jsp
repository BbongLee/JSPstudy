<%@page import="java.io.FileWriter"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>movie</title>
    <link href="css/new.css" rel="stylesheet" type="text/css">
    <script src="css/yolo.js"></script>
</head>
<body>
<%
String food = request.getParameter("movie");

PrintWriter writer = null;
try{
	String filePath = application.getRealPath("/WEB-INF/lib/movieFood.txt");
	out.println(filePath);
	writer = new PrintWriter(new FileWriter(filePath, true));
	writer.println(food);
	
	out.println("<font color='red'>게시물</font>저장되어쑤");
	writer.flush();
}
catch(Exception e){
	System.out.print(e);
	out.println("오류 발생"+e);
}
%>

</body>
</html>