<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="loginBean" class="ch11_el.LoginBean" />
<jsp:setProperty name="loginBean" property="*" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>ID & PW를 EL방식으로 출력하기(loginBean.)</h3>
사용자 아이디(EL): ${loginBean.userid }<br>
사용자 비밀번호(EL): ${loginBean.passwd }<br>
<hr>
<h3>ID & PW를 jsp:getProperty 방식으로 출력하기</h3>
사용자 아이디(getPropert): <jsp:getProperty property="userid" name="loginBean"/><br>
사용자 비밀번호(getPropert): <jsp:getProperty property="passwd" name="loginBean"/><br>
<hr>
<h3>ID & PW를 바로출력하기(param.)</h3>
사용자 아이디: ${param.userid }<br>
사용자 비밀번호: ${param.passwd }<br>
</body>
</html>