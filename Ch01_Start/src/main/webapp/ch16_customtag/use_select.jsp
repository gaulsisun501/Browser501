<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="tf" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<tf:select name="code" rgb="RGB모드" wb="흑백모드"/>
<tf:select name="genre" rock="락" ballad="발라드"  metal="메탈"/>
</body>
</html>


<!-- <body>
<select name="code">
	<option value="wb">흑백모드</option>
	<option value="rgb">RGB모드</option>
	</select>
<select name="genre">
	<option value="rock">락</option>
	<option value="ballad">발라드</option>
	<option value="metal">메탈</option>
	</select>
</body> -->