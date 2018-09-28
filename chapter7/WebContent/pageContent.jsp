<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
getRequest() : <%ServletRequest request2 = pageContext.getRequest(); %>
getResponse() : <%ServletResponse response2 = pageContext.getResponse(); %>
getOut() : <%JspWriter out2 = pageContext.getOut(); %>
getSession() : <%HttpSession session2 = pageContext.getSession(); %>
getException() : <%Exception exception pageContext.getException(); %>
<%
out.println("메롱");
out2.println("몰랑");
%>

</body>
</html>
