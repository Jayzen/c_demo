<form action="{SCRIPT_SELF}" method="get" name="frmInfo">
	<table width="100%"  border="0" cellpadding="0" cellspacing="0" class="normal">
		<tr class="adminheader">
			<td>
				<img src="{BASE_PREFIX}/images/mod_search.png" width="24" height="24" align="absmiddle" /> 
				<span class="module_title">{LANG_search}ѧ����Ϣ</span>
				
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
			<td width="150" align="right">����:</td>
			<td>
				<input name='StuName' type=text size=30 />
			</td>
		</tr>
		
		<tr class="info_content">
			<td width="150" align="right">����:</td>
			<td>
				<input type='text' isnumeric=true  id='StuAge'  style="width:50px"  name='StuAge'  detail='����' />
			</td>
		</tr>
		
		<tr class="info_content">
			<td width="150" align="right">�꼶:</td>
			<td>
				<select name='StuGrade'>
					<option value=''>����</option>
					<option value='1'>1�꼶</option>
					<option value='2'>2�꼶</option>
					<option value='3'>3�꼶</option>
					<option value='4'>4�꼶</option>
					<option value='5'>5�꼶</option>
					<option value='6'>6�꼶</option>
					<option value='7'>7�꼶</option>
					<option value='8'>8�꼶</option>
					<option value='9'>9�꼶</option>
				</select>
			</td>
		</tr>
		<tr class="info_content">
			<td width="150" align="right">��:</td>
			<td>
				<select name='StuClass'>
					<option value=''>����</option>
					<option value='1'>1��</option>
					<option value='2'>2��</option>
					<option value='3'>3��</option>
					<option value='4'>4��</option>
					<option value='5'>5��</option>
					<option value='6'>6��</option>
					<option value='7'>7��</option>
					<option value='8'>8��</option>
					<option value='9'>9��</option>
					<option value='10'>10��</option>
				</select>
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				�Ա�:
			</td>
			<td>
				����:<input type='radio' name="StuSex" value='' checked />&nbsp;&nbsp;
				��:<input type='radio' name="StuSex" value='1' />&nbsp;&nbsp;
				Ů:<input type='radio' name="StuSex" value='0'  />
			</td>
		</tr>
		
		<tr class="info_content">
			<td width="100" align="right" >
				��ʦ:
			</td>
			<td>
				<select name='TeacherID' notnull=true >
					<option value=''>����</option>
					{TeacherOptionList}
				</select>
			</td>
		</tr>
		
		<tr class="info_content">
			<td width="100" align="right" >
				״̬:
			</td>
			<td>
				����:<input type='radio' name="ClassState" value='' checked />&nbsp;&nbsp;
				������:<input type='radio' name="ClassState" value='1'  />&nbsp;&nbsp;
				�ѵ���:<input type='radio' name="ClassState" value='0'  />
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				�ɷ����:
			</td>
			<td>
				<input type='text'  id='ChargeState'  name='ChargeState' detail='�ɷ����' />
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				��ѧ����:
			</td>
			<td>
				����:<input type='radio' name="Education" value='' checked />&nbsp;&nbsp;
				A:<input type='radio' name="Education" value='A'  />&nbsp;&nbsp;
				B:<input type='radio' name="Education" value='B'  />&nbsp;&nbsp;
				C:<input type='radio' name="Education" value='C'  />&nbsp;&nbsp;
				D:<input type='radio' name="Education" value='D'  />
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				�Ͷ�ѧУ:
			</td>
			<td>
				<input type='text'  id='School'  name='School'  detail='�Ͷ�ѧУ' />
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
				<input type='text'  id='Address'  name='Address'  style='width:400px' detail='��ϵ��ַ' />
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				��ע:
			</td>
			<td>
				<input type='text'  id='Remark' style='width:400px' name='Remark'  detail='��ע' />
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