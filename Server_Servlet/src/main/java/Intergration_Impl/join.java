package Intergration_Impl;

import java.io.Console;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/join.do")
public class join extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
 	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 		String memberId = request.getParameter("id");
        String memberPassword = request.getParameter("password");

        MemberDTO loginMember = new MemberDTO();
        loginMember.setId(memberId);
        loginMember.setPassword(memberPassword);
        
//1) id와 password를 받아서 MemberDao를 활용하여 존재여부 체크
        MemberDAO memberdao = new MemberDAO();
        int isLoginSuccess = memberdao.loginCheck(loginMember);
        
//2) 데이터가 존재하면 session에 id를 저장하고 1을 result에 저장하고 login.jsp에 전달
        if ( isLoginSuccess == 1 ) {
        	HttpSession session = request.getSession();
        	session.setAttribute("id", memberId);
        	
            response.sendRedirect("login.jsp?result=1");
            return;
        }
        // 암호가 맞지 않으면 result에 0을 저장하고 login.jsp에 전달
        else if ( isLoginSuccess == 0 ){
            response.sendRedirect("login.jsp?result=0");
            return;
        }
        // 데이터가 없거나 삭제 됐으면 result를 -1을 저장하고 login.jsp에 전달
        else {
            response.sendRedirect("login.jsp?result=-1");
            return;
        }

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}