package ch10_session;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


//@WebServlet("/ch10_session/study10/animal")
public class AnimalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String food = request.getParameter("food"); 
		
		HttpSession session = request.getSession(); 
		session.setAttribute("f", food);
		 
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		
		//servlet에서 servlet으로 html태그를 사용해서 호출
		out.println("<html><head><title>성격테스트</title></head><body>");
		out.println("<h3>좋아하는 동물은?</h3>");
		out.println("<form action='result' method='get'>");
		out.println("<input type='text' name='animal'>");
		out.println("<input type='submit' value='확인'>");
		out.println("</form></body></html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
