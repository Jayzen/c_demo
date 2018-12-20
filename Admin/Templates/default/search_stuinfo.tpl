<form action="{SCRIPT_SELF}" method="get" name="frmInfo">
	<table width="100%"  border="0" cellpadding="0" cellspacing="0" class="normal">
		<tr class="adminheader">
			<td>
				<img src="{BASE_PREFIX}/images/mod_search.png" width="24" height="24" align="absmiddle" /> 
				<span class="module_title">{LANG_search}学生信息</span>
				
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
			<td width="150" align="right">姓名:</td>
			<td>
				<input name='StuName' type=text size=30 />
			</td>
		</tr>
		
		<tr class="info_content">
			<td width="150" align="right">年龄:</td>
			<td>
				<input type='text' isnumeric=true  id='StuAge'  style="width:50px"  name='StuAge'  detail='年龄' />
			</td>
		</tr>
		
		<tr class="info_content">
			<td width="150" align="right">年级:</td>
			<td>
				<select name='StuGrade'>
					<option value=''>不限</option>
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
			</td>
		</tr>
		<tr class="info_content">
			<td width="150" align="right">班:</td>
			<td>
				<select name='StuClass'>
					<option value=''>不限</option>
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
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				性别:
			</td>
			<td>
				不限:<input type='radio' name="StuSex" value='' checked />&nbsp;&nbsp;
				男:<input type='radio' name="StuSex" value='1' />&nbsp;&nbsp;
				女:<input type='radio' name="StuSex" value='0'  />
			</td>
		</tr>
		
		<tr class="info_content">
			<td width="100" align="right" >
				老师:
			</td>
			<td>
				<select name='TeacherID' notnull=true >
					<option value=''>不限</option>
					{TeacherOptionList}
				</select>
			</td>
		</tr>
		
		<tr class="info_content">
			<td width="100" align="right" >
				状态:
			</td>
			<td>
				不限:<input type='radio' name="ClassState" value='' checked />&nbsp;&nbsp;
				晚托中:<input type='radio' name="ClassState" value='1'  />&nbsp;&nbsp;
				已到期:<input type='radio' name="ClassState" value='0'  />
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				缴费情况:
			</td>
			<td>
				<input type='text'  id='ChargeState'  name='ChargeState' detail='缴费情况' />
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				入学基础:
			</td>
			<td>
				不限:<input type='radio' name="Education" value='' checked />&nbsp;&nbsp;
				A:<input type='radio' name="Education" value='A'  />&nbsp;&nbsp;
				B:<input type='radio' name="Education" value='B'  />&nbsp;&nbsp;
				C:<input type='radio' name="Education" value='C'  />&nbsp;&nbsp;
				D:<input type='radio' name="Education" value='D'  />
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				就读学校:
			</td>
			<td>
				<input type='text'  id='School'  name='School'  detail='就读学校' />
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
				<input type='text'  id='Address'  name='Address'  style='width:400px' detail='联系地址' />
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				备注:
			</td>
			<td>
				<input type='text'  id='Remark' style='width:400px' name='Remark'  detail='备注' />
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