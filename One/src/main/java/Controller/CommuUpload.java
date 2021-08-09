package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import Model.CommuDAO;
import Model.CommuDTO;
import Model.MemberDTO;
import Model.PlaceDTO;

@WebServlet("/CommuUpload")
public class CommuUpload extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		
		HttpSession session = request.getSession();

		MemberDTO member = (MemberDTO)session.getAttribute("login_member");
		
		String email = member.getEmail();
		
		String title = request.getParameter("title");
		String city = request.getParameter("city");
		String contents = request.getParameter("contents");
		
		System.out.println(email);
		System.out.println(title);
		System.out.println(city);
		System.out.println(contents);
		
		
		CommuDTO commu = new CommuDTO(title, contents, city, email);
		
		CommuDAO c_dao = new CommuDAO();
		
		int cnt = c_dao.commu_upload(commu);
		
		if(cnt>0) {
			response.sendRedirect("commu_list.jsp");
		}else {
			response.sendRedirect("commu_list.jsp");
			System.out.println("메시지 전송 실패");
		}
		
		
	
	
	}

}
