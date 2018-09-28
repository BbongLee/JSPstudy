<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>What Color is LOVE?</title>
<style>
#main{
 	border: 15px solid green;
    width : 50%;
    height : 700px;
    padding: 10px;
    border-radius: 15px 50px 30px 5px;
    margin : auto;
    margin-top:30px;
    vertical-align:middle;
}
#content{
	border: 5px solid yellow;
    width : 80%;
    height : 500px;
    padding: 20px;
    padding-top:10px;
    border-radius: 30px;
    margin : auto;
    margin-top:15%;
    vertical-align:middle;
}
</style>
</head>
<body>
	<%
		String contentpage = request.getParameter("CONTENTPAGE");
	%>

	<div id="main">
	<div id="content">
	<jsp:include page="<%= contentpage %>"></jsp:include>
	</div>
	</div>
</body>
</html>
    