<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 	request.setCharacterEncoding("utf-8");
// 	response.setContentType("text/html;charset=utf-8");
%>
<%
	String selRadio = request.getParameter("fav_language");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
selRadio : <%=selRadio %><br>
</body>
</html>