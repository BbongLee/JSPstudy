<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력받은 숫자 비교</title>
</head>
<body>
<h2>입력바ㄷ은 수샂가 10보다 작거나 같ㅇ느지 비교</h2>
<% 
request.setCharacterEncoding("UTF-8");
String num = request.getParameter("number");
int number = Integer.parseInt(num);

if(number <=10){
	out.println("입력받은 숫자는 "+num+"입니다.");
	}
else{%>
	<%=num %>은 너무 ㄴ많아요!
	<% 
	}
%>
</body>
</html>
