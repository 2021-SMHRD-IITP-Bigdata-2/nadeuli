var qdata = `#����� ������ ������ ���� ������?
1����
1����Ʈ
1����
#������ ������ ��� ������ ���� ���ΰ�?
2ȥ��
2����
2���� �Ǵ� ģ��
#���� �� ���� ���ϴ� ����?
3������
3�̻� ü��
3����
#���� �� �ð��� ���´ٸ�, ����� ���� �����ΰ�?
4ī��
4����
4�ٱ� ����̺�
#����� ���� ��ȣ�ϴ� ���� ������?
5ȣ��
5�Խ�Ʈ�Ͽ콺
5���`;

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