<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>회원등록</title>
    
    <script>
    
        function checkValue()
        {
            if(!document.userInfo.id.value){
                alert("아이디를 입력하세요.");
                return false;
            }
            if(!document.userInfo.password.value){
                alert("암호를 입력하세요.");
                return false;
            }
            if(!document.userInfo.passwordCheck.value){
                alert("암호확인을 입력하세요.");
                return false;
            }
            if(!document.userInfo.name.value){
                alert("이름을 입력하세요.");
                return false;
            }
            if(document.userInfo.password.value != document.userInfo.passwordCheck.value){
                alert("암호와 암호확인이 다릅니다. ");
                return false;
            }
        }
    </script>
    
</head>
<body>
    <div id="wrap">
        <br><br>
        <b><font size="6" color="gray">회원등록</font></b>
        <br><br><br>
        
        <form method="post" action="join.jsp" name="userInfo" onsubmit="return checkValue()">
            <table>
                <tr>
                    <td id="title">아이디</td>
                    <td>
                        <input type="text" name="id" maxlength="50" autofocus>
                    </td>
                </tr>
                <tr>
                    <td id="title">암호</td>
                    <td>
                        <input type="password" name="password" maxlength="50">
                    </td>
                </tr>
                <tr>
                    <td id="title">암호확인</td>
                    <td>
                        <input type="password" name="passwordCheck" maxlength="50">
                    </td>
                </tr>
                <tr>
                    <td id="title">이름</td>
                    <td>
                        <input type="text" name="name" maxlength="50">
                    </td>
                </tr>
  
            </table>
            <br>
            <input type="submit" value="확인"/>
        </form>
    </div>
</body>
</html>