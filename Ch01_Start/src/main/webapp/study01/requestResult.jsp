<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String num = request.getParameter("id");
	String name = request.getParameter("name");
	String grade = request.getParameter("grade");
	String subject = request.getParameter("subject");

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>학생정보</h1>
<table border = '1px' cellpadding='10px'>
	<tr>
		<td>학번</td>
		<td><%=request.getParameter("id") %></td>
	</tr>
	<tr>
		<td>이름</td>
		<td>${param.name}</td>
	</tr>
	<tr>
		<td>학년</td>
		<td><%=grade %></td>
	</tr>
	<tr>
		<td>과목</td>
		<td><% out.println(subject); %></td>
	</tr>
</table>
</body>
</html>