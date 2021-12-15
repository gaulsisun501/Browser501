<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% request.setAttribute("name","이순신"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현언어</title>

</head>
<body>
초기화 Parameter Name(EL) : ${initParam.Name }<br>
초기화 Parameter Age(EL) : ${initParam.Age }<br>
<hr>
<%
	String param1 = application.getInitParameter("Name");
	String param2 = application.getInitParameter("Age");
	
	out.println("JSP :: application.getInitParameter('Name') : " + param1 + "<br>");
	out.println("JSP :: application.getInitParameter('Age') : " + param2);
%>
<!-- 
servelt/InitParamServlet						=> String dirPath = getInitParameter("dirPath");
servelt/InitParamServlet_Anno					=> initParams = {@WebInitParam(name="dirPath", value="c:\\test"),
			  									 				 @WebInitParam(name="userid", value="admin")}
servelt/ReadInitParameter_p123					=> String logdParam = getServletContext().getInitParameter("logEnabled");
ch05_04application/readInitParameter_p123.jsp	=> application.getInitParameter("logEnabled")
 --> 
<hr>
요청 URI : ${pageContext.request.requestURI } <br>
요청 URI(jsp) : <%=request.getRequestURI() %>

<hr>
아이디 : ${param.id }<br>

선택한 운동 : 
<c:forEach var="sports" items="${paramValues.sports}" varStatus="status">
    <c:out value="${sports}" />
</c:forEach>

<hr>
${paramValues.sports[0]}
${paramValues.sports[1]}
${paramValues.sports[2]}
${paramValues.sports[3]}
</body>
</html>


<%-- web.xml add
 	<context-param>
        <param-name>Name</param-name>
        <param-value>GZ</param-value>
    </context-param>

	<context-param>
        <param-name>Age</param-name>
        <param-value>30</param-value>
    </context-param> --%>