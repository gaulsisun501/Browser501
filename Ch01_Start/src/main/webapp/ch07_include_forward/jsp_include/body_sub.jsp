<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jsp::include(168)</title>
</head>
<body>
body_sub에서 name파라미터값 :: ${param.name }<br>
name파라미터 목록:<br>
<ul>
<%
	String[] names = request.getParameterValues("name");
	for(String name : names){
		out.println("<li>"+name+"</li>");
	}
%>
</ul>
<%-- body_sub에서 name1파라미터값 :: ${param.name1 }<hr> --%>
body_sub에서 name1파라미터값 ::<%=request.getAttribute("name1") %>
<hr>
</body>
</html>