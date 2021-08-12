package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.CommentDAO;
@WebServlet("/CommentDelete")

public class CommentDelete extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		HttpSession session = request.getSession();
		
		int commu_no =  (Integer)session.getAttribute("commu_no");
		System.out.println("세션값>"+commu_no);
		
		int num = Integer.parseInt(request.getParameter("comment_num"));
		
		System.out.println("쿼리스트링값"+num);
		
		CommentDAO dao = new CommentDAO();
		
		int cnt = dao.comment_delete(num);
		
		
		if(cnt>0) {
			response.sendRedirect("board_view.jsp?commu_no="+commu_no);
			
		}
	
		
		
		
	}

}
