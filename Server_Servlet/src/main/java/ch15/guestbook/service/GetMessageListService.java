package ch15.guestbook.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

import ch15.guestbook.dao.MessageDao;
import ch15.guestbook.model.Message;
import ch15.jdbc.JdbcUtil;
import ch15.jdbc.connection.ConnectionProvider;

//457
public class GetMessageListService {
	//Singleton pattern
	private static GetMessageListService instance = new GetMessageListService();
	
	public static GetMessageListService getInstance() {
		return instance;
	}
	
	private GetMessageListService() {}
	
	private static final int MESSAGE_COUNT_PER_PAGE = 3;	//한페이지에 보여줄 메시지를 3으로 지정
	
	public MessageListView getMessageList(int pageNumber) {
		Connection conn = null;
		int currentPageNumber = pageNumber;
		try {
			
			//MessageDao의 selectCount() 메서드로 전체 메시지 개수를 구한다.
			conn = ConnectionProvider.getConnection();
			MessageDao messageDao = MessageDao.getInstance();
			int messageTotalCount = messageDao.selectCount(conn); //
			//요청한 페이지 번호의 메지지 시작행, 끝행을 구한다. 
			List<Message> messageList = null;
			int firstRow = 0;
			int endRow = 0;
			if (messageTotalCount > 0) {
				firstRow = (pageNumber-1) * MESSAGE_COUNT_PER_PAGE + 1;
				endRow = firstRow + MESSAGE_COUNT_PER_PAGE - 1;
				messageList = messageDao.selectList(conn, firstRow, endRow);
			} else {
				currentPageNumber = 0;
				messageList = Collections.emptyList();
			}	
			return new MessageListView(messageList, messageTotalCount, 
					currentPageNumber, MESSAGE_COUNT_PER_PAGE, firstRow, endRow);
		} catch (SQLException e) {
			throw new ServiceException("목록 구하기 실패: " + e.getMessage(),e);
		} finally {
			JdbcUtil.close(conn);
		}
	}
	
}
