 //���õ� �亯�� �� ��������
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
  alert("�ּҰ� ���� �ƽ��ϴ�. ģ������ �����غ�����!");
}
