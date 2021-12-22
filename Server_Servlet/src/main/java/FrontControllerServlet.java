

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//529 command pattern
//request.html에서 call

@WebServlet("*.dos")
public class FrontControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//request.getRequestURI()  : /Server_Servlet/insert.do
		//request.getContextPath() : /Server_Servlet
		//command : /insert.dos
				
		String requestURI = request.getRequestURI();
		System.out.println("request.getRequestURI() : " + requestURI);
		String contextPath = request.getContextPath();
		System.out.println("request.getContextPath() : " + contextPath);
		String command = requestURI.substring(contextPath.length());
		System.out.println("command : " + command);
		
		if(command.equals("/insert.dos")) {
			System.out.println("데이터 입력");
		} else if(command.equals("/delete.dos")) {
			System.out.println("데이터 삭제");
		} else if(command.equals("/update.dos")) {
			System.out.println("데이터 수정");
		} else {
			System.out.println("데이터 조회");	//select.dos
		}
		
	}

}
