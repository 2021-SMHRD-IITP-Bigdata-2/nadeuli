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
  <script type="text/javascript" src="traveltest/js/finishPageScript.js?version=2"></script>
</head>
<body>
	<div id="main_contents">
      <p id="text1" class="scrollAnim">��ſ��� �´� ��������...!</p>
      <img id="resultImage" src="images/placeholder.jpg" class="scrollAnim">
      <p id="text2" class="scrollAnim">
      </p>
      <p id="text3" class="scrollAnim">�̤ä��Ϥ������˳� �ϴ� �ɷ�</p>
      <ul id="discription" >
      </ul>
      
      <!-- <div id = "harmonyWrapper">
        <div class="harmony scrollAnim" id="good">
          <p id="goodText">�� �´� �ʴɷ���</p>
          <img id="goodImage" src="images/placeholder.jpg">
          <p id="goodPower"></p>
        </div>
        <div class="harmony scrollAnim" id="bad">
          <p id="badText">�� �ȸ´� �ʴɷ���</p>
          <img id="badImage" src="images/placeholder.jpg">
          <p id="badPower"></p>
        </div>
      </div> -->
      <div class="scrollAnim">
        <p id="copyText">ģ������ �����غ���!</p>
        <button id="copyButton" onclick="copy()">�ּ� �����ϱ�</button>
      </div>
      <div class="scrollAnim">
        <p id="startText">������ ���㿩�� ��õ!</p>
        <button id="startButton" onclick="start()" >�׽�Ʈ �ٽ� �ϱ�</button>
      </div>
      <div id="dev">
        from nadeuli company
      </div>
      <div id="filler"></div>
  </div>
</body>
</html>