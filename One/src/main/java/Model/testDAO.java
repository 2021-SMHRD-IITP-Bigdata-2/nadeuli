package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class testDAO {

	private Connection conn;
	private PreparedStatement psmt;;
	private ResultSet rs;

	// DB 연결
	public void connection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
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

	// DB 종료
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

	public  ArrayList<testDTO> select_city() {

		ArrayList<testDTO> testlist = new ArrayList<>();
		try {
			connection();
			
			String sql = "select city_name,count(*) as count from sns_data where tags like '?%' or tags like '%?' group by city_name order by count desc";
						
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				String getCityname = rs.getString(1);
				String getTags = rs.getString(2);
				String getSdate = rs.getString(3);

				testDTO test = new testDTO(getCityname, getTags, getSdate);
				testlist.add(test);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return testlist;
	}

}
