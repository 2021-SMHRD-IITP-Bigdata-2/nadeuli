var qdata = `#����� ����� ���� ������ ���ٸ� ��Ҵ�?
1�ٴ尡
1��
1����
#������ ������ ��� ������ ���� ���ΰ�?
2ȥ��
2����
2���� �Ǵ� ģ��
#���� �� ���� ���ϴ� ����?
3������
3�̻� ü��
3����
#���� ��� ������ ���ٸ�?
4���� Ư�깰
4���ǰ
4�������� ���� ��
#����� ���� ��ȣ�ϴ� ���� ������?
5ȣ��
5�Խ�Ʈ�Ͽ콺
5���`;

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