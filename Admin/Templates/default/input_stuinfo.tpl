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
				<span class="module_title">{ButtonCaption}ѧ����Ϣ</span>		
			</td>
		</tr>
	</table>
	
	<table width="100%"  border="0" cellspacing="0" cellpadding="5" class="adminform">
	
		<tr class="info_content">
			<td width="100" align="right" >
				ѧ��:
			</td>
			<td>
				<input type='text'  id='StuNO'  name='StuNO'  value='{StuNO}' readonly detail='ѧ��' />
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				����:
			</td>
			<td>
				<input type='text'  id='StuName'  name='StuName'  value='{StuName}' notnull=true detail='����' />
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				����:
			</td>
			<td>
				<input type='text'  id='StuAge'  name='StuAge'  value='{StuAge}' notnull=true detail='����' />
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				�꼶:
			</td>
			<td>
				<select name='StuGrade'>
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
				<script type="text/javascript">autoSelected(document.frmInfo.StuGrade, '{StuGrade}');</script>
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				��:
			</td>
			<td>
				<select name='StuClass'>
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
				<script type="text/javascript">autoSelected(document.frmInfo.StuClass, '{StuClass}');</script>
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				�Ա�:
			</td>
			<td>
				��:<input type='radio' name="StuSex" value='1' checked />&nbsp;&nbsp;
				Ů:<input type='radio' name="StuSex" value='0'  />
				<script type="text/javascript">autoSelected(document.frmInfo.StuSex, '{StuSex}');</script>
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				��ʦ:
			</td>
			<td>
				<select name='TeacherID' notnull=true >
					{TeacherOptionList}
				</select>
				<script type="text/javascript">autoSelected(document.frmInfo.TeacherID, '{TeacherID}');</script>
			</td>
		</tr>
	
		<tr class="info_content">
			<td width="100" align="right" >
				״̬:
			</td>
			<td>
				������:<input type='radio' name="ClassState" value='1' checked />&nbsp;&nbsp;
				�ѵ���:<input type='radio' name="ClassState" value='0'  />
				<script type="text/javascript">autoSelected(document.frmInfo.ClassState, '{ClassState}');</script>
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				�ɷ����:
			</td>
			<td>
				<input type='text'  id='ChargeState'  name='ChargeState'  value='{ChargeState}' notnull=true detail='�ɷ����' />
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				��ѧ����:
			</td>
			<td>
				A:<input type='radio' name="Education" value='A'  />&nbsp;&nbsp;
				B:<input type='radio' name="Education" value='B' checked />&nbsp;&nbsp;
				C:<input type='radio' name="Education" value='C'  />&nbsp;&nbsp;
				D:<input type='radio' name="Education" value='D'  />
				<script type="text/javascript">autoSelected(document.frmInfo.Education, '{Education}');</script>
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				�Ͷ�ѧУ:
			</td>
			<td>
				<input type='text'  id='School'  name='School'  value='{School}' notnull=true detail='�Ͷ�ѧУ' />
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
				��ע:
			</td>
			<td>
				<input type='text'  id='Remark' style='width:400px' name='Remark'  value='{Remark}'  detail='��ע' />
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
