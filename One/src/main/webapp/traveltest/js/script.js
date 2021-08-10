var quizData = [];
var numOfQuiz = 0;
var answerData=[];
var widthOfItem = 350;
var currentCard = 0;
//누적할 키워드
var testResults = [];

var slider = null;
var progressText = null;
var progressDiv = null;
var mainContents = null;
var progressBar = null;
var backButton = null;


window.addEventListener('DOMContentLoaded', function(){
  //질문과 답이 있는 텍스트 파일을 가져옴
  //var rawData = loadFile("quizData.txt");
  var rawData = qdata;
  //밑에 있는 기능 가져옴 틀 보여주는거 
  initElements();

  //init quizData & answerData & numOfQuiz
  var sentances = rawData.split('\n'); //엔터를 기준으로 잘라 넣음
  //console.log(sentances);  해보면 배열로 들어간다.

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

//결과페이지로 보내기
function finish(){
	//선택한 답변을 담은 배열 finish.jsp로 보내기
	let result = testResults;
	console.log(result);
	localStorage.setItem('results',result);
  window.location.href = "test-finish.jsp";
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

