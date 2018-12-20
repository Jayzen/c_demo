<HTML><HEAD><TITLE>白鹿教育查询系统-登陆</TITLE>
<script type="text/javascript" src="Admin/js/jquery-1.4.2.js"></script>
<style type="text/css">
BODY {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px
}
FORM {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px
}
.bodyBg {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px
}
BODY {
	BACKGROUND: url(Admin/templates/default/images/body.gif) #b3dce8 repeat-x center top; TEXT-ALIGN: center
}
BODY {
	FONT: 12px/18px Arial; COLOR: #316579
}
DIV {
	FONT: 12px/18px Arial; COLOR: #316579
}
INPUT {
	FONT: 12px/18px Arial; COLOR: #316579
}
LI {
	FONT: 12px/18px Arial; COLOR: #316579
}
SPAN {
	FONT: 12px/18px Arial; COLOR: #316579
}
UL {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px
}
LI {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; PADDING-TOP: 0px; LIST-STYLE-TYPE: none
}
.input {
	BORDER-RIGHT: #9bd5db 1px solid; PADDING-RIGHT: 4px; BORDER-TOP: #9bd5db 1px solid; PADDING-LEFT: 4px; PADDING-BOTTOM: 2px; FONT: bold 14px/15px Arial; BORDER-LEFT: #9bd5db 1px solid; WIDTH: 135px; COLOR: #0080b7; PADDING-TOP: 2px; BORDER-BOTTOM: #9bd5db 1px solid; HEIGHT: 23px
}
A:link {
	PADDING-RIGHT: 2px; PADDING-LEFT: 2px; PADDING-BOTTOM: 1px; COLOR: #70a4bc; PADDING-TOP: 1px; TEXT-DECORATION: none
}
A:visited {
	PADDING-RIGHT: 2px; PADDING-LEFT: 2px; PADDING-BOTTOM: 1px; COLOR: #70a4bc; PADDING-TOP: 1px; TEXT-DECORATION: none
}
A:active {
	PADDING-RIGHT: 2px; PADDING-LEFT: 2px; PADDING-BOTTOM: 1px; COLOR: #70a4bc; PADDING-TOP: 1px; TEXT-DECORATION: none
}
A:hover {
	COLOR: #559f39; TEXT-DECORATION: none
}
.bodyBg {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px;  PADDING-BOTTOM: 90px; WIDTH: 100%; PADDING-TOP: 100px; TEXT-ALIGN: center
}
#ou {
	BORDER-RIGHT: #4591ad 1px solid; BORDER-TOP: #4591ad 1px solid; 
	BACKGROUND: #b6e4e9; MARGIN: 0px auto; BORDER-LEFT: #4591ad 1px solid; WIDTH: 340px; 
	BORDER-BOTTOM: #4591ad 1px solid;
	width:540px;
}
#bb {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; BACKGROUND: #fff; PADDING-BOTTOM: 3px; MARGIN: 6px; OVERFLOW: hidden; WIDTH: 526px; PADDING-TOP: 3px
}
#head {
	BORDER-RIGHT: #cce6ec 1px solid; BORDER-TOP: #cce6ec 1px solid; MARGIN: 0px auto; OVERFLOW: hidden; BORDER-LEFT: #cce6ec 1px solid; WIDTH: 520px; BORDER-BOTTOM: #cce6ec 1px solid
}
#body {
	BORDER-RIGHT: #cce6ec 1px solid; BORDER-TOP: #cce6ec 1px solid; MARGIN: 0px auto; OVERFLOW: hidden; BORDER-LEFT: #cce6ec 1px solid; WIDTH: 520px; BORDER-BOTTOM: #cce6ec 1px solid
}
#foot {
	BORDER-RIGHT: #cce6ec 1px solid; BORDER-TOP: #cce6ec 1px solid; MARGIN: 0px auto; OVERFLOW: hidden; BORDER-LEFT: #cce6ec 1px solid; WIDTH: 520px; BORDER-BOTTOM: #cce6ec 1px solid
}
#head {
	
}
#head UL {
	PADDING-RIGHT: 0px; PADDING-LEFT: 120px; PADDING-BOTTOM: 0px; MARGIN: 20px 0px 0px 10px; FONT: 12px/28px Verdana; OVERFLOW: hidden; WIDTH: 470px; COLOR: #000; PADDING-TOP: 40px; LETTER-SPACING: 1px; TEXT-ALIGN: center
}
#head UL SPAN {
	COLOR: #cc3333
}
#login #head UL {
	BACKGROUND: url(Admin/templates/default/images/tp_login.gif) no-repeat left center
}

