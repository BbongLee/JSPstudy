`0<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글쓰기 - 입력화면</title>
</head>
<body>
<h2>글쓰기</h2>
<form action="boardProc.jsp" method="post">
이름 : <input type="text" name="name"><br>
제목 : <input type="text" name="title"><br><br>
<textarea rows="5" cols="30" name="content"></textarea>
<!-- 보통 content는 Post방식 이용 -->
<input type="submit" value="저장">
<!-- 버튼이라면 JavaScript로 유효성체크 가능,,,,필요없으니까 Submit -->
<input type="reset" value="취소">

</form>
</body>
</html>
