<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
	Date time = new Date();
	SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session</title>
</head>
<body>
<img src="session.png"><br>
세션id: <%=session.getId() %><br>
<%
	time.setTime(session.getCreationTime());
	out.println("세션생성시간: "+f.format(time)+"<br>");
	time.setTime(session.getLastAccessedTime());
	out.println("최근접근시간: "+f.format(time)+"<br>");
	
	session.setAttribute("memberid", "abcd");
	session.setAttribute("name", "hong");
	
	String name = (String)session.getAttribute("name");
	out.println("회원명 : " + name + "<br> 세션을 종료합니다.");
	session.setMaxInactiveInterval(60*60);	//시간뒤 세션종료
	session.invalidate();					//바로 세션종료
	
%>
</body>
</html>