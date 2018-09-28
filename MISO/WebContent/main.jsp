<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>미소 인테리어</title>
<link rel="stylesheet" type="text/css" href="miso.css">
<style>
body{
background-color:#E4F0F6;
/*#F9F0E7*/
color:#263959;
}
#footer {
  right: 0;
  bottom: 0;
  left: 0;
  padding: 1rem;
  background-color: #fff;
  text-align: center;
  margin-top:1em;
}

</style>
</head>
<body>
	<%
		String contentpage = request.getParameter("CONTENTPAGE");
	%>
<header id="header">
<nav id="navMenu">
        <ul id="ulMenu">
            <li>
                <a href="index.jsp" class="menu">HOME</a>
            </li>
            <li>
                <a href="aboutMiso.jsp" class="menu">회사 소개</a>
            </li>
            <li>
            	<a href="index.jsp" class="menu"><img src="img/miso.png" width="250px;"></a>
            </li>
            <li>
                <a href="constCase.jsp" class="menu">시공 사례</a>
            </li>
            <li>
                <a href="questMiso.jsp" class="menu">견적 문의</a>
            </li>
        </ul>
    </nav>
    </header>
    <jsp:include page="<%= contentpage %>"></jsp:include>
    <footer id="footer">
    <p>Copyright (c) MisoInterior & 3514 이예본</p>
    </footer>
</body>
</html>