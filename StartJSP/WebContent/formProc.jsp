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
request.setCharacterEncoding("UTF-8"); //post일때 한글이 나오기 위해 모든 페이지에 꼮!!!!!!!!!!!!!! //

String name = request.getParameter("name");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String gend = request.getParameter("gender");
if(gend.equals("female")){ //gend=="female"안딤!!!!스트링!!!!!!!!!!!!!!!
	gend="여자";
}else{
	gend="남자";
}
String mail1 = bon(request.getParameter("mail1"));
String mail2 = bon(request.getParameter("mail2"));
String mail3 = bon(request.getParameter("mail3"));

String job = request.getParameter("job");

%>
이름 : <%= name %><br>
아이디 : <%= id %><br>
비번 : <%= pw %><br>
성별 : <%= gend %><br>
<br><br>
공지 메일 : <%= mail1 %><br>
광고 메일 : <%= mail2 %><br>
배송확인 메일 : <%= mail3 %><br>
직업 : <%= job %><br>
<%! 
//메소드 선언!!!!! 변수를 선언할땐 전역변수! <% % > 일땐 지역변수..
public String bon(String notice){
	if(notice==null)
		return "받지않음";
	else return "받음";
}

%>
</body>
</html>
