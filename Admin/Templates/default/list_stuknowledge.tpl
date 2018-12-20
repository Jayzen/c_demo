<style type="text/css">	
* {
	margin:0;
	padding:0;
	}
body {
	font-family:Verdana, Arial, Helvetica, sans-serif;
	font-size:12px;
	color:#333;
	background:#fff;
	}
#wrap {
	margin:20px auto;
	width:850px;
	}
#nav a, #nav a:active, #nav a:visited {
	display:block;
	float:left;
	padding:5px 8px;
	background:#DAF1C9;
	color:green;
	margin-right:10px;
	text-decoration:none;
	outline:none;
	}
#nav a.selected, #nav a.selected:active, #nav a.selected:visited {
	background:#C51D1D;
	color:#fff;
	text-decoration:none;
	outline:none;
	}
.hiddencontent {
	padding:12px;
	background:#eee;
	display:none;
	}
.clear {
	clear:both;
	}
h1 {
	color:#009900;
	padding:20px 0;
	}
h2 {
	color:#999999;
	font-size:16px;
	font-weight:bold;
	padding:5px 0 10px 0;
	}
ul, li
{
  list-style-type: none;
  margin:0;
  padding:0;
}
.redBg
{
	background:red;
}
</style>
<form action="{CURRENT_ACT}" method="get" name="frmSearch">
	<table width="100%"  border="0" cellpadding="0" cellspacing="0" class="normal">
		<tr class="adminheader">
			<td width="33%">
				<img src="{BASE_PREFIX}/images/mod_list.png" width="24" height="24" align="absmiddle" /> 
				<span class="module_title">学生知识点</span> &nbsp;&nbsp; <a href="{CURRENT_MODULE}">{LANG_showall}</a> 
			</td>
			<td>
				<table width="100%"  border="0" cellspacing="0" cellpadding="0">
	            	<tr>
	            		<td align="right">
							<input type="hidden" id="mod" name="mod" />
							姓名: 
							<input type='hidden' isnumeric=true id='StuNO'  name='StuNO' value='{StuNO}'  />
							<input type='text' id='StuNO_Show' title='姓名' autocomplete="off" name='StuNO_Show'  value='{StuNO}' onfocus="SearchObj(this, 'StuNO', event, 'stuinfo')" onkeyup="SearchObj(this, 'StuNO', event, 'stuinfo')" onblur="$('#mainsearch').remove()" detail='姓名' />
							<script type="text/javascript">SetObjName("StuNO_Show", 'stuinfo');</script>
							
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
			
			<th width="6%" id="orderby" orderfield="ID">{LANG_identity}</th>
			
			<th id="orderby" orderfield="StuNO" style='width:90px'>姓名</th>
			<th id="orderby" orderfield="StuKonwledgeID"  style='width:200px'>知识点</th>
			<th id="orderby" orderfield="AddTime"  style='width:120px'>时间</th>
			<th id="orderby" orderfield="AddType"  style='width:90px'>是否撑握</th>
			<th id="orderby" orderfield="Detail" >具体情况</th>
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
			<td class="{RowList.BgColor}">{RowList.StuKonwledgeID}</td>
			<td>{RowList.AddTime}</td>
			<td>{RowList.AddType}</td>
			<td>{RowList.Detail}</td>
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