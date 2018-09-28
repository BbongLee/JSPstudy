<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!String color;
	String fileName;%>
	<%
		request.setCharacterEncoding("UTF-8");
		String word = request.getParameter("word");
		String palate = request.getParameter("palate");

		switch (palate) {
		case "c0":
			color = "#ff0000";
			break;
		case "c1":
			color = "#FF5E00";
			break;
		case "c2":
			color = "#FFBB00";
			break;
		case "c3":
			color = "#FFE400";
			break;
		case "c4":
			color = "#ABF200";
			break;
		case "c5":
			color = "#1DDB16";
			break;
		case "c6":
			color = "#00D8FF";
			break;
		case "c7":
			color = "#0054FF";
			break;
		case "c8":
			color = "#0100FF";
			break;
		case "c9":
			color = "#5F00FF";
			break;
		default:
			break;
		}
		String name = request.getParameter("nickName");

		if (word.equals("love")) {
			fileName = "love";
			out.println("<script>alert('다음 페이지로 갈까요?'); location.href='color2.jsp';</script>");
			//out.println("<h3>당신이 생각하는 사랑의  색은 " + color + "</h3>");
		}else if (word.equals("sad")) {
			fileName = "sad";
			out.println("<script>alert('다음 페이지로 갈까요?'); location.href='color3.jsp';</script>");
			//out.println("<h3>당신이 생각하는 슬픔의  색은 " + color + "</h3>");
		}else if (word.equals("hope")) {
			fileName = "hope";
			out.println("<script>alert('다음 페이지로 갈까요?'); location.href='color4.jsp';</script>");
			//out.println("<h3>당신이 생각하는 희망의  색은 " + color + "</h3>");
		}else if (word.equals("hate")) {
			fileName = "hate";
			out.println("<script>alert('다음 페이지로 갈까요?'); location.href='color5.jsp';</script>");
			//out.println("<h3>당신이 생각하는 증오의  색은 " + color + "</h3>");
		}else if (word.equals("passion")) {
			fileName = "passion";
			out.println("<script>alert('결과 페이지로!'); location.href='showColor.jsp';</script>");
			//out.println("<h3>당신이 생각하는 열정의  색은 " + color + "</h3>");
		}
	
	%>  

	<div style="color:<%=color%>">
		<%=fileName%>
	</div>

</body>
</html>
