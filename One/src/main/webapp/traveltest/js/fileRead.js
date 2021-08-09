var qdata = `#당신이 사람이 없는 곳으로 간다면 장소는?
1바닷가
1산
1도시
#여행을 떠나는 당신 누구랑 떠날 것인가?
2혼자
2가족
2연인 또는 친구
#여행 중 포기 못하는 것은?
3인증샷
3이색 체험
3맛집
#여행 기념 선물을 고른다면?
4지역 특산물
4기념품
4지나가다 예쁜 것
#당신이 제일 선호하는 숙소 유형은?
5호텔
5게스트하우스
5펜션`;

function loadFile(filePath) {
  var rawFile = new XMLHttpRequest();
    rawFile.open("GET", "traveltest/data/"+filePath, false);
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