 //선택된 답변의 값 가져오기
//let results = localStorage.getItem('results');
//console.log(results);


function start(){
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
