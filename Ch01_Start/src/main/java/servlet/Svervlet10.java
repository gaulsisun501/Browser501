package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Servlet;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Svervlet10")
public class Svervlet10 extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ServletContext sc = getServletContext();
		String serverInfo = sc.getServerInfo();
		int majorVersion = sc.getMajorVersion();
		int minorVersion = sc.getMinorVersion();
		
		PrintWriter out = response.getWriter();
		out.println("<html><body>ServerInfo()" + serverInfo + "<br>");
		out.println("majorVersion : " + majorVersion + "<br>");
		out.println("minorVersion : " + minorVersion + "</body></html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
