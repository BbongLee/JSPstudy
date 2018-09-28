<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
    box-sizing: border-box;
}

body{
font-size:120%;
}
input[type=text], input[type=email],select, textarea{
    width: 90%;
    padding: 12px;
    border: 1px solid #ccc;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}
input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

/* Style the container/contact section */
.container {
    border-radius: 5px;
    background-color: white;
    width:90%;
    margin:auto;
    padding:10px;
}

.container div {
    width:50%;
    margin: 6px auto;
    padding: 20px;
    height:100%;
}
.row:after {
    content: "";
    display: table;
    clear: both;
}

@media screen and (max-width: 600px) {
    .column, input[type=submit] {
        width: 100%;
        margin-top: 0;
    }
}
</style>
</head>
<body>
<article id="artQuest">
<div class="container">
  <div style="text-align:center">
    <h2>견적 문의</h2>
      <form action="questMisoSave.jsp">
        <label for="name">성함</label><br>
        <input type="text" id="name" name="name" placeholder="홍길동" required><br>
        <label for="email">이메일</label><br>
        <input type="email" id="email" name="email" placeholder="abc1234@gmail.com" required><br>
        <label for="phone">전화번호</label><br>
        <input type="text" id="phone" name="phone" placeholder="010-0000-0000" required><br>
        <label for="inquireType">문의종류</label><br>
        <select id="inquireType" name="inquireType" required>
          <option value="rem">리모델링</option>
          <option value="int">인테리어</option>
          <option value="ect">기타</option>
        </select><br>
        <label for="subject">내용</label><br>
        <textarea id="subject" name="subject" placeholder="내용" style="height:170px" required></textarea><br>
        <input type="submit" value="이메일 보내기">
      </form>
 	 </div>
	</div>
</article>
</body>
</html>


