<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
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
	String filename = request.getParameter("FILE_NAME");
%>

<h3>파일 이름 : <%= filename %></h3>
<%
	BufferedReader reader = null;
	try{
		String filePath = application.getRealPath("/WEB-INF/movie/"+filename);
		reader = new BufferedReader(new FileReader(filePath));
		
		while(true){
			String str = reader.readLine();
			if(str==null)break;
			out.print(str+"<br>");
		}
	}catch(Exception e){
		out.println("파일을 읽을 수 옶서요");
	}
%>
<br><br>
<a href="choice.jsp">[글 목록]</a>
</body>
</html>
