<%@page import="Model.DomitoryDTO"%>
<%@page import="Model.RestaurantDTO"%>
<%@page import="Model.PlaceDTO"%>
<%@page import="Model.TestDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.TestDAO"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width" user-scalable="no">
<meta property="og:title" content="나만의 맞춤여행 추천!">
<meta property="og:image" content="trip-test/images/test_main.png">
<meta property="og:description" content="심리테스트로 나만의 맞춤 여행을 추천 받아보세요!">
<title>나만의 맞춤여행 추천!</title>
<link rel="stylesheet" href="traveltest/css/finishStyle.css">
<script type="text/javascript"
	src="traveltest/js/finishPageScript.js?version=2"></script>
<script src="assets/js/jquery-1.10.2.min.js"></script>

</head>
<body>
	<%
	String testResult = request.getParameter("result");
	//out.print(testResult);
	
	String[] arrResult = null;
	arrResult = testResult.split(",");
	/* for(int i=0; i<arrResult.length; i++){
		out.print(arrResult[i]);
	} */
	
	String test1= arrResult[0];
	String test2 =arrResult[1];
	String test3 = arrResult[2];
	String test4 = arrResult[3];
	String test5 = arrResult[4];
	
	System.out.println("test1 >>" +test1);
	System.out.println("test2 >>" +test2);
	System.out.println("test3 >>" +test3);
	System.out.println("test4 >>" +test4);
	System.out.println("test5 >>" +test5);
	
	if(test2.equals("혼자")){
		test2 = "홀로";
	}else if(test2.equals("연인 또는 친구")){
		test2 = "데이트";
	}
	
	if(test3.equals("이색 체험")){
		test3 = "체험";
	}
	if(test4.equals("근교 드라이드")){
		test4 = "근교";
	}else if(test4.equals("숙소")){
		test4 = " "; // 의미없는 답변
	}
		
	
	TestDAO t_dao = new TestDAO();
	ArrayList<TestDTO> t_list = new ArrayList<>();
	t_list = t_dao.test_result(test1, test2, test3, test4, test5); // 테스트 결과 들어있음
	
	String city=t_list.get(0).getCity_name(); // 도시 이름 저장
	
	
	ArrayList<PlaceDTO> p_list = new ArrayList<>();
	p_list = t_dao.get_place(city); // 결과값에 따른 place 값들 들어가있음..
	
	ArrayList<RestaurantDTO> r_list =  new ArrayList<>();
	r_list = t_dao.get_rest(city); // 결과값에 따른 식당값 들어있음
	
	
	ArrayList<DomitoryDTO> d_list = new ArrayList<>();
	d_list = t_dao.get_dom(city); // 결과값에따른 숙소값 들어가 있음.
	
	
	
	
	
	%>

	<div id="main_contents">
		<p id="text1" class="scrollAnim">나에게 맞는 여행지는..?</p>
		<p id="text2" class="scrollAnim">
			<%=city%>
		</p>
		<p id="city-introduce">
		<%=t_dao.get_intro(city)%>	
		</p>
		<div class="scrollAnim">
			<p id="startText">나만의 맞춤여행 추천!</p>
			<button id="startButton1" onclick="start()">테스트 다시 하기</button>
		</div>
		<div id="resultWrapper">
			<div class="results scrollAnim" id="good">
				<p id="corona">코로나 현황</p>
				<p class="results corona"></p>
			</div>
			<div class="results scrollAnim" id="good">
				<p id="place">안심 여행지</p>
				<p class="results place">
				<table border="1" class="dadd">
        			<tr>
            			<td rowspan="2">
                			<img src=<%=p_list.get(0).getP_img() %>>
            			</td>
            			<td><%=p_list.get(0).getP_name() %></td>
        			</tr>
        			<tr>
            			<td><%=p_list.get(0).getP_address() %></td>
        			</tr>

    			</table>
				</p>
			</div>
			<div class="results scrollAnim" id="bad">
				<p id="restaurant">안심 식당</p>
				<p class="results restaurant">
				<table border="1" class="dadd">
        			<tr>
            			<td><%=r_list.get(0).getR_name()%></td>
        			</tr>
        			<tr>
            			<td><%=r_list.get(0).getR_address() %></td>
        			</tr>

    			</table>
				</p>
			</div>
			<div class="results scrollAnim" id="bad">
				<p id="domitory">안심 숙소</p>
				<p class="results domitory">
				<table border="1" class="dadd">
        			<tr>
            			<td rowspan="2">
                			<img src=<%=d_list.get(0).getD_img() %>>
            			</td>
            			<td><%=d_list.get(0).getD_name() %></td>
        			</tr>
        			<tr>
            			<td><%=d_list.get(0).getD_address() %></td>
        			</tr>

    			</table>
				</p>
			</div>
		</div>
		<div class="scrollAnim">
			<p id="copyText">친구에게 공유해봐요!</p>
			<button id="copyButton" onclick="copy()">주소 복사하기</button>
		</div>
		<p id="startText">나만의 맞춤여행 추천!</p>
		<button id="startButton2" onclick="start()">테스트 다시 하기</button>
	</div>
	<div id="dev">from nadeuli company</div>
	<div id="filler"></div>

</body>

</html>