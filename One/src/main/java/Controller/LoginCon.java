package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.MemberDAO;
import Model.MemberDTO;
@WebServlet("/LoginCon")
public class LoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		MemberDAO dao = new MemberDAO();
		MemberDTO member = dao.member_login(email, pw);

		if (member!=null) {
			// ȸ�������� ������ �� �ִ� ��ü ����
			HttpSession session = request.getSession();
			session.setAttribute("login_member", member);
			response.sendRedirect("index-2.html");
		} else {
			System.out.println("�α��ν���");
			response.sendRedirect("register.html");
		}

	
	}

}
