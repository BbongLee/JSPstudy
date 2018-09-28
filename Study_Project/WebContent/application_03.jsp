<%@page import="java.util.Enumeration"%>
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
	String key = request.getParameter("key");
	String value =request.getParameter("value");
	if(key!=null&&value!=null){
	application.setAttribute(key, value);
	}
	Enumeration en = application.getAttributeNames();
	//while(en.hasMoreElements()){
		//String key2 = (String)
		
	//}
	
%>
<pre>
* 웹 어플리케이션은 네개의 영억을 갖는다.
- PAGE영역 : 하나의 JSP페이지를 처리할 때 상ㅇ되는 영역
- REQUEST :  하나의 HTTP요청을 처리할 때 사여ㅛㅇ한느영역
- SESSION : 하나의 웹프라우저와 관련된 영역
- APPLICATION : 하나의 웹 어플리케이션과 관련된 영역

*기본 객체별로 속서으이 활용
- pageContext : PAGE영역을 담당, 하나의 JSP페이지 내에서 공유된 값을 저장.
	주로 커스텀 태그에서 새로운 변수를 추가할 때 사용
- request : REQUEST 영역을 담당. 한번의 요청을 처리하는ㄴ데 사용된느 모든 JSP페이지에서 공유된 값을 전달한다.
	주로 하나의 요청을 처리하는데 사용되는 JSP페이지 사이에서 정보를 전달하기 위해 사용된다.
- session : SESSION 영역을 담당. 한 사용자(웹브라우저)와 관련된 정보를 JSP 페이지를 공유하기 위해서 상요된다.
	주로 사용자의 로긍니 정보와 같은 것들을 저장한다.
- application : APPLICATION영역을 담당. 모든 사용자와 관련해서 공유할 정보를 저장한다.
	임시 디렉터리 경로와 같은 웹 어플리케이션의 설정 정보를 주로 저장한다

</pre>

</body>
</html>
