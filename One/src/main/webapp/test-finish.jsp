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
  <link rel="stylesheet" href="traveltest/css/commonStyle.css">
  <link rel="stylesheet" href="traveltest/css/finishStyle.css">

  <script type="text/javascript" src="traveltest/js/fileRead.js?version=2"></script>
  <script type="text/javascript" src="traveltest/js/finishPageScript.js?version=2"></script>
</head>
<body>
	<div id="main_contents">
      <p id="text1" class="scrollAnim">당신에게 맞는 여행지는...!</p>
      <img id="resultImage" src="images/placeholder.jpg" class="scrollAnim">
      <p id="text2" class="scrollAnim">
      </p>
      <p id="text3" class="scrollAnim">이ㅓㅁ니ㅏㅇㅎ알너 하는 능력</p>
      <ul id="discription" >
      </ul>
      
      <!-- <div id = "harmonyWrapper">
        <div class="harmony scrollAnim" id="good">
          <p id="goodText">잘 맞는 초능력자</p>
          <img id="goodImage" src="images/placeholder.jpg">
          <p id="goodPower"></p>
        </div>
        <div class="harmony scrollAnim" id="bad">
          <p id="badText">잘 안맞는 초능력자</p>
          <img id="badImage" src="images/placeholder.jpg">
          <p id="badPower"></p>
        </div>
      </div> -->
      <div class="scrollAnim">
        <p id="copyText">친구에게 공유해봐요!</p>
        <button id="copyButton" onclick="copy()">주소 복사하기</button>
      </div>
      <div class="scrollAnim">
        <p id="startText">나만의 맞춤여행 추천!</p>
        <button id="startButton" onclick="start()" >테스트 다시 하기</button>
      </div>
      <div id="dev">
        from nadeuli company
      </div>
      <div id="filler"></div>
  </div>
</body>
</html>