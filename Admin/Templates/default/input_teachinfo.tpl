<script type="text/javascript">

function checkSubmit(obj)
{
	if(!checkValid(obj)) return false;
	
	return true;
}

</script>

<form action="{CURRENT_ACT}&ids={ID}" method="post" enctype="multipart/form-data" name="frmInfo" onSubmit="return checkSubmit(this);">
	<table width="100%"  border="0" cellpadding="0" cellspacing="0" class="normal">
		<tr class="adminheader">
			<td>
				<img src="{BASE_PREFIX}/images/mod_addedit.png" width="24" height="24" align="absmiddle" /> 
				<span class="module_title">{ButtonCaption}老师信息</span>		
			</td>
		</tr>
	</table>
	
	<table width="100%"  border="0" cellspacing="0" cellpadding="5" class="adminform">
		
		<tr class="info_content">
			<td width="100" align="right" >
				编号:
			</td>
			<td>
				<input type='text'  id='ID'  name='ID'  value='{ID}' readonly detail='编号' />
			</td>
		</tr>
		
		<tr class="info_content">
			<td width="100" align="right" >
				姓名:
			</td>
			<td>
				<input type='text'  id='TeacherName'  name='TeacherName'  value='{TeacherName}' notnull=true detail='姓名' />
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