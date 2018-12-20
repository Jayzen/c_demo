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

<form action="{SCRIPT_SELF}" method="get" name="frmInfo">
	<table width="100%"  border="0" cellpadding="0" cellspacing="0" class="normal">
		<tr class="adminheader">
			<td>
				<img src="{BASE_PREFIX}/images/mod_search.png" width="24" height="24" align="absmiddle" /> 
				<span class="module_title">{LANG_search}用户表</span>
				
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
				金额:
			</td>
			<td>
				<input type='text'  id='Money'  name='Money'  value='{Money}' notnull=true detail='金额' />
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