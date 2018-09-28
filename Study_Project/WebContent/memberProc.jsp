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
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String job =request.getParameter("job");


%>
아이디 <%=id %><br>
비번 <%=pw %><br>
이름 <%=name %><br>
직업 <%=job %><br>
<hr>

IP:<%=request.getRemoteHost() %><br>
브라우저:<%=request.getHeader("User-Agent") %><br>
전송방식 : <%=request.getMethod() %><br>
<p>서버의 버퍼 크기 : <% %>
</body>
</html>
