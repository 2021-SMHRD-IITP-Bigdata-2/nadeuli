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
			// 2. �����ͺ��̽� ����
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
	
	// �ڸ�Ʈ ���ε��ϱ�
	public int comment_upload(CommentDTO comment) {
		
		try {

			connection();

			String sql = "insert into comments values(commu_no.nextval,?,?,?,sysdate)"; // commu_no�� ������. �ڵ����� 1�� �����Ѵ�.

			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, comment.getCommu_no());
			psmt.setString(2, comment.getComment_text());
			psmt.setString(3, comment.getEmail());


			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			System.out.println("��������");
			e.printStackTrace();
		} finally {
			// ������ ���̽� ���� ����
			close();
		}
		
		return cnt;
	}
	
	// �ڸ�Ʈ ��������
	public ArrayList<CommentDTO> comment_select(int commu_no) {

		// ������ �� �޼������� ������ �� �ִ� ArrayList ��ü ����

		ArrayList<CommentDTO> comment_list = new ArrayList<CommentDTO>();

		try {

			connection();

			// 3. ������ ����
			String sql = "Select * from comments where commu_no = ?"; // �Խñ� ��ȣ�� �������� �ɾ �ڸ�Ʈ ��������

			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, commu_no);

			rs = psmt.executeQuery();

			// rs.next() : �Ʒ� ������ �̵��Ͽ� ������ ���� ���� �Ǵ�
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
	
	//�ڸ�Ʈ ����� ���
	 public int comment_delete(int comment_no) {

			try {

				connection();
				// 3. ������ ����
				String sql = "delete from comments where comment_no=?"; // �ڸ�Ʈ ��ȣ�� ���ؼ� �����

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
	 
	 // �ڸ�Ʈ �������°�.
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