#button {
	BORDER-RIGHT: #cee3ec 1px solid; PADDING-RIGHT: 2px; BORDER-TOP: #cee3ec 1px solid; PADDING-LEFT: 2px; FLOAT: left; PADDING-BOTTOM: 2px; BORDER-LEFT: #cee3ec 1px solid; WIDTH: 86px; PADDING-TOP: 2px; BORDER-BOTTOM: #cee3ec 1px solid; HEIGHT: 32px
}
.btn {
	BORDER-RIGHT: 0px; BORDER-TOP: 0px; FONT: 14px/26px Arial; 
	BORDER-LEFT: 0px; WIDTH: 80px; CURSOR: pointer; COLOR: #1a7ebb; BORDER-BOTTOM: 0px; LETTER-SPACING: 1px; HEIGHT: 26px;
	BACKGROUND:  no-repeat center center;
}


.clear {
	CLEAR: both; FONT: 0px/0 arial; WIDTH: 1px; HEIGHT: 0px
}
#foot {
	BACKGROUND: #f8fcfc no-repeat right top; HEIGHT: 40px; TEXT-ALIGN: left
}


</style>
<script language="javascript">
<!--
//检查登陆
function checkLogin()
{
	var username = document.getElementById("userName").value;
	var password = document.getElementById("password").value;
	var verifyCode = document.getElementById("verifyCode").value;
	
	if(username == "" || username == "undefined")
	{
		document.getElementById("UserName").focus();
		
		return	alert("账号不能为空!");
	}
	
	if(password == "" || password == "undefined")
	{
		document.getElementById("Password").focus();
		
		return	alert("密码不能为空!");
	}
	
	if(verifyCode == "" || verifyCode == "undefined")
	{
		document.getElementById("verifyCode").focus();
		
		return	alert("验证码不能为空!");
	}
	 
	//用户验证
	var url = "admincp.aspx?mod=login&act=checklogin&isneedmain=0";
	$.post(url,{"UserName":escape(username), "Password":escape(password), "code":verifyCode},function(data,textStutas){
	
		if(data == "1")	
		{
			top.window.location.href = "admincp.aspx";
		}
		else if(data == "2")
		{
			return	alert("该账号不存在!");
		}
		else if(data == "3")
		{
			return	alert("密码错误!");
		}
		else if(data == "-2")
		{
			return	alert("验证码超时，请刷新页面!");
		}
		else if(data == "-1")
		{
			return	alert("验证码不正确，请重新输入!");
		}
		else
		{
			return alert("系统出错了");
		}
	});
}

function refreshCode()
{
	var img=document.getElementById('img_code');
	img.src='admincp.aspx?mod=login&act=verify&'+Math.random();
}
function checkPwd()
{
	if(window.event.keyCode == 13)
	{
		if($('#verifyCode').val().length == 4)
			return checkLogin(); 
		else
			$('#verifyCode').focus();
	}
}
-->
</script>
<STYLE type=text/css> 
{
	box-sizing: border-box; moz-box-sizing: border-box
}
TD {
	OVERFLOW: hidden
}
.mytd
{
	width:150px; 
	text-align:right; 
	height:50px;
}
</STYLE>
</HEAD>
<BODY>
<DIV class=bodyBg id=login>
	<DIV id=ou>
		<DIV id=bb>
			<DIV id=head>
			<UL>
			  正在登录[<SPAN>白鹿教育查询系统</SPAN>]
			</UL>
			</DIV>
			<DIV id=body>
				<DIV id=main style="text-algin:left">
				  <table width="100%">
					  <tr>
						  <td class="mytd">用户名: </td>
						  <td><input class="input" name="userName" type="text" id="userName" size="16" maxlength="16" notnull=true detail='用户名' autofocus=true></td>
					  </tr>
					  <tr>
						  <td class="mytd">密码: </td>
						  <td><input class="input" name="password" type="password" onKeyDown="checkPwd();" id="password" value="" size="16" notnull=true detail='密码'></td>
					  </tr>
					  <tr>
						  <td class="mytd">验证码: </td>
						  <td>
							  <input class="input" name="verifyCode" type="text" id="verifyCode" size="4" maxlength="4" onKeyDown="if(window.event.keyCode == 13) return checkLogin();" detail='验证码' notnull=true>
							  <img id="img_code" style="border:0 none; cursor:pointer;" src="{CURRENT_MODULE}&act=verify" onClick="refreshCode();" title="换一个验证码" />
						  </td>
					  </tr>
					  <tr>
						  <td colspan="2" align="center">
							<INPUT class="btn button" type=submit value="登 录" name=login onClick="checkLogin();">
						  </td>
					  </tr>
				  </table>
				</DIV>
			</div>
			<DIV id=foot></DIV>
		</DIV>
	</DIV>
</DIV>
</BODY></HTML>
<script>
	document.getElementById('userName').focus();
</script>