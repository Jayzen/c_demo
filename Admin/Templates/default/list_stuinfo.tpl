<form action="{CURRENT_ACT}" method="get" name="frmSearch">
	<table width="100%"  border="0" cellpadding="0" cellspacing="0" class="normal">
		<tr class="adminheader">
			<td width="33%">
				<img src="{BASE_PREFIX}/images/mod_list.png" width="24" height="24" align="absmiddle" /> 
				<span class="module_title">ѧ����Ϣ</span> &nbsp;&nbsp; <a href="{CURRENT_MODULE}">{LANG_showall}</a> 
			</td>
			<td>
				<table width="100%"  border="0" cellspacing="0" cellpadding="0">
	            	<tr>
	            		<td align="right">
							<input type="hidden" id="mod" name="mod" />
							ѧ��: <input type="text" id="StuNO" name="StuNO" value="{StuNO}" size="20" />
							����: <input type="text" id="StuName" name="StuName" value="{StuName}" size="20" />
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
			
			<th id="orderby" orderfield="StuNO" >ѧ��</th>
			<th id="orderby" orderfield="StuName" >����</th>
			<th id="orderby" orderfield="StuAge" >����</th>
			<th id="orderby" orderfield="StuSex" >�Ա�</th>
			<th id="orderby" orderfield="StuGrade" >�꼶</th>
			<th id="orderby" orderfield="StuClass" >��</th>
			<th id="orderby" orderfield="TeacherID" >��ʦ</th>
			<th id="orderby" orderfield="ClassState" >״̬</th>
			<th id="orderby" orderfield="ChargeState" >�ɷ����</th>
			<th id="orderby" orderfield="Education" >��ѧ����</th>
			<th id="orderby" orderfield="School" >�Ͷ�ѧУ</th>
			<th id="orderby" orderfield="Remark" >��ע</th>
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