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
	
	public String get_intro(String city_name) {
		
		String getIntro = null;
		
		try {

	         connection();

	         // 3. 쿼리문 실행
	         String sql = "select c_introduce from city where city_name = ? ";

	         psmt = conn.prepareStatement(sql);
	         psmt.setString(1, city_name);

	         rs = psmt.executeQuery();
	         

	         // rs.next() : 아래 행으로 이동하여 데이터 존재 여부 판단
	         if (rs.next()) {
	        	 getIntro = rs.getString(1);
	            // 회원정보를 저장할 수 있는 객체 생성
	         } else {
	            System.out.println("정보 조회 실패");
	         }

	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         // 데이터 베이스 연결 종료
	         close();

	      }
		
		return getIntro;
	}
	
	public ArrayList<PlaceDTO> get_place(String city_name) {
		 ArrayList<PlaceDTO> p_list = new ArrayList<PlaceDTO>();
		
		try {

	         connection();

	         // 3. 쿼리문 실행
	         String sql = "Select * from place where city_name = ?";

	         psmt = conn.prepareStatement(sql);
	         psmt.setString(1, city_name);

	         rs = psmt.executeQuery();
	         

	         // rs.next() : 아래 행으로 이동하여 데이터 존재 여부 판단
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

	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         // 데이터 베이스 연결 종료
	         close();

	      }
		
		return p_list;
	}
	
	public ArrayList<RestaurantDTO> get_rest(String city_name){
		ArrayList<RestaurantDTO> r_list =  new ArrayList<RestaurantDTO>();
		
		try {

			connection();

			// 3. 쿼리문 실행
			String sql = "select * from restaurant where city_name = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,city_name);
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
		
		return r_list;
		
		
	}
	
	public ArrayList<DomitoryDTO> get_dom(String city_name){
		ArrayList<DomitoryDTO> d_list = new ArrayList<DomitoryDTO>();
		
		try {

			connection();

			// 3. 쿼리문 실행
				
			String sql = "Select * from domitory where city_name = ? ";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, city_name);
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
	
	public String get_wdc(String city_name) {
		
		String getwdc = null;
		
		try {

	         connection();

	         // 3. 쿼리문 실행
	         String sql = "select city_no from city where city_name = ? ";

	         psmt = conn.prepareStatement(sql);
	         psmt.setString(1, city_name);

	         rs = psmt.executeQuery();
	         

	         // rs.next() : 아래 행으로 이동하여 데이터 존재 여부 판단
	         if (rs.next()) {
	        	 getwdc = rs.getString(1);
	            // 회원정보를 저장할 수 있는 객체 생성
	         } else {
	            System.out.println("정보 조회 실패");
	         }

	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         // 데이터 베이스 연결 종료
	         close();

	      }
		
		return getwdc;
	}

}
