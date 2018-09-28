<%@page import="mirim.hs.kr.TestBean"%>
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
	TestBean test = new TestBean();
	test.setName("모모");
	out.println(test.getName());
%>

<jsp:useBean id="test1" class="mirim.hs.kr.TestBean" scope="page"/>
<jsp:setProperty name="test1" property="name" valeu="사나"/>


<jsp:getProperty property="name" name="test1"/>
<jsp:getProperty property="name" name="test"/>
</body>
</html>
