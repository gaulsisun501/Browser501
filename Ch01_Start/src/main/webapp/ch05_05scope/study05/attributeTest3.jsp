<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = (String)application.getAttribute("name");
	String id = (String)application.getAttribute("id");
	String email = (String)session.getAttribute("email");
	String address = (String)session.getAttribute("address");
	String tel = (String)session.getAttribute("tel");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{
		border:1px soid black;
		margin:5px;
		padding:5px;
	}
	td{
		border:1px solid black;
	}
</style>
</head>
<body>
	<h3>영역과 속성 테스트</h3>
	<table border="1">
		<tr>
			<td colspan="2">Application 영역에 저장할 내용들</td>
		</tr>
		<tr>
			<td>이름</td><td><%=name %></td>
		</tr>
		<tr>
			<td>아이디</td><td>${applicationScope.id }</td>
		</tr>
	</table>
	<br>
	<table border="1">
		<tr>
			<td colspan="2">Session 영역에 저장할 내용들</td>
		</tr>
<%-- 	<tr><td>email주소</td><td><%=session.getAttribute("email") %></td></tr>
		<tr><td>집주소</td><td><%=address %></td></tr>
		<tr><td>전화번호</td><td><%=tel %></td></tr>
 --%>	
 		<%
 		Enumeration<String> e = session.getAttributeNames();
 		while(e.hasMoreElements()){
 			String name1 = e.nextElement();
 			String value = (String)session.getAttribute(name1);
		%>
 		<tr>
			<td><%=name1 %></td><td><%=value %></td>
		</tr>
		<%
 		}
 		%>	
	</table>
</body>
</html>