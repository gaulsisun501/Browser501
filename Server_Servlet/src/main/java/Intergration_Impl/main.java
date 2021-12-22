package Intergration_Impl;

import java.io.Console;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/main.do")
public class main extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
 	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 		PrintWriter out = response.getWriter();
		out.println("welcome !!!!!");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}