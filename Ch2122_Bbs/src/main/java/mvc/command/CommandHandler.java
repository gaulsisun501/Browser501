package mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface CommandHandler {

	//추상메서드
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception;
	
}
