<script type="text/javascript">
function checkSubmit(obj)
{
	{PasswordScript} //������޸ļ��ű���һ��, �ɺ�̨����
	if(!checkValid(obj)) return false;
}

</script>

<form action="{CURRENT_ACT}" method="post" enctype="multipart/form-data" name="frmInfo" onSubmit="return checkSubmit(this);">
	<input type='hidden' name='ids' value='{ID}' />
	<table width="100%"  border="0" cellpadding="0" cellspacing="0" class="normal">
		<tr class="adminheader">
			<td>
				<img src="{BASE_PREFIX}/images/mod_addedit.png" width="24" height="24" align="absmiddle" /> 
				<span class="module_title">{ButtonCaption}�û���</span>		
			</td>
		</tr>
	</table>
	<input type='hidden'  readonly=true id='UserID'  name='UserID'  value='{UserID}' detail='�û����' />
	<table width="100%"  border="0" cellspacing="0" cellpadding="5" class="adminform">
		<tr class="info_content">
			<td width="100" align="right" >
				�û���:
			</td>
			<td>
				<input type='text'  id='UserName'  name='UserName'  value='{UserName}' maxlength=100 notnull=true detail='�û���' />

			</td>
		</tr>
		
		<tr class="info_content">
			<td width="100" align="right" >
				��ʵ����:
			</td>
			<td>
				<input type='text'  id='RealName'  name='RealName'  value='{RealName}' maxlength=100 detail='��ʵ����' />
			</td>
		</tr>
		
		<tr class="info_content">
			<td width="100" align="right" >
				����:
			</td>
			<td>
				<input type='password'  id='Password'  name='Password'  value='{Password}' maxlength=100  detail='����' />

			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				ȷ������:
			</td>
			<td>
				<input type='password'  id='CheckPassword'  name='CheckPassword'  maxlength=100  detail='ȷ������' />

			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				�û���:
			</td>
			<td>
				�ҳ�:<input type='radio' name="UserGroup" value='3' checked />&nbsp;&nbsp;
				��ʦ:<input type='radio' name="UserGroup" value='2' />&nbsp;&nbsp;
				����Ա:<input type='radio' name="UserGroup" value='1' />
				<script type="text/javascript">autoSelected(document.frmInfo.UserGroup, '{UserGroup}');</script>
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				��ϵ�绰:
			</td>
			<td>
				<input type='text'  id='Mobile'  name='Mobile'  value='{Mobile}' detail='��ϵ�绰' />
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				��ϵ��ַ:
			</td>
			<td>
				<input type='text'  id='Address'  name='Address'  value='{Address}' style='width:400px' detail='��ϵ��ַ' />
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				������:
			</td>
			<td>
				<input type='text'  id='RelateStuNO'  name='RelateStuNO' style='width:400px' value='{RelateStuNO}' detail='������' />(�û�Ϊ�ҳ�ʱ, ������ѧ��ѧ��, ���ѧ����Ӣ�Ķ������; �û�Ϊ��ʦʱ, ������Ϊ��ʦ���ID��)
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
