<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- name parameter: <%=request.getParameter("name").toUpperCase() %> --%>
<hr>
<%
	try {
		out.println(request.getParameter("name").toUpperCase());
	} catch(Exception e) {
		out.println("name parameter error");
	}
%>

</body>
</html>