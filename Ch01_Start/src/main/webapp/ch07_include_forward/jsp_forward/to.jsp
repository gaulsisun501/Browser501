<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP::forward_179</title>
</head>
<body>
<img src="../jsp_forward.jpg"><br>
이 페이지는 to.jsp페이지 입니다.1<br>
Jsp(id) : <%=request.getParameter("id") %><br>
EL(id) : ${param.id }<hr>

Jsp(number) : <%=request.getAttribute("number") %><br>
EL(number) : ${number }<hr>

Jsp(name) : <%=request.getParameter("name") %><br>
EL(name) : ${param.name }<hr>
</body>
</html>