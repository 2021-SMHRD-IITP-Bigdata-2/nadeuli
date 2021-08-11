package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class RestaurantDAO {
	
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
	
public ArrayList<RestaurantDTO> rest_list(String city_name,String r_name, String r_type){
		
		ArrayList<RestaurantDTO> r_list =  new ArrayList<RestaurantDTO>();
		String r_name1 = "%" + r_name + "%";
		
		try {

			connection();

		
			
			if(!city_name.isEmpty()&& !r_name.isEmpty()&& !r_type.isEmpty()) {// 모두검색할때
				String sql =  "select * from restaurant where city_name = ? and r_name like ? and r_type = ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1,city_name);
				psmt.setString(2,r_name1);
				psmt.setString(3,r_type);
			} else if(!city_name.isEmpty()&&r_name.isEmpty()&&r_type.isEmpty()) { //도시 이름만 검색
				String sql =  "select * from restaurant where city_name = ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1,city_name);
			} else if(city_name.isEmpty()&& !r_name.isEmpty()&& r_type.isEmpty()) {// 식당 이름만 검색
				String sql =  "select * from restaurant where r_name like ? ";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1,r_name1);
				
			} else if(city_name.isEmpty()&& r_name.isEmpty()&& !r_type.isEmpty()) {// 식당 유형만 검색
				String sql =  "select * from restaurant where r_type = ? ";
				psmt =  conn.prepareStatement(sql);
				psmt.setString(1, r_type);
				
			} else if(!city_name.isEmpty()&& !r_name.isEmpty()&& r_type.isEmpty()) { // 도시이름 + 식당이름 검색
				String sql =  "select * from restaurant where city_name = ? and r_name like ? ";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1,city_name);
				psmt.setString(2,r_name1);
			} else if(!city_name.isEmpty()&& r_name.isEmpty()&& !r_type.isEmpty()) {// 도시이름 + 식당 유형 검색
				String sql =  "select * from restaurant where city_name = ? and r_type = ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1,city_name);
				psmt.setString(2,r_type);
			} else if(city_name.isEmpty()&& !r_name.isEmpty()&& !r_type.isEmpty()) {// 식당이름 + 유형 검색
				String sql =  "select * from restaurant where r_name like ? and r_type = ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1,r_name1);
				psmt.setString(2,r_type);
				
			}
				
			rs = psmt.executeQuery();
		

			// rs.next() : 아래 행으로 이동하여 데이터 존재 여부 판단
			while (rs.next()) {

				int getRnum = rs.getInt(1);
				String getcity_name = rs.getString(2);
				String getRname = rs.getString(3);
				String getRaddr = rs.getString(4);
				String getRTel = rs.getString(5);
				String getRType = rs.getString(6); 
			
				

				RestaurantDTO rest = new RestaurantDTO(getRnum, getcity_name, getRname, getRaddr, getRTel, getRType);
				r_list.add(rest);
			}

		} catch (SQLException e) {
			System.out.println("오류오류오류");
			e.printStackTrace();
			
		} finally {
			close();

		}
		
		System.out.println();
		return r_list;
	}

public ArrayList<RestaurantDTO> rest_list(){
	
	ArrayList<RestaurantDTO> r_list =  new ArrayList<RestaurantDTO>();
	
	try {

		connection();

		// 3. 쿼리문 실행
		String sql = "select * from restaurant";
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
	

		// rs.next() : 아래 행으로 이동하여 데이터 존재 여부 판단
		while (rs.next()) {

			int getRnum = rs.getInt(1);
			String getcity_name = rs.getString(2);
			String getRname = rs.getString(3);
			String getRaddr = rs.getString(4);
			String getRTel = rs.getString(5);
			String getRType = rs.getString(6); 
		
			

			RestaurantDTO rest = new RestaurantDTO(getRnum, getcity_name, getRname, getRaddr, getRTel, getRType);
			r_list.add(rest);
		}

	} catch (SQLException e) {
		System.out.println("오류오류오류");
		e.printStackTrace();
		
	} finally {
		close();

	}
	
	System.out.println();
	return r_list;
}

}
