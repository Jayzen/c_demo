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
<script src="Admin/js/jquery-1.10.2.min.js"></script>
<script src="Admin/js/vendor/jquery.ui.widget.js"></script>
<script src="Admin/js/jquery.iframe-transport.js"></script>
<script src="Admin/js/jquery.fileupload.js"></script>
<script src="Admin/js/lightbox.js"></script>
<link rel="stylesheet" href="Admin/Templates/default/css/lightbox.min.css">
<script type="text/javascript">
function checkSubmit(obj)
{
	if(!checkValid(obj)) return false;
	return true;
}
function SetPaperImageShow()
{
	$.get("admincp.aspx?mod=StuTest&act=getimagehtml&isneedmain=0&PaperImage=" + escape($("#PaperImage").text()), function(data){
		$("#PaperImageShow").html(data);
	});
}
$(function () {
    $('#fileupload').fileupload({
        dataType: 'json',
        done: function (e, data) {
            $.each(data.result.files, function (index, file) {
				if($("#PaperImage").text() == "")
					$("#PaperImage").text(file.name);
				else
					$("#PaperImage").text($("#PaperImage").text() + "," + file.name);
            });
			SetPaperImageShow();
        }
    });
	SetPaperImageShow();
});
</script>

<form action="{CURRENT_ACT}&ids={ID}" method="post" enctype="multipart/form-data" name="frmInfo" onSubmit="return checkSubmit(this);">
	<table width="100%"  border="0" cellpadding="0" cellspacing="0" class="normal">
		<tr class="adminheader">
			<td>
				<img src="{BASE_PREFIX}/images/mod_addedit.png" width="24" height="24" align="absmiddle" /> 
				<span class="module_title">{ButtonCaption}学生测试考试表</span>		
			</td>
		</tr>
	</table>
	
	<table width="100%"  border="0" cellspacing="0" cellpadding="5" class="adminform">
		
		<tr class="info_content">
			<td width="100" align="right" >
				学生姓名:
			</td>
			<td>
				<input type='hidden' isnumeric=true id='StuNO'  name='StuNO' value='{StuNO}'  notnull=true />
				<input type='text' id='StuNO_Show' title='姓名' autocomplete="off" name='StuNO_Show'  value='{StuNO}' onfocus="SearchObj(this, 'StuNO', event, 'stuinfo')" onkeyup="SearchObj(this, 'StuNO', event, 'stuinfo')" onblur="$('#mainsearch').remove()" detail='姓名' />
				<script type="text/javascript">SetObjName("StuNO_Show", 'stuinfo');</script>
			</td>
		</tr>
		
		<tr class="info_content">
			<td width="100" align="right" >
				测试试卷:
			</td>
			<td>
				<input type='hidden' isnumeric=true id='TestID' autocomplete="off" name='TestID' value='{TestID}'  notnull=true />
				<input type='text' id='TestID_Show' title='知识点'  name='TestID_Show'  value='{TestID}' onfocus="SearchObj(this, 'TestID', event, 'stutest')" onkeyup="SearchObj(this, 'TestID', event, 'stutest')" onblur="$('#mainsearch').remove()" detail='测试试卷' />
				<script type="text/javascript">SetObjName("TestID_Show", 'stutest');</script>
			</td>
		</tr>

		<tr class="info_content">
			<td width="100" align="right" >
				分数:
			</td>
			<td>
				<input type='text'  id='Score'  name='Score'  value='{Score}' notnull=true detail='分数' />
			</td>
		</tr>
		
		<tr class="info_content">
			<td width="100" align="right" >
				评论:
			</td>
			<td>
				<textarea style='width:600px;height:100px;' id='Remark'  name='Remark'>{Remark}</textarea>
			</td>
		</tr>
		
		<tr class="info_content">
			<td width="100" align="right" >
				试卷图片:
			</td>
			<td>
				<textarea style='width:400px;height:200px;' id='PaperImage'  name='PaperImage'>{PaperImage}</textarea><br />
				选择试卷图片(可同时多选,或多次选择):<input id="fileupload" type="file" name="files[]" data-url="admincp.aspx?mod=StuTest&act=uploadimg&isneedmain=0" multiple>
				<br />
				<div id="PaperImageShow" style='clear:both;margin:20px;'>
					
				</div>
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