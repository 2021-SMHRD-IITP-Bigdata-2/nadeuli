<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


  
    <button onclick="fnMove('1')">div1로 이동</button>
    <button onclick="fnMove('2')">div2로 이동</button>
    <button onclick="fnMove('3')">div3로 이동</button>
    
    
    <div id="div1">div1</div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <div id="div2">div2</div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    
    <div id="div3">div3</div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>


		<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script>
    function fnMove(seq){
        var offset = $("#div" + seq).offset();
        $('html, body').animate({scrollTop : offset.top}, 400);
    }
</script>
</body>
</html>