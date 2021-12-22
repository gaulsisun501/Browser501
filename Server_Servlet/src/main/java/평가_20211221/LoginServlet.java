package 평가_20211221;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 요청 데이터 id,password 모두"java"이며 , 
		 * 이것이 일치하면 세션에 저장(속성이름:id_attr)한 후,loginSuccess.jsp로 값들을 전달한다. 
		 * id나 비밀번호가 일치하지 않으면,자바스크립트로 "아이디나 비밀번호가 일치하지 않습니다"
		 * 창을 띄우고, 입력화면으로 되돌아 간다.
		 */
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		if(id.equals("java")&&passwd.equals("java")) {
			HttpSession session = request.getSession();
			session.setAttribute("id_attr", id);
			
			request.setAttribute("id", id);
			request.setAttribute("passwd", passwd);
			RequestDispatcher d = request.getRequestDispatcher("/loginSuccess.jsp");
			d.forward(request, response);
			
		} else {
			response.setContentType("text/html; charset=UTF-8"); 
			PrintWriter writer = response.getWriter(); 
			writer.println("<script>alert('아이디나 비밀번호가 일치하지 않습니다'); location.href='login.html';</script>"); 
			writer.close();
		}
		
	}

}
  