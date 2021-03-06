package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Servlet URL Mapping 방법 : Annotation 방식을 사용함.
@WebServlet(name="InitParamServlet_Anno",
urlPatterns = {"/initAnno"},
initParams = {@WebInitParam(name="dirPath", value="c:\\test"),
			  @WebInitParam(name="userid", value="admin")}
)
public class InitParamServlet_Anno extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//getServletContext().getInitParameter("");
		String dirPath = getInitParameter("dirPath");
		String userid = getInitParameter("userid");
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("dirPath : " + dirPath);
		out.println("<br>");
		out.println("userid : " + userid);
		out.println("</body></html>");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
