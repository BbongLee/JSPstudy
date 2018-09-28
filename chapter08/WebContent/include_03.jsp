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
String name = "손나은";
String pageName="include_04.jsp";
%>

현재페이지는 include_03.jsp 상단입니다 <br>
<hr>

<jsp:include page="<%=pageName%>" flush="false">
	<jsp:param name="name" value="<%=name %>"/>
	<jsp:param name="pageName" value="<%=pageName %>"/>
</jsp:include>


<hr>
현재페이지는 include_03.jsp 하단입니다.<br>
</body>
</html>
