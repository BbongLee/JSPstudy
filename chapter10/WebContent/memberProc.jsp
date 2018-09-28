<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="memberInfo" class="mirim.hs.kr.MemberInfo"></jsp:useBean>
	<jsp:setProperty name="memberInfo" property="*"/>
	<jsp:setProperty name="memberInfo" property="password" value="<%=memberInfo.getId() %>"/>
	
	<table border="1">
	<tr>
	<td>아이디</td>
	<td><jsp:getProperty property="id" name="memberInfo"/> </td>
	<td>비밀번호</td>
	<td><jsp:getProperty property="password" name="memberInfo"/> </td>
	</tr>
	<tr>
	<td>이름</td>
	<td><jsp:getProperty property="name" name="memberInfo"/> </td>
	<td>이메일</td>
	<td><jsp:getProperty property="email" name="memberInfo"/> </td>
	</tr>
	<tr>
	<td>주소</td>
	<td colspan=3><jsp:getProperty property="address" name="memberInfo"/></td>
	</tr>
	
	
	</table>
</body>
</html>
