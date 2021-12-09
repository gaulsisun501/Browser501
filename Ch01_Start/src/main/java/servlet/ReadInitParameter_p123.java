package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ReadInitParameter_p123")
public class ReadInitParameter_p123 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html><body>initParameter<br><ul>");
		out.println("<li><b>모든 사이트 방문자 공유 변수</b>");
		
		out.println("<li>::[getInitParameter()]</li>");
		String logdParam = getServletContext().getInitParameter("logEnabled");
		String debugParam = getServletContext().getInitParameter("debugLevel");
		out.println("<li>logdParam : " + logdParam + "</li>");
		out.println("<li>debugParam : " + debugParam + "</li><hr>");
		
		out.println("<li>::[getInitParameterNames()]</li>");
		Enumeration<String> initParam = getServletContext().getInitParameterNames();
		while(initParam.hasMoreElements()){
			String name = initParam.nextElement();
			String value = getServletContext().getInitParameter(name);
			out.println("<li>" + name + " : " + value + "</li>");
		}
		
		out.println("<ul></body></html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
