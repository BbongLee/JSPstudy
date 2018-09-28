<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
isAutoFlush() : <%= out.isAutoFlush()%><br>
getBufferSize() : <%= out.getBufferSize()%><br>
getRemaining() : <%= out.getRemaining() %><br>

clearByffer() : <%= out.clearBuffer() %><br>

</body>
</html>
