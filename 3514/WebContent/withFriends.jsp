<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WithFriends!</title>
<style>

</style>
</head>
<body>
	<%
		String contentpage = request.getParameter("CONTENTPAGE");
	%>
	<header>
	<jsp:include page="header.jsp" flush="false"></jsp:include>
	</header>
	<nav><jsp:include page="nav.jsp" flush="false"></jsp:include></nav>
	<section>
	<jsp:include page="<%= contentpage %>"></jsp:include>
	</section>
	<footer></footer>
</body>
</html>
