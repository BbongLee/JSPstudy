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
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		//System.out.println("ID = "+id);
		//System.out.println("PW = "+pw);
		
		//out이건 설정해야한다구 하지만 내장객체라서 에러가안나요~~~ 맘대로하세용,
		//out.println("ID = "+id);
		//out.println("PW = "+pw);
	%>
	<%--
	ID = <%= id %><br> 
	PW = <%= pw %><br>
	
	 
	<%
	if(id.equals("bong")){
		if(pw.equals("1234")){
			out.println("[로그인 되었습니다.]");
		}else{
			out.println("[비밀번호를 확인하세요.]");
		}
	}else{
		out.println("[회원이 아닙니다.]");
	}
	
	%>
	
	 --%>
	<%
	if(id.equals("bong")){
		if(pw.equals("1234")){%>
	<jsp:forward page="loginOK.jsp" />
	<!-- <jsp:forward page="loginOK.jsp"></jsp:forward> 와 동일, 위 문장 권고! -->
	<%}else{%>
	<jsp:forward page="loginForm.jsp" />
	<%}
	}else{%>
	<jsp:forward page="insert.jsp" />
	<%}
	%>

</body>
</html>














