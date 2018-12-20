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
				<span class="module_title">{LANG_search}ѧ������</span>
				
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
				����:
			</td>
			<td>
				<input type='hidden' isnumeric=true id='StuNO'  name='StuNO' value='{StuNO}' />
				<input type='text' id='StuNO_Show' title='����' autocomplete="off" name='StuNO_Show'  value='{StuNO}' onfocus="SearchObj(this, 'StuNO', event, 'stuinfo')" onkeyup="SearchObj(this, 'StuNO', event, 'stuinfo')" onblur="$('#mainsearch').remove()" detail='����' />
				<script type="text/javascript">SetObjName("StuNO_Show", 'stuinfo');</script>
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				��������:
			</td>
			<td>
				<textarea id='Comment'  name='Comment'  style='width:600px; height:150px'>{Comment}</textarea>
			</td>
		</tr>
		
		<tr class="info_content">
			<td width="100" align="right" >
				��:
			</td>
			<td>
				<select name='WeekOfYear'>
					<option value=''>����</option>
					<option value='1'>��1��</option>
					<option value='2'>��2��</option>
					<option value='3'>��3��</option>
					<option value='4'>��4��</option>
					<option value='5'>��5��</option>
					<option value='6'>��6��</option>
					<option value='7'>��7��</option>
					<option value='8'>��8��</option>
					<option value='9'>��9��</option>
					<option value='10'>��10��</option>
					<option value='11'>��11��</option>
					<option value='12'>��12��</option>
					<option value='13'>��13��</option>
					<option value='14'>��14��</option>
					<option value='15'>��15��</option>
					<option value='16'>��16��</option>
					<option value='17'>��17��</option>
					<option value='18'>��18��</option>
					<option value='19'>��19��</option>
					<option value='20'>��20��</option>
					<option value='21'>��21��</option>
					<option value='22'>��22��</option>
					<option value='23'>��23��</option>
					<option value='24'>��24��</option>
					<option value='25'>��25��</option>
					<option value='26'>��26��</option>
					<option value='27'>��27��</option>
					<option value='28'>��28��</option>
					<option value='29'>��29��</option>
					<option value='30'>��30��</option>
					<option value='31'>��31��</option>
					<option value='32'>��32��</option>
					<option value='33'>��33��</option>
					<option value='34'>��34��</option>
					<option value='35'>��35��</option>
					<option value='36'>��36��</option>
					<option value='37'>��37��</option>
					<option value='38'>��38��</option>
					<option value='39'>��39��</option>
					<option value='40'>��40��</option>
					<option value='41'>��41��</option>
					<option value='42'>��42��</option>
					<option value='43'>��43��</option>
					<option value='44'>��44��</option>
					<option value='45'>��45��</option>
					<option value='46'>��46��</option>
					<option value='47'>��47��</option>
					<option value='48'>��48��</option>
					<option value='49'>��49��</option>
					<option value='50'>��50��</option>
					<option value='51'>��51��</option>
					<option value='52'>��52��</option>
					<option value='53'>��53��</option>
					<option value='54'>��54��</option>
				</select>
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				��:
			</td>
			<td>
				<select name='Year'>
					<option value=''>����</option>
					<option value='2016'>2016��</option>
					<option value='2017'>2017��</option>
					<option value='2018'>2018��</option>
					<option value='2019'>2019��</option>
					<option value='2020'>2020��</option>
				</select>
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