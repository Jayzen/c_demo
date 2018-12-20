<form action="{CURRENT_ACT}" method="get" name="frmSearch">
	<table width="100%"  border="0" cellpadding="0" cellspacing="0" class="normal">
		<tr class="adminheader">
			<td width="33%">
				<img src="{BASE_PREFIX}/images/mod_list.png" width="24" height="24" align="absmiddle" /> 
				<span class="module_title">学生信息</span> &nbsp;&nbsp; <a href="{CURRENT_MODULE}">{LANG_showall}</a> 
			</td>
			<td>
				<table width="100%"  border="0" cellspacing="0" cellpadding="0">
	            	<tr>
	            		<td align="right">
							<input type="hidden" id="mod" name="mod" />
							学号: <input type="text" id="StuNO" name="StuNO" value="{StuNO}" size="20" />
							姓名: <input type="text" id="StuName" name="StuName" value="{StuName}" size="20" />
							&nbsp;&nbsp;<input type="submit" name="Submit" value="{LANG_search}" /> 
							<script type="text/javascript">
								document.frmSearch.mod.value = URLParams["mod"];
							</script>
						</td>
	           		</tr>
	           	</table>
			</td>
		</tr>
	</table>
</form>

<form action="{CURRENT_ACT}" method="post" name="frmInfo">
	<table width="100%"  border="0" cellspacing="0" cellpadding="1" class="adminlist">
		<tr class="list_title">
			<th width="4%"><input  type="checkbox" onClick="reverseCheck(frmInfo.sid);"></th>
			
			<th width="8%" id="orderby" orderfield="ID">{LANG_identity}</th>
			
			<th id="orderby" orderfield="StuNO" >学号</th>
			<th id="orderby" orderfield="StuName" >姓名</th>
			<th id="orderby" orderfield="StuAge" >年龄</th>
			<th id="orderby" orderfield="StuSex" >性别</th>
			<th id="orderby" orderfield="StuGrade" >年级</th>
			<th id="orderby" orderfield="StuClass" >班</th>
			<th id="orderby" orderfield="TeacherID" >老师</th>
			<th id="orderby" orderfield="ClassState" >状态</th>
			<th id="orderby" orderfield="ChargeState" >缴费情况</th>
			<th id="orderby" orderfield="Education" >入学基础</th>
			<th id="orderby" orderfield="School" >就读学校</th>
			<th id="orderby" orderfield="Remark" >备注</th>
			<th width="10%">{LANG_operate}</th>
		</tr>
		<!-- beginRow RowList -->
		<tr align="center" class="list_content" onClick="select_thisrow(this);" onDblClick="editItem({RowList.ID})" onmouseover="highlightrow2(this, true);" onmouseout="highlightrow2(this, false);">
			<td>
				<input onClick="highlight_row(this);" type="checkbox" name="ids" id="sid" value="{RowList.ID}" />
			</td>
		
			<td>{RowList.ID}
			<!--
				<a href="javascript:(0)" onClick="doSomething('view','{RowList.ID}'); return false;">{RowList.ID}</a>
			-->
			</td>
	
			<td>{RowList.StuNO}</td>
			<td>{RowList.StuName}</td>
			<td>{RowList.StuAge}</td>
			<td>{RowList.StuSex}</td>
			<td>{RowList.StuGrade}</td>
			<td>{RowList.StuClass}</td>
			<td>{RowList.TeacherID}</td>
			<td>{RowList.ClassState}</td>
			<td>{RowList.ChargeState}</td>
			<td>{RowList.Education}</td>
			<td>{RowList.School}</td>
			<td>{RowList.Remark}</td>
			<td>
				<table width="100%"  border="0" cellspacing="0" cellpadding="0" class="operate">
			    	<tr align="center">
			  
			    		<td>
							<img class="btn_image" alt="{LANG_edit}" title="{LANG_edit}{LANG_this_item}" src="{BASE_PREFIX}/images/btn_edit.png" onClick="editItem({RowList.ID});" />
						</td>
						
			       		<td>
							<img class="btn_image" alt="{LANG_delete}" title="{LANG_delete}{LANG_this_item}" src="{BASE_PREFIX}/images/btn_delete.png" onClick="deleteItem({RowList.ID});" />
						</td>
						
					</tr>
				</table>
			</td>
		</tr>
		<!-- endRow RowList -->
		<tr align="right" class="list_operater">
			<td colspan="20">
					
				<a href="javascript:(0)" onClick="deleteSelect(); return false;"><img src="{BASE_PREFIX}/images/opt_delete.png" border="0" />{LANG_delete}{LANG_selected}</a>
			
			</td>
		</tr>
		<tr align="right" class="list_bottom">
			<td colspan="20">{PAGE_LIST}</td>
		</tr>
		<tr align="left" class="list_content">
			<td colspan="20">
				
			</td>
		</tr>
	</table>
</form>