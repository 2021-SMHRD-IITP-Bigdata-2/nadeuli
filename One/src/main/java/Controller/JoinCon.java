package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.MemberDAO;
import Model.MemberDTO;

@WebServlet("/JoinCon")
public class JoinCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	request.setCharacterEncoding("EUC-KR");
	
	String email = request.getParameter("email");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	String nickname = request.getParameter("nickname");
	
	MemberDAO dao = new MemberDAO();
	
	MemberDTO member = new MemberDTO(email, pw, name, tel, nickname);
	int cnt = dao.member_join(member);
	
	if (cnt > 0) {
		// forward ���(���μ��������� ����)���� ������ �̵�
		RequestDispatcher dispatcher = request.getRequestDispatcher("register.html");
		// request ������ ������ ����
		request.setAttribute("email", email);
		// ������ �̵��� request,response ��ü�� ����(��������)
		dispatcher.forward(request, response);

//			response.sendRedirect("join_success.jsp");
	} else {
		response.sendRedirect("main.jsp");
	}
	
	
	}

}
