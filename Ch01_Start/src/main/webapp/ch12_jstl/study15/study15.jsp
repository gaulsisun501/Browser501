<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>JSTL Core 라이브러리 실습(배열저장:1~10)</h3>
<c:set var="intArray" value="<%= new int[]{1,2,3,4,5,6,7,8,9,10} %>"/>
<c:forEach var="intValue" items="${intArray}">
	${intValue }&nbsp
	<c:out value="${n }"></c:out>
</c:forEach><br>
<c:forEach var="intValue" items="${intArray}" begin="0" end="6">
	${intValue }&nbsp
	<c:out value="${n }"></c:out>
</c:forEach><hr>

<h3>JSTL Core 라이브러리 실습2(ArrayList:홍길동,이순신,유관순)</h3>
<%
ArrayList<String> nameList = new ArrayList<String>();
nameList.add("홍길동");
nameList.add("이순신");
nameList.add("유관순");
%>
<c:set var="names" value="<%=nameList%>"/>
<c:forEach var="name" items="${names }">
	${name}&nbsp
	<c:out value="${n }"></c:out>
</c:forEach><hr>

<h3>JSTL Core 라이브러리 실습3(String:A,B,C,D)</h3>
<c:forTokens var="charValue" items="A,B,C,D" delims=",">
	${charValue }<br>
	<c:out value="${n }"></c:out>
</c:forTokens>

</body>
</html>