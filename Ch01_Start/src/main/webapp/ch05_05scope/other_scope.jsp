<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>::JSP::</h3>
pageContext2 out :<%=pageContext.getAttribute("page") %><br> 
request2 out : <%=request.getAttribute("request") %><br>
session2 out : <%=session.getAttribute("session")%><br>
application2 out : <%=application.getAttribute("application") %><br>
<hr>
<h3>EL</h3>
pageContext3 out :${pageScope.page}<br> 
request3 out : ${requestScope.request}<br>
session3 out : ${sessionScope.session}<br>
application3 out : ${applicationScope.application}<br>
</body>
</html>