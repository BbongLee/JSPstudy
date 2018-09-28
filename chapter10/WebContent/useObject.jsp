<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
useObject.jsp


<jsp:useBean id="member" class="mirim.hs.kr.MemberInfo" scope="request"/>
	<jsp:getProperty name="member" property="id"/>
	<jsp:setProperty name="member" property="name" value="손현우"/>
	
	<%=member.getName() %>
</body>
</html>
