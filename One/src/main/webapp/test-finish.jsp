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

<!-- <script type="text/javascript">

	jQuery(document).ready(function() {
		let strresults = localStorage.getItem('results'); //string형태
		let results = strresults.split(','); //array형태
		setCookie("why", strresults, 1)
	});

	function setCookie(name, value, days) {
		if (days) {
			var date = new Date();
			date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
			var expires = "; expires=" + date.toGMTString();
		} else{var expires = "";}
			
		document.cookie = name + "=" + value + expires + "; path=/";
	}
</script> -->
</head>
<body>
	<%
	String testResult = request.getParameter("result");
	out.print(testResult);
	//out.print(request.getParameter("result"));
	%>

	<div id="main_contents">
		<p id="text1" class="scrollAnim">나에게 맞는 여행지는..?</p>
		<p id="text2" class="scrollAnim">
			<% /* DB에서 맞는 여행지 이름 가져오기 */%>
		</p>
		<p id="city-introduce">
		<%
		/* 여행지 소개내용 적기 */ 
		%>	
		</p>
		<div class="scrollAnim">
			<p id="startText">나만의 맞춤여행 추천!</p>
			<button id="startButton1" onclick="start()">테스트 다시 하기</button>
		</div>
		<div id="resultWrapper">
			<div class="results scrollAnim" id="good">
				<p id="corona">코로나 현황</p>
				<p id="goodPower"></p>
			</div>
			<div class="results scrollAnim" id="good">
				<p id="place">안심 여행지</p>
				<p id="goodPower">
					<%
					/*  */
					%>
				</p>
			</div>
			<div class="results scrollAnim" id="bad">
				<p id="restaurant">안심 식당</p>
				<p id="badPower"></p>
			</div>
			<div class="results scrollAnim" id="bad">
				<p id="domitory">안심 숙소</p>
				<p id="badPower"></p>
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