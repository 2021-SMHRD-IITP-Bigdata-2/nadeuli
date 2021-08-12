<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<!-- <meta http-equiv=refresh content="1; url=test-finish.jsp"> -->
<title>Insert title here</title>
<link rel="stylesheet" href="traveltest/css/commonStyle.css">
<style type="text/css">
.parent {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
}

.child {
  font-size: 2rem;
  padding: 3rem;
}
</style>
</head>
<body>
	<script type="text/javascript">
		let strresults = localStorage.getItem('results');
		location.href = "test-finish.jsp?result="+strresults;
	</script>
	<div class="parent">
		<div class="child">
			<img alt="" src="traveltest/images/loading.png" style="height:300px; width:300px;">
			<p>페이지 이동중입니다~</p>
		</div>
	</div>
</body>
</html>