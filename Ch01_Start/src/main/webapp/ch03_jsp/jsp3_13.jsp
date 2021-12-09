<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=request.getRemoteAddr() %><br>
<%=request.getContentLength() %><br>
<%=request.getCharacterEncoding() %><br>
<%=request.getContentType() %><br>
<%=request.getProtocol() %><br>
<%=request.getMethod() %><br>
<%=request.getRequestURI() %><br>
<%=request.getContextPath() %><br>
<%=request.getServerName() %><br>
<%=request.getServerPort() %><br>
</body>
</html>