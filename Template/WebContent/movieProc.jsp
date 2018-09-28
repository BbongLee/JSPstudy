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
<center>
<img src="image/movie1.jpg">
</center>

<%
	BufferedReader reader = null;
	try{
		String filePath = application.getRealPath("/WEB-INF/movie.txt");
		//out.println(filePath);
		reader = new BufferedReader(new FileReader(filePath));
		while(true){ //txt파일 읽어주기
			String str = reader.readLine();
			if(str==null)break;
			out.println(str+"<br>");
		}//while
	}catch(Exception e){
		out.println("파일을 찾을 수 없습니다.");
	}

%>
</body>
</html>
