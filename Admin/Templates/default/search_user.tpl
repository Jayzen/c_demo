<script type="text/javascript" src="Admin/js/My97DatePicker/WdatePicker.js"></script>
<form action="{SCRIPT_SELF}" method="get" name="frmInfo">
	<table width="100%"  border="0" cellpadding="0" cellspacing="0" class="normal">
		<tr class="adminheader">
			<td>
				<img src="{BASE_PREFIX}/images/mod_search.png" width="24" height="24" align="absmiddle" /> 
				<span class="module_title">{LANG_search}�û���</span>
				
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
				�û���:
			</td>
			<td>
				<input type='text'  id='UserName'  name='UserName' maxlength=100 etail='�û���' />

			</td>
		</tr>
		
		<tr class="info_content">
			<td width="100" align="right" >
				��ʵ����:
			</td>
			<td>
				<input type='text'  id='RealName'  name='RealName'  maxlength=100 detail='��ʵ����' />
			</td>
		</tr>
		
		<tr class="info_content">
			<td width="100" align="right" >
				�û���:
			</td>
			<td>
				����:<input type='radio' name="UserGroup" value='' checked />&nbsp;&nbsp;
				�ҳ�:<input type='radio' name="UserGroup" value='3'  />&nbsp;&nbsp;
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
				<input type='text'  id='Mobile'  name='Mobile' detail='��ϵ�绰' />
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
		<tr align="center" class="info_operate">
			<td colspan="2">    	
				<input type="submit" name="Submit" value="{LANG_search}" />&nbsp;
				<input type="button" value="{LANG_return}" onClick="doCancel();" />
			</td>
		</tr>
	</table>
</form>