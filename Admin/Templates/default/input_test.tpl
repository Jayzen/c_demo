<script type="text/javascript">

function checkSubmit(obj)
{
	if(!checkValid(obj)) return false;
	
	return true;
}

</script>
<script type="text/javascript" src="Admin/js/My97DatePicker/WdatePicker.js"></script>
<form action="{CURRENT_ACT}&ids={ID}" method="post" enctype="multipart/form-data" name="frmInfo" onSubmit="return checkSubmit(this);">
	<table width="100%"  border="0" cellpadding="0" cellspacing="0" class="normal">
		<tr class="adminheader">
			<td>
				<img src="{BASE_PREFIX}/images/mod_addedit.png" width="24" height="24" align="absmiddle" /> 
				<span class="module_title">{ButtonCaption}���Կ��Ա�</span>		
			</td>
		</tr>
	</table>
	
	<table width="100%"  border="0" cellspacing="0" cellpadding="5" class="adminform">
		
		<tr class="info_content">
			<td width="100" align="right" >
				����:
			</td>
			<td>
				<input type='text'  id='TestName'  name='TestName'  value='{TestName}' detail='����' />
			</td>
		</tr>
		
		<tr class="info_content">
			<td width="100" align="right" >
				����:
			</td>
			<td>
				<input type='text'  id='TestDesc'  name='TestDesc'  value='{TestDesc}' notnull=true detail='����' />
			</td>
		</tr>
		
		<tr class="info_content">
			<td width="100" align="right" >
				ʱ��:
			</td>
			<td>
				<input type='text'  id='AddTime'  name='AddTime' onClick="WdatePicker()"  value='{AddTime}'  detail='ʱ��' />
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