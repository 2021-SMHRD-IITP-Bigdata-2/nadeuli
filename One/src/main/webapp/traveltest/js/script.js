var quizData = [];
var numOfQuiz = 0;
var answerData=[];
var widthOfItem = 350;
var currentCard = 0;
//������ Ű����
var testResults = [];

var slider = null;
var progressText = null;
var progressDiv = null;
var mainContents = null;
var progressBar = null;
var backButton = null;


window.addEventListener('DOMContentLoaded', function(){
  //������ ���� �ִ� �ؽ�Ʈ ������ ������
  //var rawData = loadFile("quizData.txt");
  var rawData = qdata;
  //�ؿ� �ִ� ��� ������ Ʋ �����ִ°� 
  initElements();

  //init quizData & answerData & numOfQuiz
  var sentances = rawData.split('\n'); //���͸� �������� �߶� ����
  //console.log(sentances);  �غ��� �迭�� ����.

  for (var i =0; i<sentances.length; i++) {
    let text = sentances[i];
    if(text =='')
      continue;
    //�����Ϳ� #�� �����ϸ� �������� �ν��Ѵ�.
    else if(text[0]=='#')  {
      //���� �����͸� �ν������� ���� ������ �迭�� �ϳ��� �߶� �־��ش�.
      quizData.push([text.slice(1)]);
      //���� �� 1�����Ѵ�.
      numOfQuiz++;
      answerData.push(-1);
    }
    else {
      quizData[numOfQuiz-1].push( [text.slice(1),text[0]]);
    }
  }

  //make all li's ������ �� ���
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



// ������ư�� ������ ���� �������� ���ư��°�
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

//����������� ������
function finish(){
	//������ �亯�� ���� �迭 finish.jsp�� ������
	let result = testResults;
	console.log(result);
	localStorage.setItem('results',result);
  window.location.href = "test-finish.jsp";
}
//���� �����ִ°�
function initElements()
{
  slider = document.getElementById("qna_slider");
  progressText = document.getElementById("progressText");
  progressDiv = document.getElementById("progressDiv");
  mainContents = document.getElementById("main_contents");
  progressBar = document.getElementById("progressValue");
  backButton = document.getElementById("prevButton");
}
//������ �亯�� ��� üũ �ǰԲ�
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

