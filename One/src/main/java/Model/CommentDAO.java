package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CommentDAO {
	
	
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
	
	// 코멘트 업로드하기
	public int comment_upload(CommentDTO comment) {
		
		try {

			connection();

			String sql = "insert into comments values(commu_no.nextval,?,?,?,sysdate)"; // commu_no는 시퀀스. 자동으로 1씩 증가한다.

			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, comment.getCommu_no());
			psmt.setString(2, comment.getComment_text());
			psmt.setString(3, comment.getEmail());


			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			System.out.println("오류오류");
			e.printStackTrace();
		} finally {
			// 데이터 베이스 연결 종료
			close();
		}
		
		return cnt;
	}
	
	// 코멘트 가져오기
	public ArrayList<CommentDTO> comment_select(int commu_no) {

		// 나에게 온 메세지들을 저장할 수 있는 ArrayList 객체 생성

		ArrayList<CommentDTO> comment_list = new ArrayList<CommentDTO>();

		try {

			connection();

			// 3. 쿼리문 실행
			String sql = "Select * from comments where commu_no = ?"; // 게시글 번호를 조건으로 걸어서 코멘트 가져오기

			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, commu_no);

			rs = psmt.executeQuery();

			// rs.next() : 아래 행으로 이동하여 데이터 존재 여부 판단
			while (rs.next()) {
				
				int getCommen_no = rs.getInt(1);
				int getNum = rs.getInt(2);
				String getText = rs.getString(3);
				String getEmail = rs.getString(4);
				String getDate = rs.getString(5);

				CommentDTO comment = new CommentDTO(getCommen_no, getNum, getText, getEmail, getDate);
				comment_list.add(comment);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();

		}
		return comment_list;
	}
	
	//코멘트 지우는 기능
	 public int comment_delete(int comment_no) {

			try {

				connection();
				// 3. 쿼리문 실행
				String sql = "delete from comments where comment_no=?"; // 코멘트 번호를 비교해서 지운다

				psmt = conn.prepareStatement(sql);
				psmt.setInt(1, comment_no);
				cnt = psmt.executeUpdate();

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {

				close();
			}
			return cnt;

		}
	 
	 // 코멘트 갯수세는거.
	 public int comment_cnt(int commu_no) {
		 int getCnt = 0;
		 
		 try {
			 
			 connection();
			 
			 String sql = "select count(*) from comments where commu_no = ?";
			 
			 psmt=conn.prepareStatement(sql);
			 psmt.setInt(1, commu_no);
			 
			 rs = psmt.executeQuery();
			 
			 while (rs.next()) {
					
					getCnt = rs.getInt(1);
		
				}
			 
		 }catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();

			}
		 
		 return getCnt;
	 
		 
		 
		 
	 }


}
