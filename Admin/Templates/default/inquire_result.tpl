<!DOCTYPE html>
<html>
<head>
  <meta charset="gb2312">
  <title>��¹����ѧϰ��ѯϵͳ</title>
  <meta name="KeyWords" content="">
  <meta name="Description" content="">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="format-detection" content="telephone=no">
  <!-- artDialog-6.0 -->
  <link href="js/artDialog6.0/ui-dialog.css" rel="stylesheet" type="text/css"/>
  
  <link rel="stylesheet" href="css/base.css">
  <link rel="stylesheet" href="css/main.css">
</head>
<body>
<div class="wrap">
  <div class="header">
    <div class="studentCard">
      <div class="info">
        <div class="child"><span>{StuName}</span><span>{StuSex}</span><span>{StuAge}��</span></div>
        <div class="school"><span>{School}</span><span>{StuGrade}�꼶</span></div>
      </div>
      <div class="action"><a class="btn" href="admincp.aspx?mod=pub&act=desk">���²�ѯ</a></div>
    </div>
  </div>
  <ul class="other_info">
    <li><p><em>ѧ��</em><span>{StuNO}</span></p></li>
    <li><p><em>������</em><span>{TeacherName}</span></p></li>
    <li><p><em>״̬</em><span class="{ClassState_Class}">{ClassState}</span></p></li>
    <!--�������С�״̬ʹ����ʽ class="on"�����ѵ��ڡ�״̬ʹ����ʽ class="off"��-->
  </ul>
  <dl class="result">
    <dt>{QueryDateTime}</dt>
    <dd>
      <div class="title"><span>����ʱ��</span></div>
      <div class="item"><p>{TotalDays}��</p></div>
    </dd>
    <dd>
      <div class="title"><span>ʣ��ʱ��</span></div>
      <div class="item"><p>{LeavingDays}��</p></div>
    </dd>
    <dd{HideComment}>
      <div class="title"><span>��������</span></div>
      <div class="item"><p>{ThisWeekComment}</p></div>
    </dd>
    <dd{HideComment}>
      <div class="title"><span>��������</span></div>
      <div class="item"><p>{LastWeekComment}</p></div>
    </dd>
    <dd class="weakness">
      <div class="title"><span>��������֪ʶ��</span></div>
      <div class="cruces">
		{weakness}
      </div>
    </dd>
    <dd class="gotNew">
      <div class="title"><span>�����յ�֪ʶ��</span></div>
      <div class="cruces">
        {gotNew}
      </div>
    </dd>
  </dl>
  <div class="floor">Copyright ? 2016 BAILU SCHOOL All Rights Reserved.</div>
</div>
<!--ͨ������-->
<div class="veilBlock veilZ-1 veilHide"></div>
<script src="js/jquery-2.1.3.min.js"></script>
<script src="js/artDialog6.0/dialog-min.js"></script>
<script>
$(document).ready(function(){
	//��֪ʶ�㴥����������Ķ���
	$('dl.result>dd>div.cruces>span').on('click', function () {
		var txt = $(this).text();
		var kd = $(this).attr("kd");
		var detail = $(this).attr("detail");
		var elem ='<div class=\"crucesDetail\" id=\"CrucesDetail\">'
			 //֪ʶ�����
			 +'  <div class=\"intor\">'
			 +'    <h2>'+txt+'</h2>'//����ʵ��֪ʶ���ȡ����
			 +'    <p>'+kd+'</p>'//����ʵ��֪ʶ���ȡ����
			 +'  </div>'
				 //<div class="opinion">����Ϊ֪ʶ��������������������������������ֱ��ɾ����
			 +'  <div class=\"opinion\">'
			 +'    <h2>֪ʶ���������</h2>'
			 +'    <p>'+detail+'</p>'//�������ݿ�ʵ�������ȡ����
			 +'  </div>'
			 +'</div>';
		var showCD = dialog({
			title: false,
			content: elem,//��ʾ������������ͨ�����ݿ����룬����ֻ��Ϊ��ʽʾ����
			quickClose: true,
			fixed: true,
			onshow: function () {
				$("body>div.veilBlock").removeClass("veilZ-1").removeClass("veilHide");
				$("body>div.ui-popup").next().css("cursor", "pointer");
			},
			onclose: function () {
				$("body>div.veilBlock").addClass("veilHide");
				setTimeout('$("body>div.veilBlock").addClass("veilZ-1")',400);
			}
		});
		showCD.show();
	});	
});
</script>
</body>
</html>