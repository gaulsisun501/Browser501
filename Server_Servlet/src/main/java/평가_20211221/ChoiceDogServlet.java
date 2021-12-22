package 평가_20211221;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/20211221/ChoiceDog")
public class ChoiceDogServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter(); 

        String[] dog = request.getParameterValues("dog");
        
        out.println("<html><body><table>");

        out.println("<tr>"); 
        for(int i=0; i<dog.length; i++){
            out.println("<td>");
            out.println("<img src='"+dog[i]+"'/>");
            out.println("</td>");
        }
        out.println("</tr>");

        out.println("</table></body></html>");
    }

}
  