<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

초기화 파라미터 목록 : <br>
<%
 Enumeration para = application.getInitParameterNames();
	while(para.hasMoreElements()){
		String key1 = (String)para.nextElement();
		String value1 = application.getInitParameter(key1);
		
		out.println(key1+" : "+value1+"<br>");		
	}
	
%>

<%
	String name= = (String)
%>

서버 정보 : <%=application.getServerInfo() %><br>
서블릿 규약 메이저 버전 : <%=application.getMajorVersion() %><br>
서블릿 규약 마이너 버전 : <%=application.getMinorVersion() %><br>
</body>
</html>
