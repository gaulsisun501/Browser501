<%@page import="java.util.Set"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<b>request.getParameter()사용</b><br>
name 파라미터 : <%=request.getParameter("name")%><br>
address 파라미터 : <%=request.getParameter("address") %><br>
pet 파라미터 : <%=request.getParameter("pet") %><br>
<hr>
<b>request.getParameterValues()사용</b><br>
<%
String[] petArray = request.getParameterValues("pet");
if(petArray!=null){
	for(int i=0; i<petArray.length; i++){
%>
		<%=petArray[i] %>
<%		
	}
}
%>

<hr>
<b>request.getParameterNames()사용</b><br>
<% 
Enumeration e = request.getParameterNames();
while(e.hasMoreElements()){
	String name = (String)e.nextElement();
%>
	<%=name %>
<%
}
%>

<hr>
<b>request.getParameterMap()사용</b><br>
<%
Set<String> keySet = request.getParameterMap().keySet();
for(String key: keySet) {
%>
	<%=key %> : <%=request.getParameter(key) %>;<br>
<%	
}
%>
</body>
</html>