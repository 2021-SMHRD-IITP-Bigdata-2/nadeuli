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
<script type="text/javascript" src="traveltest/js/finishPageScript.js?version=2"></script>

	<script type="text/javascript">
	let results = localStorage.getItem('results');
	console.log(results);
	</script>
</head>
<body>
	<div id="main_contents">
		<p id="text1" class="scrollAnim">������ �´� ��������..?</p>
		<p id="text2" class="scrollAnim">����!!
		<%
		/* DB���� �´� ������ �̸� �������� */
		%>
		</p>
		</p>
		<ul id="city-introduce">��ٴ�~~
		<%
		/* ������ �Ұ����� ���� */
		%>
		</ul>
		<div class="scrollAnim">
			<p id="startText">������ ���㿩�� ��õ!</p>
			<button id="startButton1" onclick="start()">�׽�Ʈ �ٽ� �ϱ�</button>
		</div>
		<div id="resultWrapper">
			<div class="results scrollAnim" id="good">
				<p id="corona">�ڷγ� ��Ȳ</p>
				<p id="goodPower"></p>
			</div>
			<div class="results scrollAnim" id="good">
				<p id="place">�Ƚ� ������</p>
				<p id="goodPower"></p>
			</div>
			<div class="results scrollAnim" id="bad">
				<p id="restaurant">�Ƚ� �Ĵ�</p>
				<p id="badPower"></p>
			</div>
			<div class="results scrollAnim" id="bad">
				<p id="domitory">�Ƚ� ����</p>
				<p id="badPower"></p>
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