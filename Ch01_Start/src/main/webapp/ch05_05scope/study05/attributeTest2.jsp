<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String email = request.getParameter("email");
	String address = request.getParameter("address");
	String tel = request.getParameter("tel");
	
	session.setAttribute("email", email);
	session.setAttribute("address", address);
	session.setAttribute("tel", tel);
	
	String name = (String)application.getAttribute("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>영역과 속성 테스트</h3><br>
<b><%=name %>의 정보가 모두 저장 되었습니다.</b><br>
${param.name }의 정보가 모두 저장 되었습니다.<br>
<a href="attributeTest3.jsp">확인하러 가기</a>
</body>
</html>