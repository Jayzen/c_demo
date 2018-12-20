<script type="text/javascript">
function checkSubmit(obj)
{
	{PasswordScript} //添加与修改检查脚本不一样, 由后台生成
	if(!checkValid(obj)) return false;
}

</script>

<form action="{CURRENT_ACT}" method="post" enctype="multipart/form-data" name="frmInfo" onSubmit="return checkSubmit(this);">
	<input type='hidden' name='ids' value='{ID}' />
	<table width="100%"  border="0" cellpadding="0" cellspacing="0" class="normal">
		<tr class="adminheader">
			<td>
				<img src="{BASE_PREFIX}/images/mod_addedit.png" width="24" height="24" align="absmiddle" /> 
				<span class="module_title">{ButtonCaption}用户表</span>		
			</td>
		</tr>
	</table>
	<input type='hidden'  readonly=true id='UserID'  name='UserID'  value='{UserID}' detail='用户编号' />
	<table width="100%"  border="0" cellspacing="0" cellpadding="5" class="adminform">
		<tr class="info_content">
			<td width="100" align="right" >
				用户名:
			</td>
			<td>
				<input type='text'  id='UserName'  name='UserName'  value='{UserName}' maxlength=100 notnull=true detail='用户名' />

			</td>
		</tr>
		
		<tr class="info_content">
			<td width="100" align="right" >
				真实姓名:
			</td>
			<td>
				<input type='text'  id='RealName'  name='RealName'  value='{RealName}' maxlength=100 detail='真实姓名' />
			</td>
		</tr>
		
		<tr class="info_content">
			<td width="100" align="right" >
				密码:
			</td>
			<td>
				<input type='password'  id='Password'  name='Password'  value='{Password}' maxlength=100  detail='密码' />

			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				确认密码:
			</td>
			<td>
				<input type='password'  id='CheckPassword'  name='CheckPassword'  maxlength=100  detail='确认密码' />

			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				用户组:
			</td>
			<td>
				家长:<input type='radio' name="UserGroup" value='3' checked />&nbsp;&nbsp;
				老师:<input type='radio' name="UserGroup" value='2' />&nbsp;&nbsp;
				管理员:<input type='radio' name="UserGroup" value='1' />
				<script type="text/javascript">autoSelected(document.frmInfo.UserGroup, '{UserGroup}');</script>
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				联系电话:
			</td>
			<td>
				<input type='text'  id='Mobile'  name='Mobile'  value='{Mobile}' detail='联系电话' />
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				联系地址:
			</td>
			<td>
				<input type='text'  id='Address'  name='Address'  value='{Address}' style='width:400px' detail='联系地址' />
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				关联号:
			</td>
			<td>
				<input type='text'  id='RelateStuNO'  name='RelateStuNO' style='width:400px' value='{RelateStuNO}' detail='关联号' />(用户为家长时, 关联号学生学号, 多个学号以英文逗号相隔; 用户为老师时, 关联号为老师表的ID号)
			</td>
		</tr>
		
		<tr align="center" class="info_operate">
			<td colspan="2">
				<input type="submit" name="Submit" value="{ButtonCaption}">&nbsp; 
				<input type="button" value="{LANG_return}" onclick="doCancel();"> 
				<input name="postFlag" type="hidden" id="postFlag" value="1">	
				<input name="refer" type="hidden" id="refer" value="{refer}">
			</td>
		</tr>
	</table>
	
</form>
