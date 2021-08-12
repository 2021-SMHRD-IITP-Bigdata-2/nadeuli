var qdata = `#당신이 여행을 떠나고 싶은 이유는?
1힐링
1데이트
1관광
#여행을 떠나는 당신 누구랑 떠날 것인가?
2혼자
2가족
2연인 또는 친구
#여행 중 포기 못하는 것은?
3인증샷
3이색 체험
3맛집
#여행 중 시간이 남는다면, 당신은 어디로 갈것인가?
4카페
4숙소
4근교 드라이브
#당신이 제일 선호하는 숙소 유형은?
5호텔
5게스트하우스
5펜션`;

function loadFile(filePath) {
  var rawFile = new XMLHttpRequest();
    rawFile.open("GET", "traveltest/data/"+filePath, false);
    //rawFile.setRequestHeader("content-type","application/x-www-form-urlencoded; charset=euc-kr;");
    var allText="";
    rawFile.onreadystatechange = function ()
    {
        if(rawFile.readyState === 4)
        {
            if(rawFile.status === 200 || rawFile.status == 0)
            {
                allText = rawFile.responseText;
            }
        }
    }
    rawFile.send(null);
    return allText;
}