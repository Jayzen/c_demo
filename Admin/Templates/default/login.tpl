<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>白鹿学习查询系统</title>
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
      <li><span><i class="user"></i></span><p><input type="text" id="userName" value="{UserName}" placeholder="请输入用户名\手机号" /></p></li>
      <li><span><i class="pass"></i></span><p><input type="password" id="password" value="{Password}" placeholder="请输入密码" /></p></li>
      <li class="action">
        <a class="submitBtn" href="#" title="登录" onClick="login()">登录</a>
        <div class="forget"><div style='float:right;wdith:150px;'><a href="register.html" title="注册账号">注册账号</a></div><div style='margin-right:20px;float:right;padding:0 4px;font-size:13px;color:#999;wdith:150px;' >记住密码<input  style='margin-left:4px;margin-top:2px' type='checkbox' {RemCheck} id='remember' name='remember' value='1' /></div></div>
      </li>
    </ul>
  </form>
  <div class="floor">Copyright &copy; 2016 BAILU SCHOOL All Rights Reserved.<br />
  <a href='http://www.miitbeian.gov.cn'>浙ICP备16022903号-1</a>
  </div>
</div>
<!--通用遮罩-->
<div class="veilBlock veilZ-1 veilHide"></div>
<script src="js/jquery-2.1.3.min.js"></script>
<script src="js/artDialog6.0/dialog-min.js"></script>
<script>
//登录
function login()
{
	var username = document.getElementById("userName").value;
	var password = document.getElementById("password").value;
	
	
	if(username == "" || username == "undefined")
	{
		document.getElementById("userName").focus();
		return	showMsgDialog("用户名不能为空!");
	}

	if(password == "" || password == "undefined")
	{
		document.getElementById("password").focus();
		return	showMsgDialog("密码不能为空!");
	}

	//用户验证
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
			return showMsgDialog("账号不存在!");
		}
		else if(data == "3")
		{
			return showMsgDialog("密码错误!");
		}
		else
			showMsgDialog("系统异常");
	});
}

function showMsgDialog (elem) {
	var showCue = dialog({
		title: false,
		content: elem,//显示的提示信息根据错误类型自行配制，这里只作为样式示范。
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