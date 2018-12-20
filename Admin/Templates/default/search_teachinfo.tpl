<script type="text/javascript" src="Admin/js/My97DatePicker/WdatePicker.js"></script>
<form action="{SCRIPT_SELF}" method="get" name="frmInfo">
	<table width="100%"  border="0" cellpadding="0" cellspacing="0" class="normal">
		<tr class="adminheader">
			<td>
				<img src="{BASE_PREFIX}/images/mod_search.png" width="24" height="24" align="absmiddle" /> 
				<span class="module_title">{LANG_search}用户表</span>
				
				<input id="inSearch" name="inSearch" type="hidden" value="1" />			
				<input id="mod" name="mod" type="hidden" />
				<script type="text/javascript">
					document.frmInfo.mod.value = URLParams["mod"];
				</script>
			</td>
		</tr>
	</table>

	<table width="100%"  border="0" cellspacing="0" cellpadding="5" class="adminform">
		
		<tr class="info_content">
			<td width="100" align="right" >
				编号:
			</td>
			<td>
				<input type='text'  id='ID'  name='ID'   detail='编号' />
			</td>
		</tr>
		
		<tr class="info_content">
			<td width="100" align="right" >
				姓名:
			</td>
			<td>
				<input type='text'  id='TeacherName'  name='TeacherName'   detail='姓名' />
			</td>
		</tr>
		
		<tr align="center" class="info_operate">
			<td colspan="2">    	
				<input type="submit" name="Submit" value="{LANG_search}" />&nbsp;
				<input type="button" value="{LANG_return}" onClick="doCancel();" />
			</td>
		</tr>
	</table>
</form>