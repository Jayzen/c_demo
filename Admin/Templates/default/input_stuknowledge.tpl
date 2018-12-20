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
</style>
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
				<span class="module_title">{ButtonCaption}学生知识点</span>		
			</td>
		</tr>
	</table>
	
	<table width="100%"  border="0" cellspacing="0" cellpadding="5" class="adminform">
	
		<tr class="info_content">
			<td width="100" align="right" >
				姓名:
			</td>
			<td>
				<input type='hidden' isnumeric=true id='StuNO'  name='StuNO' value='{StuNO}'  notnull=true />
				<input type='text' id='StuNO_Show' title='姓名' autocomplete="off" name='StuNO_Show'  value='{StuNO}' onfocus="SearchObj(this, 'StuNO', event, 'stuinfo')" onkeyup="SearchObj(this, 'StuNO', event, 'stuinfo')" onblur="$('#mainsearch').remove()" detail='姓名' />
				<script type="text/javascript">SetObjName("StuNO_Show", 'stuinfo');</script>
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				知识点:
			</td>
			<td>
				<input type='hidden' isnumeric=true id='StuKonwledgeID' autocomplete="off" name='StuKonwledgeID' value='{StuKonwledgeID}'  notnull=true />
				<input type='text' id='StuKonwledgeID_Show' title='姓名'  name='StuKonwledgeID_Show'  value='{StuKonwledgeID}' onfocus="SearchObj(this, 'StuKonwledgeID', event, 'stuknowledge')" onkeyup="SearchObj(this, 'StuKonwledgeID', event, 'stuknowledge')" onblur="$('#mainsearch').remove()" detail='姓名' />
				<script type="text/javascript">SetObjName("StuKonwledgeID_Show", 'stuknowledge');</script>
			</td>
		</tr>
		
		<tr class="info_content">
			<td width="100" align="right" >
				时间:
			</td>
			<td>
				<input type='text'  id='AddTime'  name='AddTime' onClick="WdatePicker()" value='{AddTime}'  detail='时间' />
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				是否掌握:
			</td>
			<td>
				已掌握:<input type='radio' name="AddType" value='1' checked />&nbsp;&nbsp;
				没掌握:<input type='radio' name="AddType" value='0'  />
				<script type="text/javascript">autoSelected(document.frmInfo.AddType, '{AddType}');</script>
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				具体情况:
			</td>
			<td>
				<textarea id='Detail'  name='Detail' style='width:600px; height:150px'>{Detail}</textarea>
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