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
				用户名:
			</td>
			<td>
				<input type='text'  id='UserName'  name='UserName' maxlength=100 etail='用户名' />

			</td>
		</tr>
		
		<tr class="info_content">
			<td width="100" align="right" >
				真实姓名:
			</td>
			<td>
				<input type='text'  id='RealName'  name='RealName'  maxlength=100 detail='真实姓名' />
			</td>
		</tr>
		
		<tr class="info_content">
			<td width="100" align="right" >
				用户组:
			</td>
			<td>
				不限:<input type='radio' name="UserGroup" value='' checked />&nbsp;&nbsp;
				家长:<input type='radio' name="UserGroup" value='3'  />&nbsp;&nbsp;
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
				<input type='text'  id='Mobile'  name='Mobile' detail='联系电话' />
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
		<tr align="center" class="info_operate">
			<td colspan="2">    	
				<input type="submit" name="Submit" value="{LANG_search}" />&nbsp;
				<input type="button" value="{LANG_return}" onClick="doCancel();" />
			</td>
		</tr>
	</table>
</form>