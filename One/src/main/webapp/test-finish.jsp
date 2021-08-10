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
<link rel="stylesheet" href="traveltest/css/commonStyle.css">
<link rel="stylesheet" href="traveltest/css/finishStyle.css">

<script type="text/javascript" src="traveltest/js/fileRead.js?version=2"></script>
<script type="text/javascript"
	src="traveltest/js/finishPageScript.js?version=2"></script>
</head>
<body>
	<div id="main_contents">
		<div class="result" id="select-city">
			<p id="text1" class="scrollAnim">��ſ��� �´� ��������...!</p>
			<img id="resultImage" src="images/placeholder.jpg" class="scrollAnim">
			<p id="text2" class="scrollAnim">��õ������ �Ұ�����</p>
			<button id="startButton" onclick="start()">�׽�Ʈ �ٽ� �ϱ�</button>
		</div>
		<div class="result" id="corona-info">
			<p id="text3" class="scrollAnim">�ڷγ� ��Ȳ</p>
		</div>
		<div class="result" id="place">
			<p id="text4" class="scrollAnim">�Ƚɿ�����</p>
		</div>
		<div class="result" id="restaurant">
			<p id="text5" class="scrollAnim">�ȽɽĴ�</p>
		</div>
		<div class="result" id="domitory">
			<p id="text6" class="scrollAnim">�Ƚɼ���</p>
		</div>
		<div class="scrollAnim">
			<p id="copyText">ģ������ �����غ���!</p>
			<button id="copyButton" onclick="copy()">�ּ� �����ϱ�</button>
		</div>
		<div class="scrollAnim">
			<p id="startText">������ ���㿩�� ��õ!</p>
			<button id="startButton" onclick="start()">�׽�Ʈ �ٽ� �ϱ�</button>
		</div>
		<div id="dev">from nadeuli company</div>
		<div id="filler"></div>
	</div>
</body>
</html>