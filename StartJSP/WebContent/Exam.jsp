<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>



<meta charset="UTF-8">
<title>로그인창</title>
</head>
<body>
<form id="log">
이름 : <input type="text" name="name" size=11><br>
ID : <input type="text" name="id" size=11><br>
비밀번호 : <input type="password" name="pw" size=11><br>
성별 : 남<input type="radio" name="gender" value="male" size=11 checked>&nbsp; 여<input type="radio" name="gender" value="female" size=11><br>
메일 수신 여부 : 공지 메일<input type="checkbox" name="mail1" value="공지"> 광고 메일 <input type="checkbox" name="mail2" value="광고"> 배송 확인 메일 <input type="checkbox" name="mail3" value="배송확인"><br>
직업 : <br>
</form>
</body>
</html>
