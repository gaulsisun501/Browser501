package server_prog;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import ch15.guestbook.model.Message;
import ch15.jdbc.JdbcUtil;

public class MemberDAO{ 	
	
	Connection con;
	
	//Singleton
	private static MemberDAO instance = new MemberDAO();
	
	public static MemberDAO getInstance() {
		return instance;
	}
	
	private MemberDAO() {}
	
	//DB연결
	private void getConnection(){
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, "jsp", "jsp");
			System.out.println("Connection Success!!!");
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버가 없습니다.");
		} catch (SQLException e) {
			System.out.println("주소,id,pw가 다릅니다..");
		}
	}
	
	public int insert(MemberDTO member) {
		getConnection();	
		PreparedStatement pstmt = null;
		try {
			String sql = "insert into member1 values(?,?,?,"+ "to_char(sysdate,'yyyy-mm-dd'))";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getName());
			//pstmt.setString(4, member.getReg_date());
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return 0;
		} finally {
			JdbcUtil.close(pstmt);
		}
	}
	
}
