<form action="{SCRIPT_SELF}" method="get" name="frmInfo">
	<table width="100%"  border="0" cellpadding="0" cellspacing="0" class="normal">
		<tr class="adminheader">
			<td>
				<img src="{BASE_PREFIX}/images/mod_search.png" width="24" height="24" align="absmiddle" /> 
				<span class="module_title">{LANG_search}֪ʶ��</span>
				
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
				����:
			</td>
			<td>
				<select name='KnowledgeType' notnull=true >
					<option value=''>����</option>
					{KnowledgeTypeOptionList}
				</select>
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				֪ʶ��:
			</td>
			<td>
				<input type='text'  id='KnowledgeName'  name='KnowledgeName' />
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				��������:
			</td>
			<td>
				<textarea id='KnowledgeDetail' style='width:700px;height:120px'  name='KnowledgeDetail'  ></textarea>
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