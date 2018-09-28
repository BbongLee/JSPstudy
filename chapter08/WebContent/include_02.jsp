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
 String pageName = request.getParameter("pageName");
 pageName += ".jsp";
%>
현재페이지는 include_02.jsp 상단입니다.<br>
<hr>

<jsp:include page="<%=pageName%>" flush="false"/>

<hr>
현재페이지는 include_02.jsp 하단입니다.<br>
</body>
</html>
