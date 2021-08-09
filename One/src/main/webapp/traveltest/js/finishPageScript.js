var mainContents = null;
var features = [];
var powerName = ["","",""];
var powerDisc = ["","",""];
var text2 = null;
var text3 = null;
var discription = null;
var resultImage = null;
var winH = window.innerHeight;
var scrollY = window.scrollY;
var animElements = [];

//결과화면의 내용 가져오기
function initElements()
{
    mainContents = document.getElementById("main_contents");
    text2 = document.getElementById("text2");
    text3 = document.getElementById("text3");
    discription = document.getElementById("discription");
    resultImage = document.getElementById("resultImage");
 }
 
//유형에 맞는 자료 가져오기
window.addEventListener('DOMContentLoaded', function(){
  initElements();
  var type = window.location.hash.slice(1);
  var featuresRaw = loadFile("results/"+type+".txt");

  var sentances = featuresRaw.split('\n');
  for (var i =0; i<sentances.length; i++) {
    if(sentances[i]=='')
      continue;
      features.push(sentances[i].slice(1));
  }
//  sentances = harmonyRaw.split('\n');
//   for(var i=0; i<sentances.length; i++) {
//     if(sentances[i]=='')
//       continue;
//     var words = sentances[i].split('#');
//     if(words[0] == type)
//     {
//       harmony.push(words[1]);
//       harmony.push(words[2]);
//     }
//   }
//   sentances = powersRaw.split('\n');
//   for(var i=0; i<sentances.length; i++) {
//     if(sentances[i]=='')
//       continue;
//     var words = sentances[i].split('#');
//     if(words[0] == type)
//     {
//       powerName[0] = words[1];
//       powerDisc[0] = words[2];
//     }
//     else if(words[0] == harmony[0])
//     {
//       powerName[1] = words[1];
//       powerDisc[1] = words[2];
//     }
//     else if(words[0] == harmony[1])
//     {
//       powerName[2] = words[1];
//       powerDisc[2] = words[2];
//     }
//   }

//   text2.innerHTML = powerName[0];
//   text3.innerHTML = powerDisc[0];
//   goodPower.innerHTML = powerName[1];
//   badPower.innerHTML = powerName[2];
   var tstr = "";
   for(var i=0; i<features.length; i++)
     tstr += "<li class=\"scrollAnim\">"+features[i]+"</li>";
   discription.innerHTML = tstr;

   resultImage.src = "traveltest/images/test-main.png";
   animElements = Array.prototype.slice.call( document.getElementsByClassName("scrollAnim") );

 });

document.addEventListener('scroll',checkScroll);
var check = true;
function checkScroll()  {
  if(!check)
    return;
  for(var i=0; i<animElements.length; i++)
  {
    if(animElements[i].getBoundingClientRect().top< window.innerHeight)
    {
      animElements[i].style.opacity = "1";
      animElements.splice(i,1);
      check=false;
      setTimeout(function(){
        check = true;
      },190);
      setTimeout(checkScroll,200);
      return;
    }
  }
}

window.onload = function(){

  mainContents.style.opacity = "1";
  checkScroll();
};

function start() {
  mainContents.style.opacity = "0";
  setTimeout(quiz,400);
}

function quiz(){
  window.location.href = "test-contents.jsp";
}

function copy(){
  const tempElem=document.createElement('textarea');
  tempElem.value = window.location.href;
  document.body.appendChild(tempElem);
  tempElem.select();
  document.execCommand('copy');
  document.body.removeChild(tempElem);
  alert("주소가 복사 됐습니다. 친구에게 공유해보세요!");
}
