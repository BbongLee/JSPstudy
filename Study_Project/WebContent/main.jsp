<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
</head>
<body>

<%@ include file="top.jsp" %>

main.jsp파일이에요. <br>
<i>include file 지시어(=디렉티브, @) 여러 jsp파일에서 공통으로 사용되는 부분을 
별도로 만들어 필요할 때마다 불러 쓴다</i>
<br>
<p>본문처리</p>
<b>==============액션태그를 이용한 include==============</b>
<br>

<font style="font-size:13px; color:blue;">
	<jsp:include page="intag.jsp"/>
	<br>
	<jsp:include page="intag1.jsp">
	<jsp:param name="irum" name="korea" value="korea"/> 
	<!-- name:변수명 , value:name의 값 -->
	</jsp:include>

</font>

<b>==============액션태그를 이용한 include==============</b>
<br>

<%@ include file="bottom.jsp" %>

</body>
</html>
