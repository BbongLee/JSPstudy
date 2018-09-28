<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	안녕하세요
	<%
	String name="이제훈";
	out.println(name+"의 홈페이지 입니다.");
	
	for(int i=1; i<7; i++){
		out.print("<h"+i+">");
		out.print(name+" 결혼하자~~~~!!!!");
		out.print("</h"+i+">");
	}//for
%>
	<hr>
	<%= new Date() %>

	<br>
	<%
		int a=0, sum=0;
		do{
				a++;
				sum +=a;				
		}while(a<10);
	%>

1~10까지의 합은 <%= sum %>이에요!
	<br>
<%= name %>님의 전화번호는 <%= tel %>입니다.
	<br>
<%!
String tel = "010-1234-1234";
%>
	<br>
	
	<%!
	public int add(int m, int n){
		return m+n;
	}
	%>
<%
out.println(add(3,8));
%>

	<br>
	
	<%= add(25,23) %>

</body>
</html>
