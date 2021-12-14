<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>Session 정보 </h3> 
<%-- Attribute id 값 : <%=session.getAttribute("id") %> --%>
<%-- 세션생성시간: <%=session.getCreationTime() %> --%>
<%-- 세션마지막접속시간: <%=session.getLastAccessedTime() %> --%>
Attribute id 값 : <%=request.getSession().getAttribute("id") %><br>
isNew():<%=session.isNew() %><br>
세션id : <%=session.getId() %><br>
세션생성시간: <%=new java.util.Date(session.getCreationTime()).toString() %><br>
세션마지막접속시간: <%=new java.util.Date(session.getLastAccessedTime()).toString() %><br>
<a href="test3.jsp">세션삭제하기</a>
</body>
</html>
