package ch15.guestbook.service;
//460

import java.sql.Connection;
import java.sql.SQLException;

import ch15.guestbook.dao.MessageDao;
import ch15.guestbook.model.Message;
import ch15.jdbc.JdbcUtil;
import ch15.jdbc.connection.ConnectionProvider;

public class DeleteMessageService {
	
	private static DeleteMessageService instance = new DeleteMessageService();
	
	public static DeleteMessageService getInstance() {
		return instance;
	}
	
	private DeleteMessageService() {}
	
	public void deleteMessage(int messageId, String password) {
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);	//트랜잭션 시작
			
			MessageDao messagedao = MessageDao.getInstance();
			Message message = messagedao.select(conn, messageId);	//삭제 대상 메시지
			if(message == null) {
				throw new MessageNotFoundException("메시지 없음");
			}
			if(!message.matchPassword(password)) {
				throw new InvalidPasswordException("bad password");
			}
			messagedao.delete(conn, messageId);
			conn.commit();
		} catch (SQLException ex) {
			JdbcUtil.close(conn);
			throw new ServiceException("삭제실패 : " + ex.getMessage(), ex);
		} catch (InvalidPasswordException | MessageNotFoundException ex) {
			JdbcUtil.rollback(conn);
			throw ex;
		} finally {
			JdbcUtil.close(conn);
		}

		
	}
	
	
	
	
}
