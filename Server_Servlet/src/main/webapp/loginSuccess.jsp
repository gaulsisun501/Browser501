<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <body>
  EL(Parameter)형식::${param.id }<br>
  EL(Attribute)형식::${id }<br>
  JSP(parameter)형식::<%=request.getParameter("id") %> <br>
  JSP(attribute)형식:: <%=request.getAttribute("id") %><br> 
  <hr>
  당신이 입력한 정보입니다(고전적인방식)<br><hr>
  아이디:<%=request.getParameter("id") %><br>
  비밀번호:<%=request.getParameter("passwd") %><br>
  <hr>
  당신이 입력한 정보입니다(EL방식)<br><hr>
  아이디:${param.id }<br>
  비밀번호:${param.passwd }<br>
  </body>
</body>
</html>