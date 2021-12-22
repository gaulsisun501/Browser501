<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int result=Integer.parseInt(request.getParameter("result"));	//MemberDAO에서 처리한 결과값

  //0보다 크면 : main.do에서 로그인 성공 메시지를 출력	
  if(result>0){
	  out.println("<script>alert('로그인 성공');</script>");
	  response.sendRedirect("main.do");				
  }
  //0이면 : loginForm에 암호가 다르다 는 메시지를 출력
  else if (result==0){	
	  out.println("<script>alert('암호가 다름');</script>");
	  response.sendRedirect("loginForm.jsp?msg=0");
  }
  //-1이면 : loginForm에 없는 아이디 라는 메시지를 출력
  else{
	  out.println("<script>alert('없는 아이디');</script>");
	  response.sendRedirect("loginForm.jsp?msg=-1");
  }
%>
</body>
</html>