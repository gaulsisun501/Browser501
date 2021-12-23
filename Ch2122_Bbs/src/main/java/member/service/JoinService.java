package member.service;
//596

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;

import jdbc.connection.ConnectionProvider;
import jdbc.connection.JdbcUtil;
import member.dao.MemberDao;
import member.model.Member;

public class JoinService {

	private MemberDao memberDao = new MemberDao();
	
	//servlet=>service
	//1dto :memberDao
	//2dto : member
	public void join(JoinRequest joinReq) {
		
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);//커밋의 시작점
			Member member = memberDao.selectById(conn, joinReq.getId());
			if(member != null) {
				//중복된 id인 경우 롤백
				JdbcUtil.rollback(conn);
				throw new DuplicateIdException();
			}
			
			memberDao.insert(conn, 
					new Member(
						joinReq.getId(),
						joinReq.getName(),
						joinReq.getPassword(),
						new Date())
					);
			conn.commit();
			
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(conn);
		}
	}
}
