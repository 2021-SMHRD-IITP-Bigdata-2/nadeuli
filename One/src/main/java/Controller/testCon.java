package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.google.gson.Gson;

import Model.testDAO;
import Model.testDTO;


@WebServlet("/testCon")
public class testCon extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		testDAO testdao = new testDAO();
		ArrayList<testDTO> testlist = new ArrayList<>();
		
		Gson gson = new Gson();
		
		JSONArray jArray = new JSONArray();
		JSONParser parser = new JSONParser();
		
		for(int i = 0; i<testlist.size(); i++) {
			testDTO dto = testlist.get(i);
			
			String jsonStr = gson.toJson(dto);
			JSONObject jObj = null;
			try {
				jObj = (JSONObject)parser.parse(jsonStr);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			jArray.add(jObj);
		}
		
		response.setContentType("application/json; charset=UTF-8");
		
		//System.out.println(jArray.toString());
		PrintWriter out = response.getWriter();
		out.print(jArray.toString());
	}

}
