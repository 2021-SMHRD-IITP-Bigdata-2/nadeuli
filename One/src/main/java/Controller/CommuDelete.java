package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.CommentDAO;
import Model.CommuDAO;

@WebServlet("/CommuDelete")
public class CommuDelete extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		HttpSession session = request.getSession();
		
		int commu_no =  (Integer)session.getAttribute("commu_no");
		System.out.println("게시글 번호 > " + commu_no);
		
		
		CommuDAO dao = new CommuDAO();
		
		int cnt = dao.commu_delete(commu_no);
		
		if(cnt>0) {
			response.sendRedirect("commu_list.jsp");
		}else {
			System.out.println("게시뭃 삭제 실패");
			response.sendRedirect("board_view.jsp?commu_no"+commu_no);
		}
	}

}
