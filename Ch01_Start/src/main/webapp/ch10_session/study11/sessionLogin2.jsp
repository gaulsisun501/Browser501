<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id"); 
	session.setAttribute("id", id);
	
	request.setAttribute("req", "5678");	//request영역은 include, forward만 가능
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>로그인되었습니다.<h1>
<h1>로그인 아이디: <%=id %></h1>
<a href="sessionLogout.jsp?id2=abcd&pw2=1234">로그아웃</a>
</body>
</html>