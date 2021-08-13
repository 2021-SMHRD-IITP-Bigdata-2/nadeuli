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
<meta property="og:title" content="������ ���㿩�� ��õ!">
<meta property="og:image" content="trip-test/images/test_main.png">
<meta property="og:description" content="�ɸ��׽�Ʈ�� ������ ���� ������ ��õ �޾ƺ�����!">
<title>������ ���㿩�� ��õ!</title>
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
	
	if(test2.equals("ȥ��")){
		test2 = "Ȧ��";
	}else if(test2.equals("���� �Ǵ� ģ��")){
		test2 = "����Ʈ";
	}
	
	if(test3.equals("�̻� ü��")){
		test3 = "ü��";
	}
	if(test4.equals("�ٱ� ����̵�")){
		test4 = "�ٱ�";
	}else if(test4.equals("����")){
		test4 = " "; // �ǹ̾��� �亯
	}
		
	
	TestDAO t_dao = new TestDAO();
	ArrayList<TestDTO> t_list = new ArrayList<>();
	t_list = t_dao.test_result(test1, test2, test3, test4, test5); // �׽�Ʈ ��� �������
	
	String city=t_list.get(0).getCity_name(); // ���� �̸� ����
	
	
	ArrayList<PlaceDTO> p_list = new ArrayList<>();
	p_list = t_dao.get_place(city); // ������� ���� place ���� ������..
	
	ArrayList<RestaurantDTO> r_list =  new ArrayList<>();
	r_list = t_dao.get_rest(city); // ������� ���� �Ĵ簪 �������
	
	
	ArrayList<DomitoryDTO> d_list = new ArrayList<>();
	d_list = t_dao.get_dom(city); // ����������� ���Ұ� �� ����.
	
	
	
	
	
	%>

	<div id="main_contents">
		<p id="text1" class="scrollAnim">������ �´� ��������..?</p>
		<p id="text2" class="scrollAnim">
			<%=city%>
		</p>
		<p id="city-introduce">
		<%=t_dao.get_intro(city)%>	
		</p>
		<div class="scrollAnim">
			<p id="startText">������ ���㿩�� ��õ!</p>
			<button id="startButton1" onclick="start()">�׽�Ʈ �ٽ� �ϱ�</button>
		</div>
		<div id="resultWrapper">
			<div class="results scrollAnim" id="good">
				<p id="corona">�ڷγ� ��Ȳ</p>
				<p class="results corona"></p>
			</div>
			<div class="results scrollAnim" id="good">
				<p id="place">�Ƚ� ������</p>
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
				<p id="restaurant">�Ƚ� �Ĵ�</p>
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
				<p id="domitory">�Ƚ� ����</p>
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
			<p id="copyText">ģ������ �����غ���!</p>
			<button id="copyButton" onclick="copy()">�ּ� �����ϱ�</button>
		</div>
		<p id="startText">������ ���㿩�� ��õ!</p>
		<button id="startButton2" onclick="start()">�׽�Ʈ �ٽ� �ϱ�</button>
	</div>
	<div id="dev">from nadeuli company</div>
	<div id="filler"></div>

</body>

</html>