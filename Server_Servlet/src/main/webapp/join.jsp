<%@page import="server_prog.MemberDAO"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("utf-8");
%>   
<jsp:useBean id="member" class= "server_prog.MemberDTO"/>   
 <jsp:setProperty name="member" property="*"/> 
<%
 	MemberDAO memberDao = MemberDAO.getInstance();
 	int result = memberDao.insert(member);
 %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
  if(result>0){
	  out.println("입력성공");
	  //response.sendRedirect("/main.do");
  }else {
	  out.println("입력에 실패하였습니다.");
	  //response.sendRedirect("/joinform.jsp");
  }
%>
</body>
</html>