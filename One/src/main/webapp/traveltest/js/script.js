var data = `#당신이 여행을 떠나고 싶은 이유는?
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
var quizData = [];
var numOfQuiz = 0;
var answerData=[];
var widthOfItem = 350;
var currentCard = 0;
//누적할 변수
var testResults = [];
//값을 주고받기 위한 변수들
var strResults = "";
var date = null;
var expires = null;

var slider = null;
var progressText = null;
var progressDiv = null;
var mainContents = null;
var progressBar = null;
var backButton = null;


window.addEventListener('DOMContentLoaded', function(){
  var rawData = data;//질문과 답이 있는 텍스트 파일을 가져옴
  
  initElements();//밑에 있는 기능 가져옴 틀 보여주는거 

  //init quizData & answerData & numOfQuiz
  var sentances = rawData.split('\n'); //엔터를 기준으로 잘라 넣음

  for (var i =0; i<sentances.length; i++) {
    let text = sentances[i];
    if(text =='')
      continue;
    //데이터에 #로 시작하면 질문으로 인식한다.
    else if(text[0]=='#')  {
      //질문 데이터를 인식했으면 질문 데이터 배열에 하나씩 잘라서 넣어준다.
      quizData.push([text.slice(1)]);
      //질문 수 1누적한다.
      numOfQuiz++;
      answerData.push(-1);
    }
    else {
      quizData[numOfQuiz-1].push( [text.slice(1),text[0]]);
    }
  }

  //make all li's 문제와 답 출력
  for(var i=0; i<quizData.length; i++)
  {
    var htmlData = "<li><div id=\"question\">"+
                      quizData[i][0]+"</div><div id = \"answer\">";
    for(var j=1; j<quizData[i].length; j++)
      htmlData +="<button class=\"answers\" id = \""+i+"_"+(j-1)+"\"onclick=\"answerSelected("+i+","+(j-1)+")\">"+quizData[i][j][0]+"</button>";
    htmlData +="</div></li>";
    slider.innerHTML += htmlData;
  }
  slider.style.width = ""+ widthOfItem * (quizData.length) + "px";

  updateProgressBar();
});

window.onload = function()  {
  mainContents.style.opacity = "1";
}

function updateProgressBar()
{
  progressText.innerHTML = ""+(currentCard+1)+"/"+numOfQuiz;
  progressBar.style.width = ""+(100*(currentCard+1)/numOfQuiz)+"%";
}



// 이전버튼을 누르면 이전 내용으로 돌아가는것
function moveSlider(dir)
{
  var player = slider.animate([
    {transform: "translate("+(currentCard * -widthOfItem)+"px,0px)"},
    {transform: "translate("+((currentCard+dir) * -widthOfItem)+"px,0px)"}
  ], {duration:360, easing:"ease-out"});
  player.addEventListener("finish",function(){
    slider.style.transform="translate("+((currentCard * -widthOfItem))+"px,0px)";
  });
  currentCard += dir;

  if(currentCard !=0 && currentCard != numOfQuiz)
    backButton.style.display = "block";
  else
    backButton.style.display = "none";

  if(currentCard == numOfQuiz)
  {
    progressText.innerHTML = "";
    mainContents.style.opacity = "0";
    setTimeout(finish,400);
    return;
  }
  updateProgressBar();
}

//결과페이지로 로컬스토리지 보내기
function finish(){
	//선택한 답변을 담은 배열 finish.jsp로 보내기
	let result = testResults;
	//console.log(result);
	localStorage.setItem('results',result);
  	window.location.href = "test-short.jsp";
}

//내용 보여주는것
function initElements()
{
  slider = document.getElementById("qna_slider");
  progressText = document.getElementById("progressText");
  progressDiv = document.getElementById("progressDiv");
  mainContents = document.getElementById("main_contents");
  progressBar = document.getElementById("progressValue");
  backButton = document.getElementById("prevButton");
}
//선택한 답변은 계속 체크 되게끔
function answerSelected(question,answer)
{
  var but = document.getElementById(""+question+"_"+answerData[question]);
  if(question != currentCard)
    return;
  if(but != null)
    but.classList.remove("selected");

  answerData[question] = answer;

  but = document.getElementById(""+question+"_"+answer);
  but.classList.add("selected");

  moveSlider(+1);
  testResults.push(but.innerText);
}
//console.log(testResults);