package Intergration_Impl;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MemberDAO{ 	
	Connection con;
	
	static{
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버가 없습니다.");
		}
	}
	
	public void connect(){
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		try {
			con = DriverManager.getConnection(url, "jsp", "jsp");
			System.out.println("Connection Success!!!");
		} catch (SQLException e) {
			System.out.println("주소,id,pw가 다릅니다.");
		}
	}
	
	//id, pw를 체크하고 결과값을 리턴(정상:1, 데이터없음 :-1, 암호 불일치:0)
	public int loginCheck(MemberDTO member){
		
		connect();	
		String id = member.getId();
		String pw = member.getPassword();
		int result = -1;
		
		ResultSet rs = null;
		Statement stmt = null;
		try {
			//id 체크
			String sql = "SELECT * FROM member2 WHERE id = '" + member.getId() + "'";
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			//id, pw 체크
			if(rs.next()) {
				String rId = rs.getString("id");
				String rPw = rs.getString("password");
				
				if (id.equals(rId) && pw.equals(rPw)) {
					result = 1;		//정상
				} else {
					result = 0;		//암호 불일치
				}
			} else {
				result = -1;		//데이터 없음
			}
			
			stmt.close();
			rs.close();
			con.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return result;
		
	}
}
