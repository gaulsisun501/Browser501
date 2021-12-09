<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
application Scope/Attribute<br>
application : Jsp 기본객체중의 하나<br>
			: javax.servlet.servletcontext : <br>
			: 서버가 시작해서 종료될때까지 일련의 변수를 공유<br>
<img src=""><br>
<img src=""><br>
서버정보::<%=application.getServerInfo() %><br>
서블릿 메이저 버전::<%=application.getMajorVersion() %><br>
서블릿 마이너 버전::<%=application.getMinorVersion() %><br>
<hr>
::[getInitParameter()]<br>
<%
	String logdParam = application.getInitParameter("logEnabled");
	String debugParam = application.getInitParameter("debugLevel");
	
	out.println("logdParam : " + logdParam + "<br>");
	out.println("debugParam : " + debugParam);
%>
</body>
</html>