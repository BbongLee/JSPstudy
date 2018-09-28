<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
getServerInfo() : <%=application.getServerInfo() %><br>
getMimeType(fileName) : <%=application.getMimeType("test.html") %><br>
getRealPath(path) : <%=application.getRealPath("/chapter07/ii.jpg") %><br>
log(message) : <%=log("히히ㅣ히") %>



</body>
</html>
