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


//(1) Directory Pattern
//http://localhost:8080/Server_Servlet/ATest		=> ATestServlet	@WebServlet("/ATest")
//http://localhost:8080/Server_Servlet/test			=> CTestServlet	@WebServlet("/test")
//http://localhost:8080/Server_Servlet/test/BTest	=> BTestServlet	@WebServlet("/test/BTest")

//http://localhost:8080/Server_Servlet/				=> DTestServlet	@WebServlet("/*")
//http://localhost:8080/Server_Servlet/xxx			=> DTestServlet	@WebServlet("/*")
//http://localhost:8080/Server_Servlet/kkk			=> DTestServlet	@WebServlet("/*")

@WebServlet("/ATest")
public class ATestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ATestServlet");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
