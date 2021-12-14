<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
1~100 합계 : ${RESULT }<br>
<%
	request.getAttribute("RESULT");
%>
</body>
</html>