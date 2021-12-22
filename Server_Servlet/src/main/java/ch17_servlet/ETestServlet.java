package ch17_servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//URL Pattern Mapping Rule(514)
//(1) Directory Pattern
//(2) Extention(확장자) Pattern

//http://localhost:8080/Server_Servlet/xxx.do		=>	ETestServlet	@WebServlet("*.do")
//http://localhost:8080/Server_Servlet/zzz.go		=>	FTestServlet	@WebServlet("*.go")
//http://localhost:8080/Server_Servlet/a.nhn		=>	GTestServlet	@WebServlet("*.nhn")
//http://localhost:8080/Server_Servlet/xyz/xxx.do	=>	ETestServlet	@WebServlet("*.do")
//http://localhost:8080/Server_Servlet/xyz/zzz.go	=>	FTestServlet	@WebServlet("*.go")
//http://localhost:8080/Server_Servlet/my/a.nhn		=>	GTestServlet	@WebServlet("*.nhn")
	

//(2) Extention(확장자) Pattern
//@WebServlet("*.do")
public class ETestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ETestServlet");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
