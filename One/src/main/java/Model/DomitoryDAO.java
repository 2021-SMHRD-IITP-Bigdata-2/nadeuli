package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DomitoryDAO {
	
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
	
	public ArrayList<DomitoryDTO> domitory_list(){
		
		ArrayList<DomitoryDTO> d_list =  new ArrayList<DomitoryDTO>();
		
		try {

			connection();

			// 3. 쿼리문 실행
				
			String sql = "Select * from domitory";
			
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
		

			// rs.next() : 아래 행으로 이동하여 데이터 존재 여부 판단
			while (rs.next()) {

				String getDname = rs.getString(1);
				String getCity = rs.getString(2);
				String getDaddr = rs.getString(3);
				String getDtel = rs.getString(4);
				String getDtype = rs.getString(5);
				String getDurl = rs.getString(6);
				String getDimg = rs.getString(7);
				

				DomitoryDTO dom = new DomitoryDTO(getDname, getCity, getDaddr, getDtel, getDtype, getDurl, getDimg);
				d_list.add(dom);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();

		}
		
		
		return d_list;
	}
	
	public ArrayList<DomitoryDTO> domitory_select(String city_name, String d_name, String d_type){
		
		ArrayList<DomitoryDTO> d_list =  new ArrayList<DomitoryDTO>();
		
		System.out.println("city_name>"+ city_name);
		System.out.println("d_name>"+ d_name);
		System.out.println("d_type>" + d_type);
		
		String d_name1 = "%" + d_name + "%";
		
		try {

			connection();

			// 3. 쿼리문 실행
			if(!city_name.isEmpty() && !d_name.isEmpty() && !d_type.isEmpty()) { // 모두 검색
				String sql = "Select * from domitory where city_name = ? and d_name like ? and d_type = ? ";
				
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, city_name);
				psmt.setString(2, d_name1);
				psmt.setString(3, d_type);
				
			}else if(!city_name.isEmpty() && d_name.isEmpty() && d_type.isEmpty()) { // 도시이름만 검색
				String sql = "Select * from domitory where city_name = ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, city_name);
				
			}else if(city_name.isEmpty() && !d_name.isEmpty() && d_type.isEmpty()) {//호텔 이름만 검색 
				String sql = "Select * from domitory where d_name like ? ";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, d_name1);
				
			}else if(city_name.isEmpty() && d_name.isEmpty() && !d_type.isEmpty()) { // 호텔 유형만 검색
				String sql = "Select * from domitory where d_type = ? ";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1,d_type);
				
			}else if(!city_name.isEmpty() && !d_name.isEmpty() && d_type.isEmpty()) { // 도시이름 + 호텔이름 검색
				String sql = "Select * from domitory where city_name = ? and d_name like ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, city_name);
				psmt.setString(2, d_name1);
				
			}else if(!city_name.isEmpty() && d_name.isEmpty() && !d_type.isEmpty()) { // 도시이름 + 호텔유형 검색
				String sql = "Select * from domitory where city_name = ? and d_type = ? ";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, city_name);
				psmt.setString(2, d_type);
				
			}else if(!city_name.isEmpty() && !d_name.isEmpty() && d_type.isEmpty()) { // 호텔 + 유형검색
				String sql = "Select * from domitory where d_name like ? and d_type = ? ";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, d_name1);
				psmt.setString(2, d_type);
			}
			
			
			rs = psmt.executeQuery();
		

			// rs.next() : 아래 행으로 이동하여 데이터 존재 여부 판단
			while (rs.next()) {

				String getDname = rs.getString(1);
				String getCity = rs.getString(2);
				String getDaddr = rs.getString(3);
				String getDtel = rs.getString(4);
				String getDtype = rs.getString(5);
				String getDurl = rs.getString(6);
				String getDimg = rs.getString(7);
				

				DomitoryDTO dom = new DomitoryDTO(getDname, getCity, getDaddr, getDtel, getDtype, getDurl, getDimg);
				d_list.add(dom);
			}

		} catch (SQLException e) {
			System.out.println("오류오류오류");
			e.printStackTrace();
		} finally {
			close();

		}
		
		System.out.println("사이즈" +d_list.size());
		return d_list;
	}

}
