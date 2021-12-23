package mvc.controller;

import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import mvc.command.NullHandler;
//540
//ControllerUsingFile 단점 : ?cmd=hello 노출
//보완 => ControllerUsingURI : 확장자패턴 사용 (main.do)
//http://localhost:8080/Server_Servlet/controllerUsingFile?cmd=hello

//@WebServlet("/controllerUsingURI")
public class ControllerUsingURI extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Map<String,CommandHandler> commandHandlerMap = new HashMap<>();
	
	//첫번째 실행
	@Override
	public void init() throws ServletException {
		//web.xml에서 properties 경로 가져오기 
		//	: WEB-INF/commandHandler.properties
		String configFile = getInitParameter("configFile");	 
		Properties prop = new Properties();//Map계열
		String configFilePath = getServletContext().getRealPath(configFile);
		
		System.out.println("configFile = "+configFile);
		System.out.println("configFilePath = "+configFilePath);
		//configFile = /WEB-INF/commandHandler.properties
		//configFilePath = C:\ServerSpace\.metadata\.plugins\org.eclipse.wst.server.core\tmp1\wtpwebapps\Server_Servlet\WEB-INF\commandHandler.properties
		
		//commandHandler.properties에서 
		//	hello=mvc.hello.HelloHandler 가져오기
		try(FileReader fis = new FileReader(configFilePath)) {
			prop.load(fis);
		}catch(IOException e) {
			throw new ServletException();
		}
		Iterator<Object> keyIter = prop.keySet().iterator();
		while(keyIter.hasNext()) {
			//hello=mvc.hello.HelloHandler
			String command = (String) keyIter.next();
			String handlerClassName = prop.getProperty(command);
			
			System.out.println("command1 = "+command);
			System.out.println("handlerClassName1 = "+handlerClassName);
			//command = hello
			//handlerClassName = mvc.hello.HelloHandler@2bcea0b5
			
			try {
				Class<?> handlerClass = Class.forName(handlerClassName);
				CommandHandler handlerInstance = (CommandHandler) handlerClass.newInstance();
				commandHandlerMap.put(command, handlerInstance);
			} catch (ClassNotFoundException | InstantiationException 
					| IllegalAccessException e) {
				throw new ServletException(e);
			}
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}
	
	//두번째 실행
	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getRequestURI();
		
		if(command.indexOf(request.getContextPath()) == 0) {
			command = command.substring(request.getContextPath().length());
		}
		
		CommandHandler handler = commandHandlerMap.get(command);
		
		System.out.println("command2 = "+command);
		System.out.println("handler2 = "+handler);
		//command = /hello.do
		//handler = mvc.hello.HelloHandler@1bce8219
		
		if(handler == null) {
			handler = new NullHandler();
		}
		String viewPage = null;
		try {
			viewPage = handler.process(request, response);
			System.out.println("viewPage = "+viewPage);
			//viewPage = WEB-INF/view/hello.jsp
		} catch (Exception e) {
			throw new ServletException(e);
		}
		if(viewPage != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}
	}

}
