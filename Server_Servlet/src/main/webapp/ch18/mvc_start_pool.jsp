<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Connection Pool : 많은 자원을 낭비하는 Connecttion(연결설정)을 사용자가<br>
요청할때마다 매번 연결하지 않고, 미리 일정 갯수 만큼 connection을 맺어 필요한 DAO<br>
클래스에서는 빌려 사용하고 반환하는 방법<br>
과거에는 Connection Pool기능을 구현한 클래스를 직접작성해서 사용하였으나(418), 현재에는<br>
Connection Pool기능이 포함되어 있는 라이브러리(tomcat-dbcp.jar)를 사용.<hr>
Pool API:: javax.sql.DataSource, JNDI(Java Naming and Directory Interface)기법<hr>
<img src="connectionPool1.png"><br>
<img src="connectionPool2.png"><br>
<img src="jndi.png"><br>
<a href="emppool">MVC_POOL</a>
</body>
</html>