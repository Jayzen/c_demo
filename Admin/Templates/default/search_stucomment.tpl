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
				<span class="module_title">{LANG_search}学生评语</span>
				
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
				<input type='hidden' isnumeric=true id='StuNO'  name='StuNO' value='{StuNO}' />
				<input type='text' id='StuNO_Show' title='姓名' autocomplete="off" name='StuNO_Show'  value='{StuNO}' onfocus="SearchObj(this, 'StuNO', event, 'stuinfo')" onkeyup="SearchObj(this, 'StuNO', event, 'stuinfo')" onblur="$('#mainsearch').remove()" detail='姓名' />
				<script type="text/javascript">SetObjName("StuNO_Show", 'stuinfo');</script>
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				评价内容:
			</td>
			<td>
				<textarea id='Comment'  name='Comment'  style='width:600px; height:150px'>{Comment}</textarea>
			</td>
		</tr>
		
		<tr class="info_content">
			<td width="100" align="right" >
				周:
			</td>
			<td>
				<select name='WeekOfYear'>
					<option value=''>不限</option>
					<option value='1'>第1周</option>
					<option value='2'>第2周</option>
					<option value='3'>第3周</option>
					<option value='4'>第4周</option>
					<option value='5'>第5周</option>
					<option value='6'>第6周</option>
					<option value='7'>第7周</option>
					<option value='8'>第8周</option>
					<option value='9'>第9周</option>
					<option value='10'>第10周</option>
					<option value='11'>第11周</option>
					<option value='12'>第12周</option>
					<option value='13'>第13周</option>
					<option value='14'>第14周</option>
					<option value='15'>第15周</option>
					<option value='16'>第16周</option>
					<option value='17'>第17周</option>
					<option value='18'>第18周</option>
					<option value='19'>第19周</option>
					<option value='20'>第20周</option>
					<option value='21'>第21周</option>
					<option value='22'>第22周</option>
					<option value='23'>第23周</option>
					<option value='24'>第24周</option>
					<option value='25'>第25周</option>
					<option value='26'>第26周</option>
					<option value='27'>第27周</option>
					<option value='28'>第28周</option>
					<option value='29'>第29周</option>
					<option value='30'>第30周</option>
					<option value='31'>第31周</option>
					<option value='32'>第32周</option>
					<option value='33'>第33周</option>
					<option value='34'>第34周</option>
					<option value='35'>第35周</option>
					<option value='36'>第36周</option>
					<option value='37'>第37周</option>
					<option value='38'>第38周</option>
					<option value='39'>第39周</option>
					<option value='40'>第40周</option>
					<option value='41'>第41周</option>
					<option value='42'>第42周</option>
					<option value='43'>第43周</option>
					<option value='44'>第44周</option>
					<option value='45'>第45周</option>
					<option value='46'>第46周</option>
					<option value='47'>第47周</option>
					<option value='48'>第48周</option>
					<option value='49'>第49周</option>
					<option value='50'>第50周</option>
					<option value='51'>第51周</option>
					<option value='52'>第52周</option>
					<option value='53'>第53周</option>
					<option value='54'>第54周</option>
				</select>
			</td>
		</tr>
		<tr class="info_content">
			<td width="100" align="right" >
				年:
			</td>
			<td>
				<select name='Year'>
					<option value=''>不限</option>
					<option value='2016'>2016年</option>
					<option value='2017'>2017年</option>
					<option value='2018'>2018年</option>
					<option value='2019'>2019年</option>
					<option value='2020'>2020年</option>
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