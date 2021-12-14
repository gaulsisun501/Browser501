<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//request에 대한 새로운 세션을 생성후 리턴
	session = request.getSession(true);
	String id = request.getParameter("id");
	request.getSession().setAttribute("id", id);
	//session.setAttribute("id", id);
%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body> 
<h3>Session 생성 </h3> 
새로운 세션이 생성되었습니다.<BR> 
세션id : <%=session.getId() %><br>
<a href="test2.jsp">세션내용보기</a>
</body> 
</html> 