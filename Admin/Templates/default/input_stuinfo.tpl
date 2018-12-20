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
				<span class="module_title">{ButtonCaption}学生信息</span>		
			</td>
		</tr>
	</table>
	
	<table width="100%"  border="0" cellspacing="0" cellpadding="5" class="adminform">
	
		<tr class="info_content">
			<td width="100" align="right" >
				学号:
			</td>
			<td>
				<input type='text'  id='StuNO'  name='StuNO'  value='{StuNO}' readonly detail='学号' />
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				姓名:
			</td>
			<td>
				<input type='text'  id='StuName'  name='StuName'  value='{StuName}' notnull=true detail='姓名' />
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				年龄:
			</td>
			<td>
				<input type='text'  id='StuAge'  name='StuAge'  value='{StuAge}' notnull=true detail='年龄' />
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				年级:
			</td>
			<td>
				<select name='StuGrade'>
					<option value='1'>1年级</option>
					<option value='2'>2年级</option>
					<option value='3'>3年级</option>
					<option value='4'>4年级</option>
					<option value='5'>5年级</option>
					<option value='6'>6年级</option>
					<option value='7'>7年级</option>
					<option value='8'>8年级</option>
					<option value='9'>9年级</option>
				</select>
				<script type="text/javascript">autoSelected(document.frmInfo.StuGrade, '{StuGrade}');</script>
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				班:
			</td>
			<td>
				<select name='StuClass'>
					<option value='1'>1班</option>
					<option value='2'>2班</option>
					<option value='3'>3班</option>
					<option value='4'>4班</option>
					<option value='5'>5班</option>
					<option value='6'>6班</option>
					<option value='7'>7班</option>
					<option value='8'>8班</option>
					<option value='9'>9班</option>
					<option value='10'>10班</option>
				</select>
				<script type="text/javascript">autoSelected(document.frmInfo.StuClass, '{StuClass}');</script>
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				性别:
			</td>
			<td>
				男:<input type='radio' name="StuSex" value='1' checked />&nbsp;&nbsp;
				女:<input type='radio' name="StuSex" value='0'  />
				<script type="text/javascript">autoSelected(document.frmInfo.StuSex, '{StuSex}');</script>
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				老师:
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
				状态:
			</td>
			<td>
				晚托中:<input type='radio' name="ClassState" value='1' checked />&nbsp;&nbsp;
				已到期:<input type='radio' name="ClassState" value='0'  />
				<script type="text/javascript">autoSelected(document.frmInfo.ClassState, '{ClassState}');</script>
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				缴费情况:
			</td>
			<td>
				<input type='text'  id='ChargeState'  name='ChargeState'  value='{ChargeState}' notnull=true detail='缴费情况' />
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				入学基础:
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
				就读学校:
			</td>
			<td>
				<input type='text'  id='School'  name='School'  value='{School}' notnull=true detail='就读学校' />
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
				备注:
			</td>
			<td>
				<input type='text'  id='Remark' style='width:400px' name='Remark'  value='{Remark}'  detail='备注' />
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
