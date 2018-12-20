<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>��¹ѧϰ��ѯϵͳ</title>
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
  <link rel="stylesheet" href="css/user.css">
</head>
<body>
<div class="wrap">
  <div class="header">
    <div class="logo"><img src="images/logo.png"/></div>
  </div>
  <form>
    <ul class="orderList login">
      <li><span><i class="user"></i></span><p><input type="text" id="userName" value="{UserName}" placeholder="�������û���\�ֻ���" /></p></li>
      <li><span><i class="pass"></i></span><p><input type="password" id="password" value="{Password}" placeholder="����������" /></p></li>
      <li class="action">
        <a class="submitBtn" href="#" title="��¼" onClick="login()">��¼</a>
        <div class="forget"><div style='float:right;wdith:150px;'><a href="register.html" title="ע���˺�">ע���˺�</a></div><div style='margin-right:20px;float:right;padding:0 4px;font-size:13px;color:#999;wdith:150px;' >��ס����<input  style='margin-left:4px;margin-top:2px' type='checkbox' {RemCheck} id='remember' name='remember' value='1' /></div></div>
      </li>
    </ul>
  </form>
  <div class="floor">Copyright &copy; 2016 BAILU SCHOOL All Rights Reserved.<br />
  <a href='http://www.miitbeian.gov.cn'>��ICP��16022903��-1</a>
  </div>
</div>
<!--ͨ������-->
<div class="veilBlock veilZ-1 veilHide"></div>
<script src="js/jquery-2.1.3.min.js"></script>
<script src="js/artDialog6.0/dialog-min.js"></script>
<script>
//��¼
function login()
{
	var username = document.getElementById("userName").value;
	var password = document.getElementById("password").value;
	
	
	if(username == "" || username == "undefined")
	{
		document.getElementById("userName").focus();
		return	showMsgDialog("�û�������Ϊ��!");
	}

	if(password == "" || password == "undefined")
	{
		document.getElementById("password").focus();
		return	showMsgDialog("���벻��Ϊ��!");
	}

	//�û���֤
	var url = "admincp.aspx?mod=pub&act=login&check=1&isneedmain=0";
	if($("#remember").is(":checked"))
	{
		url += "&rem=1";
	}
	$.post(url,{"UserName":escape(username), 
	"Password":escape(password)}, 
	function(data,textStutas){
		if(data == "1")	
		{
			location = "admincp.aspx?mod=pub&act=desk";
		}
		else if(data == "2")
		{
			return showMsgDialog("�˺Ų�����!");
		}
		else if(data == "3")
		{
			return showMsgDialog("�������!");
		}
		else
			showMsgDialog("ϵͳ�쳣");
	});
}

function showMsgDialog (elem) {
	var showCue = dialog({
		title: false,
		content: elem,//��ʾ����ʾ��Ϣ���ݴ��������������ƣ�����ֻ��Ϊ��ʽʾ����
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
	showCue.show();
}
</script>
</body>
</html>