<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인창</title>
</head>
<body>
<h2>회원가입</h2>
<form action="formProc.jsp" id="log" method="post">
	이름 : <input type="text" name="name" size=11><br>
	ID : <input type="text" name="id" size=11><br>
	비밀번호 : <input type="password" name="pw" size=11><br>
	성별 : 
		남<input type="radio" name="gender" value="male" size=11 checked>&nbsp;
		여<input type="radio" name="gender" value="female" size=11><br>
	메일 수신 여부 : 
		공지 메일<input type="checkbox" name="mail1"> 
		광고 메일 <input type="checkbox" name="mail2"> 
		배송 확인 메일 <input type="checkbox" name="mail3"><br>
	직업 : 
	<select name="job">
		<option>회사원</option>	
		<option>학생</option>
		<option>교사</option>
		<option>주부</option>
	</select><br><br>
	<br>
	<input type="submit" value="확인"><input type="reset" value="리셋">
</form>
</body>
</html>
