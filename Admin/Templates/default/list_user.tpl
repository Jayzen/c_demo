<script type="text/javascript">
function changeState(name)
{
	var uid = name.substr(2);
	var val = $("#" + name).attr("rel");
	var url = "admincp.aspx?mod=user&act=changedisabled&isneedmain=0&uid=" + uid + "&v=" + val;
	$.post(url, function(data, statusText){
		if(data == "0")
		{
			$("#" + name).attr("rel", "0");
			$("#" + name).attr("style", "color:green");
			$("#" + name).text("正常");
		}
		else if(data == "1")
		{
			$("#" + name).attr("rel", "1");
			$("#" + name).attr("style", "color:red");
			$("#" + name).text("已禁用");
		}
		else
			alert("修改失败");
	});
}
</script>
<form action="{CURRENT_ACT}" method="get" name="frmSearch">
	<table width="100%"  border="0" cellpadding="0" cellspacing="0" class="normal">
		<tr class="adminheader">
			<td width="33%">
				<img src="{BASE_PREFIX}/images/mod_list.png" width="24" height="24" align="absmiddle" /> 
				<span class="module_title">用户表</span> &nbsp;&nbsp; <a href="{CURRENT_MODULE}">{LANG_showall}</a> 
			</td>
			<td>
				<table width="100%"  border="0" cellspacing="0" cellpadding="0">
	            	<tr>
	            		<td align="right">
							<input type="hidden" id="mod" name="mod" />
							用户名: <input type="text" id="UserName" name="UserName" value="{UserName}" size="16" />&nbsp;
							真实姓名: <input type="text" id="RealName" name="RealName" value="{RealName}" size="16" />&nbsp;
							&nbsp;&nbsp;用户组:	<select id='SearchGroup' name='UserGroup'>
									<option value=''>不限</option>
									<option value='3'>家长</option>
									<option value='2'>老师</option>
									<option value='1'>管理员</option>
								</select>
								<script type="text/javascript">autoSelected(document.frmSearch.SearchGroup, '{UserGroup}');</script>							
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
			<th id="orderby" orderfield="UserName" >用户名</th>
			<th id="orderby" orderfield="RealName" >真实姓名</th>
			<th id="orderby" orderfield="UserGroup" >用户组</th>
			<th id="orderby" orderfield="RelateStuNO" >关联</th>
			<th id="orderby" orderfield="Mobile" >联系电话</th>
			<th id="orderby" orderfield="Address" >联系地址</th>
			<th width="10%">{LANG_operate}</th>
		</tr>
		<!-- beginRow RowList -->
		<tr align="center" class="list_content" onClick="select_thisrow(this);"  onDblClick="editItem({RowList.ID});" onmouseover="highlightrow2(this, true);" onmouseout="highlightrow2(this, false);">
			<td>
				<input onClick="highlight_row(this);" type="checkbox" name="ids" id="sid" value="{RowList.ID}" />
			</td>
		
			<td>{RowList.ID}
			<!--
				<a href="javascript:(0)" onClick="doSomething('view','{RowList.ID}'); return false;">{RowList.ID}</a>
			-->
			</td>
			<td>{RowList.UserName}</td>
			<td>{RowList.RealName}</td>
			<td>{RowList.UserGroup}</td>
			<td>{RowList.RelateStuNO}</td>
			<td>{RowList.Mobile}</td>
			<td>{RowList.Address}</td>

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