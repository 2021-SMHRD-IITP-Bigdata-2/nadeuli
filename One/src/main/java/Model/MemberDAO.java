package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
	
	private Connection conn;
	private PreparedStatement psmt;;
	private ResultSet rs;
	private int cnt;
	
	public void connection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2. �����ͺ��̽� ����
			String url = "jdbc:oracle:thin:@172.30.1.16:1521:xe";
			String user = "hr";
			String password = "hr";

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
	
	public int member_join(MemberDTO member) {
		
		try {

			connection();

			String sql = "insert into members values(?,?,?,?,?)";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, member.getEmail());
			psmt.setString(2, member.getPw());
			psmt.setString(3, member.getName());
			psmt.setString(4, member.getTel());
			psmt.setString(5, member.getNickname());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// ������ ���̽� ���� ����
			close();
		}
		
		
		return cnt;
		
		
	}
	
	public boolean idCheck(String email) {

		// false : ���̺� ���� ���� ��� (id ��밡��)
		boolean check = false;

		try {

			connection();

			String sql = "Select email from members where email=?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);

			rs = psmt.executeQuery();

			if (rs.next()) {
				check = true;
			} else {
				check = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return check;

	}
	
	public MemberDTO member_login(String email, String pw) {
		MemberDTO member = null;

		try {

			connection();

			// 3. ������ ����
			String sql = "Select email from members where email=? and pw =? ";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);
			psmt.setString(2, pw);

			rs = psmt.executeQuery();

			// rs.next() : �Ʒ� ������ �̵��Ͽ� ������ ���� ���� �Ǵ�
			if (rs.next()) {
				String getEmail = rs.getString(1);
				// ȸ�������� ������ �� �ִ� ��ü ����
				member = new MemberDTO(email, null, null, null, null);
			} else {
				System.out.println("���� ��ȸ ����");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// ������ ���̽� ���� ����
			close();

		}
		return member;
	}

}
