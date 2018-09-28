<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script language="javascript">
function check(){
	if(document.mem.id.value==""){
		alert("ID를 입력하세요");
		document.mem.id.focus();
		return;
	}
	document.mem.submit();
}
</script>
<pre>

 jsp 에서 기본적으로 제공되는 내장객체는 9개,
 request, responce, out.: 입출력과 과련
 session, application, pageContext : g현재 실행되는 페이지의 외부환경 ㅈㅇ보와 관련
 page:jsp
 
 
</pre>
<form method="post" name="mem" action="memberProc.jsp">
아이디 <input type="text" name="id"><br>
비밀번호<input type="password" name="pw"><br>
이름 <input type="text" name="name"><br>
직업 <select name="job">
<option value="학생">학생</option>
<option value="교사">교사</option>
<option value="기타">기타</option>
<br>
</form>

</body>
</html>
