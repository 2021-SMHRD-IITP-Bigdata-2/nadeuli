package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CommuDAO {
	
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
	
	public ArrayList<CommuDTO> commu_list(){
		
		ArrayList<CommuDTO> commulist =  new ArrayList<>();
		
		try {

			connection();

			// 3. 쿼리문 실행
			String sql = "Select * from community order by commu_no desc";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			// rs.next() : 아래 행으로 이동하여 데이터 존재 여부 판단
			while (rs.next()) {

				int getNum = rs.getInt(1);
				String getTitle = rs.getString(2);
				String getContents = rs.getString(3);
				String getDate = rs.getString(4);
				String getImg = rs.getString(5);
				String getCity = rs.getString(6);
				String getEmail =  rs.getString(7);
				int getCnt = rs.getInt(8);

				CommuDTO commu = new CommuDTO(getNum, getTitle, getContents, getDate, getImg, getCity, getEmail, getCnt);
				commulist.add(commu);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();

		}
		
		
		return commulist;
	}
	
	public int commu_upload(CommuDTO commu) {

		try {

			connection();

			// 3. 쿼리문 실행
			String sql = "insert into community values(comm_num.nextval,?,?,to_char(sysdate,'yyyy.mm.dd'),null,?,?,0)";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, commu.getTitle());
			psmt.setString(2, commu.getContents());
			psmt.setString(3, commu.getCity_name());
			psmt.setString(4, commu.getEmail());
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;

	}
	
	public String get_Nick(String email) {

		String getNick = null;
		try {

			connection();

			// 3. 쿼리문 실행
			String sql = "Select nickname from members where email=?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);

			rs = psmt.executeQuery();
			

			// rs.next() : 아래 행으로 이동하여 데이터 존재 여부 판단
			if (rs.next()) {
				getNick = rs.getString(1);
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
		return getNick;
	}
	
	
	public CommuDTO get_data(int commu_no ) {
		CommuDTO commu = null;

		try {

			connection();

			// 3. 쿼리문 실행
			String sql = "Select * from community where commu_no=? ";

			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, commu_no);

			rs = psmt.executeQuery();

			// rs.next() : 아래 행으로 이동하여 데이터 존재 여부 판단
			if (rs.next()) {
				int getNum = rs.getInt(1);
				String getTitle = rs.getString(2);
				String getContents = rs.getString(3);
				String getDate = rs.getString(4);
				String getImg = rs.getString(5);
				String getCity = rs.getString(6);
				String getEmail =  rs.getString(7);
				int getCnt = rs.getInt(8);

				commu = new CommuDTO(getNum, getTitle, getContents, getDate, getImg, getCity, getEmail, getCnt);
				
			} else {
				System.out.println("정보 조회 실패");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 데이터 베이스 연결 종료
			close();

		}
		return commu;
	}
	
	
	public void updateBoardCnt(int commu_no) {
		
		try {
			
			connection();
			
			String sql = "update community set cnt = (select cnt from community where commu_no= ? )+1 where commu_no = ?";

			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, commu_no);
			psmt.setInt(2,commu_no);

			rs = psmt.executeQuery();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 데이터 베이스 연결 종료
			close();
		}
	}
	
	public int getCount() {
		
		int cnt = 0;
		
		try {
			
			connection();
			
			String sql = "select count(*) from community";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();
			if (rs.next()) {
				cnt = rs.getInt(1);
				System.out.println(cnt);
				
			} else {
				System.out.println("정보 조회 실패");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 데이터 베이스 연결 종료
			close();
		}
		
		
		return cnt;
	}
	
	public int getCount(String kwd) {
		
		int cnt = 0;
		
		try {
			
			connection();
			
			String sql = "select count(*) from community where title = ?";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();
			if (rs.next()) {
				cnt = rs.getInt(1);
				System.out.println(cnt);
				
			} else {
				System.out.println("정보 조회 실패");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 데이터 베이스 연결 종료
			close();
		}
		
		
		return cnt;
	}

}
