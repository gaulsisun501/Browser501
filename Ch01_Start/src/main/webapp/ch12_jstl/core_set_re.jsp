<%@page import="java.util.HashMap"%>
<%@page import="ch12_jstl.Member"%>
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
<%
	Member m = new Member();
	HashMap<String, String> hm = new HashMap<>();
%>
<c:set var="member" value="<%=m %>"/>
<c:set target="${member }" property="name" value="홍길동"/>
<c:set var="pref" value="<%=hm %>"/>
<c:set var="favoriteColor" value="${pref.color }"/>

회원이름 : ${member.name }<br>
좋아하는 색:${favoriteColor }<br>


</body>
</html>