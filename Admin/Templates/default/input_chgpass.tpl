<HTML><HEAD><TITLE>跃兔网络管理系统-密码修改</TITLE>
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
function checkModify()
{
	var oldPass = document.getElementById("OldPass").value;
	var password = document.getElementById("Password").value;
	var checkPassword = document.getElementById("CheckPassword").value;
	var UserID = document.getElementById("UserID").value;
	
	if(oldPass == "" || oldPass == "undefined")
	{
		document.getElementById("OldPass").focus();
		return	alert("原始密码不能为空!");
	}
	if(password == "" || password == "undefined")
	{
		document.getElementById("Password").focus();
		return	alert("密码不能为空!");
	}
	if(checkPassword == "" || checkPassword == "undefined")
	{
		document.getElementById("CheckPassword").focus();
		return	alert("确认密码不能为空!");
	}
	if(checkPassword != password)
	{
		document.getElementById("CheckPassword").focus();
		return	alert("新密码与确认密码不同!");
	}
	//用户验证
	var url = "admincp.aspx?mod=login&act=savepass&isneedmain=0";
	$.post(url,{"oldPass":oldPass, "Password":password, "UserID": UserID},function(data,textStutas){
	
	if(data == "1")	
	{
		window.location.href = "admincp.aspx";
	}
	else if(data == "0")
	{
		return	alert("原始密码错误");
	}
	else
	{
		return alert("系统错误");
	}
	})
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
	width:180px; 
	text-align:right; 
	height:50px;
}
</STYLE>
</HEAD>
<BODY>
<DIV class=bodyBg id=login>
	<DIV id=ou>
		<DIV id=bb>
			<DIV id=body>
				<DIV id=main style="text-algin:left">
				<input type="hidden" name="UserID" type="text" id="UserID" value="{UserID}" />
				  <table width="100%">
					  <tr>
						  <td class="mytd">原始密码: </td>
						  <td><input class="input" name="OldPass" type="password" id="OldPass" value="" size="20" notnull=true detail='原始密码'></td>
					  </tr>
					  <tr>
						  <td class="mytd">新密码: </td>
						  <td>
							  <input class="input" name="Password" type="password" id="Password"  size="20" maxlength="20" detail='新密码' notnull=true>
						  </td>
					  </tr>
					  <tr>
						  <td class="mytd">确认新密码: </td>
						  <td>
							  <input class="input" name="CheckPassword" type="password" id="CheckPassword"  size="20" maxlength="20" detail='确认新密码' notnull=true>
						  </td>
					  </tr>
					  <tr>
						  <td colspan="2" align="center">
							<INPUT class="btn button" type=submit value="修改" name=login onClick="checkModify();">&nbsp;&nbsp;
							<INPUT class="btn button" type="button" value="返回" onClick="javascript:history.back(-1);">
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