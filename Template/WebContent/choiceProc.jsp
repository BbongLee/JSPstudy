<%@page import="java.io.File"%>
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

	String dirPath = application.getRealPath("/WEB-INF/movie"); //내장객체 , 실제 경로가져오기(상대)!!!!
	//out.println(dirPath);
	File dir = new File(dirPath);
	String filenames[] = dir.list();
	/*
	for(int i=0; i<filenames.length;i++){
		out.println(filenames[i]);
		out.println("<br>");
	}
	*/
%>

<h3>규정쌤의 추천 영화 Best 3!! </h3>
<%
	for(String filename : filenames){ //간단한 포문!%>
		<a href="movieReader.jsp?FILE_NAME=<%=filename%>"><%=filename%></a><br>
	<%}
%>
</body>
</html>
