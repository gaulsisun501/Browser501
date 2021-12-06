<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>학번,이름,학년,선택과목을 입력하는 폼</h3>
	<form action="requestResult.jsp" method="post">
		<table>
			<tr>
				<td><label for="id">학번</label></td>
				<td><input id="id" type="text" name="id"></td>
			</tr>
			<tr>
				<td><label for="name">이름</label></td>
				<td><input id="name" type="text" name="name"></td>
			</tr>
			<tr>
				<td>학년</td>
				<td>
					<input id="grade1" type="radio" name="grade" value="1학년" checked="checked">
					<label for="grade1">1학년</label>
					<input id="grade2" type="radio" name="grade" value="2학년">
					<label for="grade2">2학년</label>
					<input id="grade3" type="radio" name="grade" value="3학년">
					<label for="grade3">3학년</label>
					<input id="grade4" type="radio" name="grade" value="4학년">
					<label for="grade4">4학년</label>
				</td>
			</tr>
			<tr>
				<td>선택과목</td>
				<td>
					<select name="subject">
						<option value="java">JAVA</option>
						<option value="oracle">Oracle</option>
						<option value="jquery">jQuery</option>
						<option value="javascript">javascript</option>
						<option value="html">html</option>
					</select>
				</td>
			</tr>
			<tr></tr>
		</table>
		<input id="submit" type="submit" value="입력완료"><br>
	</form>
</body>
</html>