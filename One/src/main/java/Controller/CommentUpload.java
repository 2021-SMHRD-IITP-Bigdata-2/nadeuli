package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.CommentDAO;
import Model.CommentDTO;
import Model.MemberDTO;

@WebServlet("/CommentUpload")
public class CommentUpload extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		
		HttpSession session = request.getSession();

		MemberDTO member = (MemberDTO)session.getAttribute("login_member");
		
		int commu_no =  (Integer)session.getAttribute("commu_no");
		String email = member.getEmail();
		String comment_text = request.getParameter("comment_text");
		
		System.out.println("게시글 번호 > " + commu_no);
		System.out.println("댓글내용 > "+comment_text);
		System.out.println("이메일>>" +email);
		
		CommentDTO comment =  new CommentDTO(commu_no,comment_text,email);
		
		CommentDAO dao = new CommentDAO();
		
		int cnt = dao.comment_upload(comment);
		
		if(cnt>0) {
			response.sendRedirect("board_view.jsp?commu_no="+commu_no);
			
		}else {
			response.sendRedirect("commu_list.jsp");
			System.out.println("메시지 전송 실패");
		}
	
	
	}

}
