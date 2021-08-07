<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width" user-scalable="no">
<title>나만의 맞춤 여행 추천!</title>

<link rel="stylesheet" href="trip-test/css/commonStyle.css">
  <link rel="stylesheet" href="trip-test/css/quizStyle.css">

  <script type="text/javascript" src="trip-test/js/fileRead.js?version=2"></script>
  <script type="text/javascript" src="trip-test/js/script.js?version=2"></script>
</head>
<body>
	<div id="main_contents">
    <div id = "progressDiv">
      <div id ="progressBar"><div id="progressValue"></div></div>
      <div id="progressText">0</div>
    </div>
    <div id="qna_mask">
      <ul id = "qna_slider">
      </ul>
      <button id="prevButton" onclick="moveSlider(-1)">이전</button>
    </div>
  </div>
</body>
</html>