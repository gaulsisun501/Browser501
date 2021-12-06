<%@page import="org.apache.catalina.util.ParameterMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<b>request.getParameter() 메서드 사용</b><br>
name : <%=request.getParameter("name") %><br>
address : <%=request.getParameter("address") %><br>

<b>request.getParameterVaulues() 메서드 사용</b><br>
<%
	String[] values = request.getParameterValues("pet");
	if(values != null){
		for(int i=0; i<values.length; i++){
// 			out.println(values[i]);
%>	
	<%= values[i] %>
<%		
		}
	} 
%><br>

<b>request.getParameterNames() 메서드 사용</b><br>
<%
	Enumeration paramEnum = request.getParameterNames();
	while(paramEnum.hasMoreElements()){
		String name = (String)paramEnum.nextElement();	
%>	
		<%=name %>
<%		
	}
%><br>

<b>request.getParameterMap() 메서드 사용</b><br>
<%
	Map parameterMap = request.getParameterMap();
	String[] nameParam = (String[])parameterMap.get("name");
	if(nameParam != null) {
%>	
		name = <%=nameParam[0] %>
<%		
	}
%><br>

</body>
</html>