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
<%
String name[] ={"프로토콜 이름", "서버 이름", "Method방식", "컨텍스트 경로","URI","접속한 클라이언트의 IP"};
String value[] = {request.getProtocol(), request.getServerName(),request.getMethod(),request.getContextPath(),
		request.getRequestURI(),request.getRemoteAddr()};

Enumeration<String> en = request.getHeaderNames();
while(en.hasMoreElements()){
	String key = en.nextElement();
	String val = request.getHeader(key);
	out.println(key+"  :  "+val+"<br>");
}
%>

<%
out.println(name[0]+" "+value[0]);
for(int i=0;i<name.length;i++){
	out.println(name[i]+" : "+value[i]+"<br>");
}
%>
</body>
</html>
