package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class PlaceDAO {
	
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
	
	public ArrayList<PlaceDTO> p_all(){
		
		ArrayList<PlaceDTO> p_list =  new ArrayList<PlaceDTO>();
		
		try {

			connection();

			// 3. 쿼리문 실행
			String sql = "Select * from place";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();
			 while (rs.next()) {

					String getCity = rs.getString(1);
					String getPname = rs.getString(2);
					String getPaddress = rs.getString(3);
					String getPtel = rs.getString(4);
					String getPurl = rs.getString(5);
					String getPimg = rs.getString(6);

					PlaceDTO place = new PlaceDTO(getCity, getPname, getPaddress, getPtel, getPurl, getPimg);
					p_list.add(place);
				}

			// rs.next() : 아래 행으로 이동하여 데이터 존재 여부 판단
			

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();

		}
		
		return p_list;
	}
	
	

}
