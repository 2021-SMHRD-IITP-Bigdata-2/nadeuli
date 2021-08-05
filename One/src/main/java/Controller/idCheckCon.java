package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.MemberDAO;

@WebServlet("/idCheckCon")
public class idCheckCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("id");
		
		MemberDAO dao = new MemberDAO();
		
		boolean check = dao.idCheck(email);
		
		// 내보내겠다~
		PrintWriter out= response.getWriter();
		out.print(check);
		
	}

}
