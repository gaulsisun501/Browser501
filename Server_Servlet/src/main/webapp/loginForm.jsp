<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>로그인</title>
    
    <script>
    
        function checkValue()
        {
            if(!document.userInfo.id.value){
                alert("아이디를 입력하세요.");
                return false;
            }
            if(!document.userInfo.password.value){
                alert("비밀번호를 입력하세요.");
                return false;
            }
        }
    </script>
</head>

<body>
    <div id="wrap">
        <br><br>
        <b><font size="6" color="gray">로그인</font></b>
        <br><br><br>
        
        <form method="post" action="join.do" name="userInfo" onsubmit="return checkValue()">
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
  
            </table>
            <br>
            <input type="submit" value="확인"/>
        </form>
 		<%
            String msg=request.getParameter("msg");
            
            if(msg!=null && msg.equals("0")) 
            {
                out.println("<br>");
                out.println("<font color='red'>비밀번호를 확인해 주세요.</font>");
            }
            else if(msg!=null && msg.equals("-1"))
            {    
                out.println("<br>");
                out.println("<font color='red'>아이디를 확인해 주세요.</font>");
            }
 		%>
    </div>
</body>
</html>