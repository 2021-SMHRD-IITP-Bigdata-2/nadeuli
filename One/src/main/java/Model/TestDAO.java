package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class TestDAO {
	
	private Connection conn;
	private PreparedStatement psmt;;
	private ResultSet rs;
	private int cnt;
	
	public void connection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2. 데이터베이스 연동
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String user = "cgi_3_2";
			String password = "smhrd2";

			conn = DriverManager.getConnection(url, user, password);

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	
	public void close() {

		try {
			if (rs != null)
				rs.close();
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	
	public ArrayList<TestDTO> test_result(String test1,String test2, String test3, String test4,String test5 ){
		
		ArrayList<TestDTO> t_list = new ArrayList<TestDTO>();
		
		String test_1 = "%" +  test1 + "%";
		String test_2 = "%" +  test2 + "%";
		String test_3 = "%" +  test3 + "%";
		String test_4 = "%" +  test4 + "%";
		String test_5 = "%" +  test5 + "%";
		
		 try {

	         connection();

	         // 3. 쿼리문 실행
	         String sql = "select city_name, count(*) as count from sns_data where tags like ? or tags like ? or tags like ? or tags like ? or tags like ?"
	         		+ " group by city_name order by count desc";

	         psmt = conn.prepareStatement(sql);
	         
	         psmt.setString(1, test_1);
	         psmt.setString(2, test_2);
	         psmt.setString(3, test_3);
	         psmt.setString(4, test_4);
	         psmt.setString(5, test_5);
	         

	         rs = psmt.executeQuery();

	         // rs.next() : 아래 행으로 이동하여 데이터 존재 여부 판단
	         while (rs.next()) {

	            String getCity = rs.getString(1);
	            int getCnt = rs.getInt(2);

	            TestDTO test = new TestDTO(getCity, cnt);
	            t_list.add(test);
	         }

	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         close();

	      }
		 
		 return t_list;
		
		
		
		
	}

}
