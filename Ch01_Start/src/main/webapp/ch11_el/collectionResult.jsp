<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
(1)Array<br>
${w[0]}<br>
${w[1]}<br>
${w[2]}<br>
<%
//getAttribute. 반복문
String[] str = (String[])request.getAttribute("w");
for(String s : str){
	out.println(s);
	out.println("<br>");
}
%>
</body>
</html>