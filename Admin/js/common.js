var URLParams = new Object();

if(location.search)
{
	var tmp		= location.search.substr(1);
	var pair	= new Array();
	var tmp2	= new Array();
	
	if(pair = tmp.split('&'))
	{
		for(var i = 0; i < pair.length; i++)
		{
			if(!pair[i]) continue;

			tmp2 = pair[i].split('=');
			
			if(tmp2[0]) URLParams[tmp2[0]] = tmp2[1];
		}
	}
}

var page_url	= window.location.pathname + window.location.search.replace(/&refer=[^&]*/, '');

if(page_url.substr(page_url.length - 1, 1) == '&') page_url = page_url.substr(0, page_url.length - 1);

page_url = escape(page_url);

function doCancel()
{
	var frm = null;

	if(window.event && window.event.shiftKey) frm = window.open('about:blank');
	else frm = window;

	if(!frm) frm = window;

	frm.location = URLParams['refer'] ? unescape(URLParams['refer']) : _CurrentURL;
}

function doCancel2()
{
	var frm = null;

	if(window.event && window.event.shiftKey) frm = window.open('about:blank');
	else frm = window;

	if(!frm) frm = window;

	frm.location = document.all.refer.value;
}

function openWin(url, name, windowStyle)
{
	newwin = window.open(url, name, windowStyle);
	
	newwin.focus();
}

function logout()/**/
{
	if(confirm(lang_logout_confirm))
	{
		top.location = _SCRIPT_NAME + '?act=logout';
	}
}

function reverseCheck(obj)
{
	if(!obj) return;
	
	if(!obj.length)
	{
		if(obj.disabled) return false;
		obj.checked = !obj.checked;
		
		highlight_row(obj);
	}
	else
	{
		for(i = 0; i < obj.length; i++)
		{
			if(obj[i].disabled) continue;
			if(obj[i].checked) obj[i].checked = false;
			else obj[i].checked = true;

			highlight_row(obj[i]);
		}
	}
}

function gridEdit(attr) {
    var hasSelected = false;
    var frmInfo = document.frmInfo;
    var obj = frmInfo.sid;

    if (!attr) var attr = '';

    if (obj) {
        if (typeof obj.length != 'undefined') {
            for (i = 0; i < obj.length; i++) {
                if (obj[i].checked) {
                    hasSelected = true;
                    break;
                }
            }
        }
        else hasSelected = obj.checked;
    }
    else hasSelected = false;

    if (!hasSelected) {
        alert(lang_nosel);
        return false;
    }

    var ids = getIds();
	var curLocation = escape(document.location);
    var url = _CurrentURL + "&act=gridedit&ids=" + ids + "&documenturl=" + curLocation;
    document.location = url;
}

function exportGuide() {
    frmInfo.action = _CurrentURL.replace("mod=", "mod=upanddown&tab=") + '&act=exportguide&refer=' + page_url;
    frmInfo.submit();
}

function exportXml(attr) {
    var hasSelected = false;
    var frmInfo = document.frmInfo;
    var obj = frmInfo.sid;

    if (!attr) var attr = '';

    if (obj) {
        if (typeof obj.length != 'undefined') {
            for (i = 0; i < obj.length; i++) {
                if (obj[i].checked) {
                    hasSelected = true;
                    break;
                }
            }
        }
        else hasSelected = obj.checked;
    }
    else hasSelected = false;

    if (!hasSelected) {
        alert(lang_nosel);
        return false;
    }
    frmInfo.action = _CurrentURL + '&act=export&isneedmain=0&refer=' + page_url + '&' + attr;
    frmInfo.submit();
}

function importXml() {
    frmInfo.action = _CurrentURL.replace("mod=", "mod=upanddown&tab=") + '&act=import&refer=' + page_url;
    frmInfo.submit();
}

function editSelect(attr)
{
	var hasSelected		= false;
	var frmInfo			= document.frmInfo;
	var obj				= frmInfo.sid;
	
	if(!attr) var attr = '';
	
	if(obj)
	{
		if(typeof obj.length != 'undefined')
		{
			for(i = 0; i < obj.length; i++)
			{
				if(obj[i].checked)
				{
					hasSelected = true;
					break;
				}
			}
		}
		else hasSelected = obj.checked;
	}
	else hasSelected = false;
	
	if(!hasSelected)
	{
		alert(lang_nosel);
		return false;
	}

	var ids = getIds();
	var url = _CurrentURL + "&act=batchedit&ids=" + ids + "&isneedmain=0";
	var width = $(document).width() * 0.8;
	var height = $(document).height() * 0.8;
	var top = ($(document).height() - height) / 2;
	var left = ($(document).width() - width) / 2;
	var editFormDiv = $("#editForm");
	var editFrame = $("#editFrame");
	editFormDiv.css("width", width);
	editFormDiv.css("height", height);
	editFormDiv.css("top", top);
	editFormDiv.css("left", left);
	editFormDiv.css("z-index", 10);
	editFrame.css("width", width - 3);
	editFrame.css("height", height - 3);
	document.getElementById("editFrame").src = url;
	editFrame.show();
	editFormDiv.show("slow");
}
function doRefresh()
{
	doHide();
	parent.window.location.reload(true);
}
function doHide()
{
	var editFormDiv = $("#editForm", parent.document);
	var editFrame = $("#editFrame", parent.document);
	editFormDiv.css("width", 0);
	editFormDiv.css("height", 0);
	editFormDiv.css("top", 0);
	editFormDiv.css("left", 0);
	editFormDiv.css("z-index", 0);
	editFrame.css("width", 0);
	editFrame.css("height", 0);
	editFrame.hide("slow");
	editFormDiv.hide("slow");
}
function getIds()
{
	var chkObjs = document.getElementsByName("ids");
	var ids = "";
	for(i = 0;i < chkObjs.length; ++i)
	{
		if(chkObjs[i].type == "checkbox" && chkObjs[i].checked == true)
			ids += chkObjs[i].value + ",";
	}
	return ids;
}

function deleteSelect(attr)
//--------------------------------------------------------------------------------------
//descript: send the select element checkbox set to a delete url
//--------------------------------------------------------------------------------------
{
	var hasSelected		= false;
	var frmInfo			= document.frmInfo;
	var obj				= frmInfo.sid;
	
	if(!attr) var attr = '';
	
	if(obj)
	{
		if(typeof obj.length != 'undefined')
		{
			for(i = 0; i < obj.length; i++)
			{
				if(obj[i].checked)
				{
					hasSelected = true;
					break;
				}
			}
		}
		else hasSelected = obj.checked;
	}
	else hasSelected = false;
	
	if(!hasSelected)
	{
		alert(lang_nosel);
		return false;
	}

	if(confirm(lang_opt_confirm))
	{
		frmInfo.action = _CurrentURL + '&act=delete&refer=' + page_url + '&' + attr;
		frmInfo.submit();
	}
}

function showDetail(imgObj, divObj)
{
	if(divObj.style.display == 'block')
	{
		divObj.style.display = 'none';
		imgObj.src = imgPlus.src;
	}
	else
	{
		divObj.style.display = 'block';
		imgObj.src = imgMinus.src;
	}
}

function copyAddItem(id, attr, frm)
{
	if(!id) return false;
	if(!attr) attr = '';


	if(!frm)
	{
		if(window.event && window.event.shiftKey) frm = window.open('about:blank');
		else frm = window;
	}

	if(!frm) frm = window;

	frm.location = _CurrentURL + '&act=copyadd&ids=' + id + '&refer=' + page_url + '&' + attr;
}

function editItem(id, attr, frm)
{
	if(!id) return false;
	if(!attr) attr = '';


	if(!frm)
	{
		if(window.event && window.event.shiftKey) frm = window.open('about:blank');
		else frm = window;
	}

	if(!frm) frm = window;

	frm.location = _CurrentURL + '&act=modify&ids=' + id + '&refer=' + page_url + '&' + attr;
}

function deleteItem(id, Caption, attr)
{
	if(!id) return false;
	if(!attr) attr = '';
	if(confirm(lang_delete_confirm))
	{
		window.location = _CurrentURL + '&act=delete&ids=' + id + '&refer=' + page_url+ '&' + attr;
	}
}
function myShowModalDialog(url, width, height)
{
	return showModalDialog(url, '', 'resizable:no;scroll:no;status:no;center:yes;help:no;dialogWidth:' + width + ' px;dialogHeight:' + height + ' px');
}

function about()
{
	showModalDialog(_SCRIPT_NAME + '?act=about', '', 'resizable:no;scroll:no;status:no;center:yes;help:no;dialogWidth:400 px;dialogHeight:223 px');
}

function doSomething(code, id, needConfirm, attr, frm)
{
	if(!attr) attr = '';

	var newwin = window.event && window.event.shiftKey ? true : false;
	
	if(needConfirm)
	{
		if(!confirm(lang_opt_confirm)) return;
	}

	if(!frm)
	{
		if(newwin) frm = window.open('about:blank');
		else frm = window;
	}

	if(!frm) frm = window;

	frm.location = _CurrentURL + '&act=' + code + '&ids=' + id + '&refer=' + page_url+ '&' + attr;
}

function doSomething2(act, code, id, needConfirm, attr, frm)
{
	if(!attr) attr = '';

	var newwin = window.event && window.event.shiftKey ? true : false;
	
	if(needConfirm)
	{
		if(!confirm(lang_opt_confirm)) return;
	}

	if(!frm)
	{
		if(newwin) frm = window.open('about:blank');
		else frm = window;
	}

	if(!frm) frm = window;

	frm.location	= _SCRIPT_NAME + '?mod=' + act + '&act=' + code + '&ids=' + id + '&refer=' + page_url+ '&' + attr;
}

function doSomethings(code, needConfirm, attr)
{
	var hasSelected = false;
	var obj = frmInfo.sid;
	
	if(!attr) attr = '';

	if(obj.length)
	{
		for(i = 0; i < obj.length; i++)
		{
			if(obj[i].checked)
			{
				hasSelected = true;
				break;
			}
		}
	}
	else hasSelected = obj.checked;
	
	if(!hasSelected)
	{
		alert(lang_nosel);
		return false;
	}
	
	if(needConfirm)
	{
		if(!confirm(lang_opt_confirm)) return;
	}
	
	frmInfo.action = _CurrentURL + '&act=' + code + '&refer=' + page_url + '&' + attr;
	frmInfo.submit();
}

function in_array(val, arr)
{
	if(!arr || !arr.length || arr.length <=0 ) return false;

	for(var i = 0; i < arr.length; i++)
	{
		if(val == arr[i]) return true;
	}
	
	return false;
}

function is_numeric(val)
{
	return /^[\-+]{0,1}[0-9]+$/.test(val);
}

function is_double(val)
{
	return /^[\-+]{0,1}[0-9\.]+$/.test(val);
}

function highlight_row(obj)
{
	var bool = obj.checked;
	
	if(obj.parentElement.tagName == 'TD')
	{
		if(bool)
		{
			obj.parentElement.parentElement.className = 'highlight_row';
		}
		else obj.parentElement.parentElement.className = 'list_content';
	}
}

function select_thisrow(obj)
{
	var tmp = null;
	
	if(window.event && window.event.srcElement.tagName == 'IMG'
		|| window.event && window.event.srcElement.tagName == 'INPUT') return;
	
	if(obj.cells[0].children[0].tagName == 'INPUT'
				&& (obj.cells[0].children[0].type == 'checkbox' || obj.cells[0].children[0].type == 'radio'))
	{
		tmp = obj.cells[0].children[0];
	}
	else if (obj.cells[1].children[0].tagName == 'INPUT'
				&& (obj.cells[0].children[0].type == 'checkbox' || obj.cells[0].children[0].type == 'radio'))
	{
		tmp = obj.cells[1].children[0];
	}

	if(tmp)
	{
		tmp.checked = !tmp.checked;
		
		if(tmp.type == 'checkbox')
			highlight_row(tmp);
	}
}

function expandSub(obj, obj2)
{
	if(window.event && window.event.srcElement.tagName != 'TD') return;
	
	Detail(obj.children[0], obj2);
}
			
var old_classname	= 'list_content';
var mouse_over		= false;

function highlightrow2(obj, bool)
{
	if(mouse_over == bool) return;
	
	mouse_over = bool;
	
	if(obj.className == 'highlight_row') return;
	
	if(bool)
	{
		obj.className = 'highlight_row2';
	}
	else 
	{
		obj.className = 'list_content';
	}
}

function addFavorite(cleanup)
{
	newwin = window.open(_SCRIPT_NAME + '?act=favorite&act=add&Url=' + escape(document.location.href) + (cleanup ? '&cleanup=1' : ''), 'favorite', 'Width: 800px; height: 400px; center:yes;status:yes;resizable:yes');
	newwin.focus();
}

function autoFocus()
{
	for(var i = 0; i < document.all.length; i++)
	{
		if(document.all[i].autofocus == 'true')
		{
			if(!document.all[i].disabled)
			{
				document.all[i].focus();
				break;
			}
		}
	}
}

function copyTableCol(obj) {
    var col = $(obj).parent().prevAll("th").length; //当前th之前有几个th
    var str = "td:eq(" + col + ")"; //每行具体第几个td表格 过滤串
    var firstRowData = "";
    var hasSetData = false;
    $(".adminlist tr").each(function () {
        if (!this.cells[0].children[0].checked)
            return;
        if ($(this).find(str).children("input[type='text']").val() != undefined) {
            if (!hasSetData) {
                firstRowData = $(this).find(str).children("input[type='text']").val();
                hasSetData = true;
            }
            else {
                $(this).find(str).children("input[type='text']").val(firstRowData);
            }
        }
        if ($(this).find(str).children("select").val() != undefined) {
            if (!hasSetData) {
                firstRowData = $(this).find(str).children("select").val();
                hasSetData = true;
            }
            else {
                $(this).find(str).children("select").val(firstRowData);
            }
        }
    });
}

function increaseTableCol(obj) {
    var col = $(obj).parent().prevAll("th").length; //当前th之前有几个th
    var str = "td:eq(" + col + ")"; //每行具体第几个td表格 过滤串
   
    var strResult = window.prompt("请输入基数和递增量(如:10,1):");
    if (strResult == undefined || strResult.indexOf(',') == -1) return false;

    var indexComma = strResult.indexOf(',');
    var strBase = strResult.substr(0, indexComma);
    var strIncrease = strResult.substr(indexComma + 1);
    var iBase = parseInt(strBase);
    var iIncrease = parseInt(strIncrease);
    var iCur = iBase;
    $(".adminlist tr").each(function () {
        if (!this.cells[0].children[0].checked)
            return;
        if ($(this).find(str).children("input[type='text']").val() != undefined) {
            $(this).find(str).children("input[type='text']").val(iCur);
            iCur += iIncrease;
        }
    });
}

function zoomTableCol(obj) {
    var col = $(obj).parent().prevAll("th").length; //当前th之前有几个th
    var str = "td:eq(" + col + ")"; //每行具体第几个td表格 过滤串
    var strResult = window.prompt("请输入放大百分比(如:1.2或0.2):");
    if (strResult == undefined || isNaN(strResult)) return false;
    var zoom = parseFloat(strResult);
    $(".adminlist tr").each(function () {
        if (!this.cells[0].children[0].checked)
            return;
        if ($(this).find(str).children("input[type='text']").val() != undefined) {
            var strCur = $(this).find(str).children("input[type='text']").val();
            if (isNaN(strCur))
                return false;
            $(this).find(str).children("input[type='text']").val(parseFloat(strCur) * zoom);
        }
    });
}

function replaceTableCol(obj) {
    var col = $(obj).parent().prevAll("th").length; //当前th之前有几个th
    var str = "td:eq(" + col + ")"; //每行具体第几个td表格 过滤串
    var strResult = window.prompt("例子:\r\n精确替换3为9: 3=9\r\n模糊替换3为9: 3=9/m(模糊替换时要在后面加/m)\r\n请输入要查找替换的内容:\r\n");
    if (strResult == undefined) return false;
    var strFind = strResult.split('/')[0].split('=')[0];
    var strReplace = strResult.split('/')[0].split('=')[1];
    var strType = strResult.split('/').length == 2 ? "m" : "j";

    $(".adminlist tr").each(function () {
        if (!this.cells[0].children[0].checked)
            return;
        if ($(this).find(str).children("input[type='text']").val() != undefined) {
            var strCur = $(this).find(str).children("input[type='text']").val();
            if (strType == "j" && strCur == strFind) {
                $(this).find(str).children("input[type='text']").val(strReplace);
            }
            else if (strType == "m" && strCur.indexOf(strFind) != -1) {
                var tmp = strCur.replace(new RegExp(strFind, "gm"), strReplace);
                $(this).find(str).children("input[type='text']").val(tmp);
            }
        }
    });
}

function setOrderField()
{
	autoFocus();

	var obj			= document.all.orderby;
	
	if(!obj) return;
	
	if(!obj.length)
	{
		obj.innerHTML = "<a href='" + OrderURL + '&orderField=' + obj.getAttribute('orderfield') + '&orderMode=' + (CurOrderMode == '1' ? 0 : 1) + "'><b>" + obj.innerHTML + "</b></a>";
		if(CurOrderField == obj.orderfield) obj.innerHTML += (CurOrderMode == '1' ? '↓' : '↑');
	}
	else
	{
		for(var i = 0; i < obj.length; i++)
		{
		    obj[i].innerHTML = "<a href='" + OrderURL + '&orderField=' + obj[i].getAttribute('orderfield') + '&orderMode=' + (CurOrderMode == '1' ? 0 : 1) + "'><b>" + obj[i].innerHTML + "</b></a>";
			if(CurOrderField == obj[i].orderfield) obj[i].innerHTML += (CurOrderMode == '1' ? '↓' : '↑');
		}
	}
	
	for(var i = 0; i < document.all.length; i++)
	{
		if(document.all[i].autofocus == 'true')
		{
			if(!document.all[i].disabled)
				document.all[i].focus();
			break;
		}
	}
}

window.onload = setOrderField;

//todo. 增加长度判断
function checkValid(oForm)
{
	var oObj = oForm;
	
	for(var i = 0; i < oObj.length; i++)
	{
		if(oObj[i].tagName.toLowerCase() == 'input' || oObj[i].tagName.toLowerCase() == 'textarea' || oObj[i].tagName.toLowerCase() == 'file')
		{
			if(oObj[i].type.toLowerCase() == 'password' || oObj[i].type.toLowerCase() == 'text' || oObj[i].type.toLowerCase() == 'textarea' || oObj[i].type.toLowerCase() == 'file')
			{
				if(oObj[i].getAttribute('notnull') && !oObj[i].value)
				{
					alert(oObj[i].getAttribute('detail') + ' ' + lang_notnull);

					oObj[i].focus();
					
					return false;
				}
				
				if(oObj[i].value && oObj[i].getAttribute("isnumeric"))
				{
					if(!/^[\-+]{0,1}[0-9]+$/.test(oObj[i].value))
					{
						alert(oObj[i].getAttribute("detail") + ' ' + lang_neednumeric);
						
						oObj[i].focus();

						return false;
					}
                }

                if (oObj[i].value && oObj[i].getAttribute("isdecimal"))
                 {
                     if (!/^[0-9]+(\.\d+)?$/.test(oObj[i].value)) 
                     {
                        alert(oObj[i].getAttribute('detail') + ' 只能输入数字');

                        oObj[i].focus();

                        return false;
                    }
                }

				if(oObj[i].value && oObj[i].getAttribute('isfloat'))
				{
					if(!/^[\-+]{0,1}[0-9\.]+$/.test(oObj[i].value))
					{
						alert(oObj[i].getAttribute('detail') + ' ' + lang_needfloat);
						
						oObj[i].focus();

						return false;
					}
				}

				if(oObj[i].value && oObj[i].getAttribute('minvalue'))
				{
					var val		= parseFloat(oObj[i].value);
					var needval	= parseFloat(oObj[i].getAttribute('minvalue'));
					
					if(val < needval)
					{
						alert(oObj[i].getAttribute('detail') + ' ' + lang_minvalue + oObj[i].getAttribute('minvalue'));
						
						oObj[i].focus();
						oObj[i].select();
						
						return false;
					}
				}

				if(oObj[i].value && oObj[i].getAttribute('maxvalue'))
				{
					var val		= parseFloat(oObj[i].value);
					var needval	= parseFloat(oObj[i].getAttribute('maxvalue'));
					
					if(val > needval)
					{
						alert(oObj[i].getAttribute('detail') + ' ' + lang_maxvalue + oObj[i].getAttribute('maxvalue'));
						
						oObj[i].focus();
						oObj[i].select();
						
						return false;
					}
				}

                if (oObj[i].value && oObj[i].getAttribute('ismobile'))
                {
                   var reg = /^1[3|4|5|8][0-9]\d{8}$/;

                   if (!(reg.test(oObj[i].value))) 
                   {
                       alert(oObj[i].getAttribute('detail') + ' ' + lang_needmobile);

                       oObj[i].focus();

                       return false;
                   }
               }

               if (oObj[i].value && oObj[i].getAttribute('istelephone')) 
               {
                   var reg = /^[0-9]{3,4}\-\d{7,8}(\(\d{1,6}\))?$/;
                   var reg1 = /^\d{7,8}$/;

                   if (!(reg.test(oObj[i].value) || reg1.test(oObj[i].value)) )
                   {
                       alert(oObj[i].getAttribute('detail') + ' ' + lang_needtelephone);

                       oObj[i].focus();

                       return false;
                   }
               }

				if(oObj[i].value && oObj[i].getAttribute('isemail'))
				{
					if(!/^[0-9a-zA-Z\-\_]+@([0-9a-zA-Z\-\_]+\.)+([a-zA-Z]{2,3})$/.test(oObj[i].value))
					{
						alert(oObj[i].getAttribute('detail') + ' ' + lang_needemail);
						
						oObj[i].focus();

						return false;
					}
				}

				if(oObj[i].value && oObj[i].getAttribute('isdate'))
				{
					tmp = new Date_Ex(oObj[i].value);
					
					if(!tmp)
					{
						alert(oObj[i].getAttribute('detail') + ' ' + lang_needdate);

						oObj[i].focus();
						
						return false;
					}
				}
				
				if(oObj[i].getAttribute('minlength') && strlen(oObj[i].value) < parseInt(oObj[i].getAttribute('minlength')))
				{
					alert(oObj[i].getAttribute('detail') + ' ' + lang_minlength + oObj[i].getAttribute('minlength'));
					
					oObj[i].focus();
					
					return false;
				}
				
				if(oObj[i].getAttribute('maxlength') && strlen(oObj[i].value) > parseInt(oObj[i].getAttribute('maxlength')))
				{
					alert(oObj[i].getAttribute('detail') + ' ' + lang_maxlength + oObj[i].getAttribute('maxlength'));
					
					oObj[i].focus();
					
					return false;
				}
				
				if(oObj[i].getAttribute('allowext') && oObj[i].getAttribute('allowext').length > 1 && oObj[i].value)
				{
					var tmp = oObj[i].allowext.split(',');
					var ext = getFileExt(oObj[i].value);
					var lowerext = ext.toLowerCase();
					if (!in_array(lowerext, tmp))
					{
						alert(oObj[i].getAttribute('detail') + ' ' + lang_err_fileformat.replace(/%s/i, oObj[i].getAttribute('allowext')));

						oObj[i].focus();
						
						return false;
					}
                }

                if (oObj[i].getAttribute('rejectext') && oObj[i].getAttribute('rejectext').length > 1 && oObj[i].value) 
                {
                    var tmp = oObj[i].getAttribute('rejectext').split('|');
                    var ext = getFileExt(oObj[i].value);
                    var lowerext = ext.toLowerCase();
                    var info = "上传了无效的文件格式，只能上传:%s类型以外的文件";
                    if (in_array(lowerext, tmp)) 
                    {
                        alert(oObj[i].getAttribute('detail') + ' ' + info.replace(/%s/i, oObj[i].getAttribute('rejectext')));

                        oObj[i].focus();

                        return false;
                    }
                }
			}
			else if(oObj[i].type.toLowerCase() == 'checkbox' || oObj[i].type.toLowerCase() == 'radio')
			{
				if(oObj[i].notnull)
				{
					var tmp = new Object();
					eval("tmp = document." + (oForm.id ? oForm.id : oForm.name) + '.' + (oObj[i].id ? oObj[i].id : oObj[i].name));
					
					var found = false;
					
					for(var j = 0; j < tmp.length; j++)
					{
						if(tmp[j].checked)
						{
							found = true;
							break;
						}
					}
					
					if(!found)
					{
						alert(oObj[i].getAttribute('detail') + ' ' + lang_notnull);
						
						oObj[i].focus();
						
						return false;
					}
				}
			}
		}
		else if(oObj[i].tagName.toLowerCase() == 'select')
		{
			if(oObj[i].getAttribute('notnull'))
			{
				var tmp = oObj[i];
				
				var found = false;
				
				if(tmp.selectedIndex != -1 && tmp.options[tmp.selectedIndex].value)
				{
					found = true;
				}
				
				if(!found)
				{
					alert(oObj[i].getAttribute('detail') + ' ' + lang_notnull);
	
					oObj[i].focus();
					
					return false;
				}
			}
		}
	}
	
	return true;
}

var prevObj = null;

function highlightDynamicRow()
{
	if(!window.event) return;
	obj = window.event.srcElement;
	
	while(obj.tagName.toLowerCase() != 'tr' || obj.parentElement.parentElement.id == '')
	{
		obj = obj.parentElement;
	}
	
	if(prevObj) prevObj.style.backgroundColor = normalColor;
	
	obj.style.backgroundColor = highlightColor;
	
	prevObj = obj;
}

function addRow(id, cellArr)
{
	var dynamicTable = document.getElementById(id);
	
	if(!dynamicTable) return;
	
	var newRow = dynamicTable.insertRow();
	
	newRow.onclick = highlightDynamicRow;
	newRow.style.backgroundColor = normalColor;
	
	for(var i = 0; i < cellArr.length; i++)
	{
		var cell = newRow.insertCell();
		
		cell.style.textAlign= 'center';
		cell.innerHTML	= cellArr[i];
	}
}

function deleteRow(id)
{
	var obj = document.getElementById(id);
	
	if(!obj || !prevObj) return;
	
	if(prevObj.parentElement && prevObj.parentElement.parentElement == obj)
	{
		obj.deleteRow(prevObj.rowIndex);
	}
}

function autoSelected(obj, defVal, target)
{
	if(!obj) return;
	
	if(!target) target = 'value';
	
	if((typeof defVal).toLowerCase() != 'object')
	{
		var tmp = defVal;
		
		defVal = new Array();
		defVal[0] = tmp;
	}
	
	if(obj.tagName)
	{
		switch(obj.tagName.toLowerCase())
		{
			case 'select':
					for(var i = 0; i < obj.length; i++)
					{
						if(target != 'value')
						{
							if(in_array(obj.options[i].text, defVal))
							{
								obj.options[i].selected = true;
							}
						}
						else
						{
							if(in_array(obj.options[i].value, defVal))
							{
								obj.options[i].selected = true;
							}
						}
					}
			case 'input':
					if(obj.type.toLowerCase() == 'checkbox' || obj.type.toLowerCase() == 'radio')
					{
						if(in_array(obj.value, defVal))
						{
							obj.checked = true;
						}
					}
					break;
		}
	}
	else
	{
		for(var i = 0; i < obj.length; i++)
		{
			if(obj[i].tagName.toLowerCase() == 'select')
			{
				for(var j = 0; j < obj[i].length; j++)
				{
					if(target != 'value')
					{
						if(in_array(obj[i].options[j].text, defVal))
						{
							obj[i].options[j].selected = true;
						}
					}
					else
					{
						if(in_array(obj[i].options[j].value, defVal))
						{
							obj[i].options[j].selected = true;
						}
					}
				}
			}
			else if(obj[i].tagName.toLowerCase() == 'input')
			{
				if(in_array(obj[i].value, defVal))
				{
					obj[i].checked = true;
				}
			}
		}
	}
}

function selectAll(obj)
{
	if(!obj || !obj.length) return;
	
	for(var i = 0; i < obj.length; i++)
	{
		if(obj[i].tagName.toLowerCase() == 'input') obj[i].checked = true;
		else obj[i].selected = true;
	}
}

//util function
	var base64EncodeChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
	var base64DecodeChars = new Array(
		-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63,
		52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1,
		-1,  0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14,
		15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1,
		-1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
		41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1);
	
	function base64encode(str) {
		var out, i, len;
		var c1, c2, c3;
	
		len = str.length;
		i = 0;
		out = "";
		while(i < len) {
		c1 = str.charCodeAt(i++) & 0xff;
		if(i == len)
		{
			out += base64EncodeChars.charAt(c1 >> 2);
			out += base64EncodeChars.charAt((c1 & 0x3) << 4);
			out += "==";
			break;
		}
		c2 = str.charCodeAt(i++);
		if(i == len)
		{
			out += base64EncodeChars.charAt(c1 >> 2);
			out += base64EncodeChars.charAt(((c1 & 0x3)<< 4) | ((c2 & 0xF0) >> 4));
			out += base64EncodeChars.charAt((c2 & 0xF) << 2);
			out += "=";
			break;
		}
		c3 = str.charCodeAt(i++);
		out += base64EncodeChars.charAt(c1 >> 2);
		out += base64EncodeChars.charAt(((c1 & 0x3)<< 4) | ((c2 & 0xF0) >> 4));
		out += base64EncodeChars.charAt(((c2 & 0xF) << 2) | ((c3 & 0xC0) >>6));
		out += base64EncodeChars.charAt(c3 & 0x3F);
		}
		return out;
	}
	
	function strlen(str)
	{
		len = 0;
		
		for(var i = 0; i < str.length; i++)
		{
			if(str.charCodeAt(i) > 0xA0) len += 2;
			else len++;
		}
		
		return len;
	}

	function strpos(str1, str2, caseI)
	{
		var found = -1;
		var c1,c2;
		
		if(str1 == str2) return 0;
		if(!str1 || !str2) return -1;

		if(str2.length == 1) return str1.indexOf(str2);
		
		for(var i = 0; i < str1.length; i++)
		{
			c1 = str1.charCodeAt(i);
			c2 = str2.charCodeAt(0);
			
			if(caseI)
			{
				if(c1 >= 65 && c1 <= 90) c1 += 32;
				if(c2 >= 65 && c2 <= 90) c2 += 32;
			}
			
			if(c1 == c2)
			{
				found = i;

				for(var j = 1, k = i; j < str2.length; j++)
				{
					c1 = str2.charCodeAt(j);
					c2 = str1.charCodeAt(++k);
					
					if(caseI)
					{
						if(c1 >= 65 && c1 <= 90) c1 += 32;
						if(c2 >= 65 && c2 <= 90) c2 += 32;
					}

					if(c1 != c2) break;
				}
				
				if(j == str2.length) return found;
			}
		}
		
		return -1;
	}
	
	function str_replace(str1, str2, str3, caseI)
	{
		var pos = strpos(str1, str2, caseI);
		var tmp = '';
		
		while(pos != -1 && str1.length > 0)
		{
			tmp += str1.substr(0, pos) + str3;

			str1 = str1.substr(pos + str2.length, str1.length);

			pos = strpos(str1, str2, caseI);
		}
		
		return tmp + str1;
	}

	function base64decode(str) {
		var c1, c2, c3, c4;
		var i, len, out;
	
		len = str.length;
		i = 0;
		out = "";
		while(i < len) {
		/* c1 */
		do {
			c1 = base64DecodeChars[str.charCodeAt(i++) & 0xff];
		} while(i < len && c1 == -1);
		if(c1 == -1)
			break;
	
		/* c2 */
		do {
			c2 = base64DecodeChars[str.charCodeAt(i++) & 0xff];
		} while(i < len && c2 == -1);
		if(c2 == -1)
			break;
	
		out += String.fromCharCode((c1 << 2) | ((c2 & 0x30) >> 4));
	
		/* c3 */
		do {
			c3 = str.charCodeAt(i++) & 0xff;
			if(c3 == 61)
			return out;
			c3 = base64DecodeChars[c3];
		} while(i < len && c3 == -1);
		if(c3 == -1)
			break;
	
		out += String.fromCharCode(((c2 & 0XF) << 4) | ((c3 & 0x3C) >> 2));
	
		/* c4 */
		do {
			c4 = str.charCodeAt(i++) & 0xff;
			if(c4 == 61)
			return out;
			c4 = base64DecodeChars[c4];
		} while(i < len && c4 == -1);
		if(c4 == -1)
			break;
		out += String.fromCharCode(((c3 & 0x03) << 6) | c4);
		}
		return out;
	}
	
	function utf16to8(str) {
		var out, i, len, c;
	
		out = "";
		len = str.length;
		for(i = 0; i < len; i++) {
		c = str.charCodeAt(i);
		if ((c >= 0x0001) && (c <= 0x007F)) {
			out += str.charAt(i);
		} else if (c > 0x07FF) {
			out += String.fromCharCode(0xE0 | ((c >> 12) & 0x0F));
			out += String.fromCharCode(0x80 | ((c >>  6) & 0x3F));
			out += String.fromCharCode(0x80 | ((c >>  0) & 0x3F));
		} else {
			out += String.fromCharCode(0xC0 | ((c >>  6) & 0x1F));
			out += String.fromCharCode(0x80 | ((c >>  0) & 0x3F));
		}
		}
		return out;
	}
	
	function utf8to16(str) {
		var out, i, len, c;
		var char2, char3;
	
		out = "";
		len = str.length;
		i = 0;
		while(i < len) {
		c = str.charCodeAt(i++);
		switch(c >> 4)
		{ 
		  case 0: case 1: case 2: case 3: case 4: case 5: case 6: case 7:
			// 0xxxxxxx
			out += str.charAt(i-1);
			break;
		  case 12: case 13:
			// 110x xxxx   10xx xxxx
			char2 = str.charCodeAt(i++);
			out += String.fromCharCode(((c & 0x1F) << 6) | (char2 & 0x3F));
			break;
		  case 14:
			// 1110 xxxx  10xx xxxx  10xx xxxx
			char2 = str.charCodeAt(i++);
			char3 = str.charCodeAt(i++);
			out += String.fromCharCode(((c & 0x0F) << 12) |
						   ((char2 & 0x3F) << 6) |
						   ((char3 & 0x3F) << 0));
			break;
		}
		}
	
		return out;
	}

function Date_Ex(value1)
{
	var strDate = value1;

	if(!strDate.length) return false;

	var reg = /^(\d{1,4})(-|\/)(\d{1,2})\2(\d{1,2})$/;

	if(!strDate.match(reg)) strDate += " 00:00:00";

	reg = /^(\d{1,4})(-|\/)(\d{1,2})\2(\d{1,2}) (\d{1,2}):(\d{1,2}):(\d{1,2})$/;

	if(!strDate.match(reg)) return false;

	return new Date(r[1], r[3]-1, r[4], r[5], r[6], r[7]);
}


function autoTooltip()
{
	
}

function getFileExt(fileName)
{
	if(fileName.lastIndexOf('.') == -1) return '';

	return fileName.substr(fileName.lastIndexOf('.'), fileName.length);
}


//只能输入数字
function inputOnlyNum(obj)
{


	if(obj.value.length==1){
		obj.value=obj.value.replace(/[^1-9]/g,'')

	}
	else{
		obj.value=obj.value.replace(/\D/g,'')
	}

}

//比较日期1是否大于日期2
function compareDate(d1,d2)
{
	 var checkStartDate = d1;
	 var checkEndDate = d2; 

     var arys= new Array();   
     var startdate=new Date(arys[0],parseInt(arys[1]-1),arys[2]);    
     if(checkStartDate != null && checkEndDate != null) 
	 {   
		arys=checkStartDate.split('-');   
		var startdate=new Date(arys[0],parseInt(arys[1]-1),arys[2]);    
        arys=checkEndDate.split('-');   
		var checkEndDate=new Date(arys[0],parseInt(arys[1]-1),arys[2]);    


		if(startdate > checkEndDate) 
		{   
			return false;   
        }   
		return true;
    } 
}

//比较时间 格式 yyyy-mm-dd hh:mi:ss(beginTime < endTime 返回  1 相等 0 反之 -1)

function compTime(beginTime, endTime) {
    beginTime = beginTime.replace(/\//g, "-");
    endTime = endTime.replace(/\//g, "-");
    var beginTimes = beginTime.substring(0, 10).split('-');
    var endTimes = endTime.substring(0, 10).split('-');

    beginTime = beginTimes[1] + '-' + beginTimes[2] + '-' + beginTimes[0] + ' ' + beginTime.substring(10, 19);
    endTime = endTimes[1] + '-' + endTimes[2] + '-' + endTimes[0] + ' ' + endTime.substring(10, 19);

    var a = (Date.parse(endTime) - Date.parse(beginTime)) / 3600 / 1000;
    if (a < 0) {
        return "-1";
    }
    else if (a > 0) {
        return "1";
    }
    else if (a == 0) {
        return "1";
    }
    else {
        return 'exception'
    }
}

//验证输入的编号在数据库中是否存在
//参数1:ID;参数2,列名;参数3,列注释,参数4,文本框Object
function checkUnique(ID,ColCode,ColName,tmpObj)
{

	var url = _CurrentURL + "&act=unique&isneedmain=0";

	var ColValue = escape(tmpObj.value);

	$.post(url,{ID:ID,ColCode:ColCode,ColValue:ColValue},function(data,statusText){
			
			$("#msgResult").val(data);
			if(data=="0")
			{
				$("#msg").html("<font color='blue'>" + ColName + " 可以使用!</font>");								
			}
			else if(data=="1")
			{
				$("#msg").html("<font color='red'>" + ColName + " 已经存在,请重新输入!</font>");
				tmpObj.focus();
			}
			else
			{
				$("#msg").html("<font color='red'>" + ColName + " 验证不通过,请联系管理员!</font>");
				tmpObj.focus();
			}
	})
}

function add(ADestObj, ASourceObj) {
	var myformStr = "document.frmChoose";
	if (document.frmChoose == undefined)
	    myformStr = "document.frmInfo";
    eval("var destObj = " + myformStr + "." + ADestObj);
    eval("var sourceObj = " + myformStr + "." + ASourceObj);
    var element = document.createElement('OPTION');
    element.text = sourceObj.options[sourceObj.selectedIndex].text;
    element.value = sourceObj.options[sourceObj.selectedIndex].value;
    sourceObj.options.remove(sourceObj.selectedIndex);
    destObj.options[destObj.options.length] = element;
}

function removeItem(ASourceObj) {
	var myformStr = "document.frmChoose";
	if(document.frmChoose == undefined)
		myformStr = "document.frmInfo"
    eval("var sourceObj = " + myformStr + "." + ASourceObj);
    if (sourceObj.selectedIndex == -1) alert('请先选择要删除的项目');
    else {
        for (i = sourceObj.options.length - 1; i >= 0; i--) {
            if (sourceObj.options[i].selected) sourceObj.options.remove(i);
        }
    }
}

function upItem(ASourceObj) {
	var myformStr = "document.frmChoose";
	if (document.frmChoose == undefined)
	    myformStr = "document.frmInfo";
    eval("var sourceObj = " + myformStr + "." + ASourceObj);
    if (sourceObj.selectedIndex <= 0) return false;
    else {
        var tmp = document.createElement('OPTION');
        tmp.text = sourceObj.options[sourceObj.selectedIndex].text;
        tmp.value = sourceObj.options[sourceObj.selectedIndex].value;
        sourceObj.options[sourceObj.selectedIndex].text = sourceObj.options[sourceObj.selectedIndex - 1].text;
        sourceObj.options[sourceObj.selectedIndex].value = sourceObj.options[sourceObj.selectedIndex - 1].value;
        sourceObj.options[sourceObj.selectedIndex - 1].text = tmp.text;
        sourceObj.options[sourceObj.selectedIndex - 1].value = tmp.value;
        sourceObj.selectedIndex--;
    }
}

function downItem(ASourceObj) {
	var myformStr = "document.frmChoose";
	if (document.frmChoose == undefined)
	    myformStr = "document.frmInfo";
    eval("var sourceObj = " + myformStr + "." + ASourceObj);
    if (sourceObj.selectedIndex == -1 || sourceObj.selectedIndex >= sourceObj.options.length - 1) return false;
    else {
        var tmp = document.createElement('OPTION');
        tmp.text = sourceObj.options[sourceObj.selectedIndex].text;
        tmp.value = sourceObj.options[sourceObj.selectedIndex].value;
        sourceObj.options[sourceObj.selectedIndex].text = sourceObj.options[sourceObj.selectedIndex + 1].text;
        sourceObj.options[sourceObj.selectedIndex].value = sourceObj.options[sourceObj.selectedIndex + 1].value;
        sourceObj.options[sourceObj.selectedIndex + 1].text = tmp.text;
        sourceObj.options[sourceObj.selectedIndex + 1].value = tmp.value;
        sourceObj.selectedIndex++;
    }
}

function moveItem(ASourceObj, ADestObj) {
	var myformStr = "document.frmChoose";
	if (document.frmChoose == undefined)
	    myformStr = "document.frmInfo";
    eval("var sourceObj = " + myformStr + "." + ASourceObj);
    eval("var destObj = " + myformStr + "." + ADestObj);
    if (sourceObj.selectedIndex == -1) return false;
    var tmp = document.createElement('OPTION');
    tmp.value = sourceObj.options[sourceObj.selectedIndex].value;
    tmp.text = sourceObj.options[sourceObj.selectedIndex].text;
    destObj.options[destObj.length] = tmp;
    sourceObj.options.remove(sourceObj.selectedIndex);
    destObj.selectedIndex = destObj.options.length - 1;
    if (sourceObj.selectedIndex == -1)
        return false;
    else
        moveItem(ASourceObj, ADestObj);
}

function createOption(ASourceObj) {
	var myformStr = "document.frmChoose";
	if (document.frmChoose == undefined)
	    myformStr = "document.frmInfo";
    eval("var sourceObj = " + myformStr + "." + ASourceObj);
    for (i = 0; i < myOption.length; ++i) {
        var tmp = document.createElement('OPTION');
        tmp.value = myOption[i][0];
        tmp.text = myOption[i][1];
        sourceObj.options[sourceObj.length] = tmp;
    }
}
function filterOption(ASourceObj, ADestObj, filterStr) {
	var myformStr = "document.frmChoose";
	if (document.frmChoose == undefined)
	    myformStr = "document.frmInfo";
    eval("var sourceObj = " + myformStr + "." + ASourceObj);
    eval("var destObj = " + myformStr + "." + ADestObj);
    sourceObj.options.length = 0;
    bHasFilter = (filterStr != null && filterStr != "") ? true : false;
    for (i = 0; i < myOption.length; ++i) {
        bContinue = false;
        if (bHasFilter && myOption[i][1].toLowerCase().indexOf(filterStr.toLowerCase()) == -1) {//不区分大小写
            bContinue = true;
        }
        else {
            for (j = 0; j < destObj.options.length; ++j) {
                if (destObj.options[j].value == myOption[i][0]) {
                    bContinue = true;
                    break;
                }
            }
        }
        if (bContinue)
            continue;
        var tmp = document.createElement('OPTION');
        tmp.value = myOption[i][0];
        tmp.text = myOption[i][1];
        sourceObj.options[sourceObj.length] = tmp;
    }
}
function filterSourceOption(ASourceObj, filterStr) {
    var myformStr = "document.frmChoose";
    if (document.frmChoose == undefined)
        myformStr = "document.frmInfo";
    eval("var sourceObj = " + myformStr + "." + ASourceObj);
    sourceObj.options.length = 0;
    bHasFilter = (filterStr != null && filterStr != "") ? true : false;
    for (i = 0; i < myOption.length; ++i) {
        bContinue = false;
        if (bHasFilter && myOption[i][1].toLowerCase().indexOf(filterStr.toLowerCase()) == -1) {//不区分大小写
            bContinue = true;
        }
        if (bContinue)
            continue;
        var tmp = document.createElement('OPTION');
        tmp.value = myOption[i][0];
        tmp.text = myOption[i][1];
        sourceObj.options[sourceObj.length] = tmp;
    }
}
function filterOptionWithArray(ASourceObj, ADestObj, filterStr, arr) {
	var myformStr = "document.frmChoose";
	if (document.frmChoose == undefined)
	    myformStr = "document.frmInfo";
    eval("var sourceObj = " + myformStr + "." + ASourceObj);
    eval("var destObj = " + myformStr + "." + ADestObj);
    sourceObj.options.length = 0;
    bHasFilter = (filterStr != null && filterStr != "") ? true : false;
    for (i = 0; i < arr.length; ++i) {
        bContinue = false;
        if (bHasFilter && arr[i][1].toLowerCase().indexOf(filterStr.toLowerCase()) == -1) {
            bContinue = true;
        }
        else {
            for (j = 0; j < destObj.options.length; ++j) {
                if (destObj.options[j].value == arr[i][0]) {
                    bContinue = true;
                    break;
                }
            }
        }
        if (bContinue)
            continue;
        var tmp = document.createElement('OPTION');
        tmp.value = arr[i][0];
        tmp.text = arr[i][1];
        sourceObj.options[sourceObj.length] = tmp;
    }
}

function getOptionValues(ASourceObj) {
	var myformStr = "document.frmChoose";
	if (document.frmChoose == undefined)
	    myformStr = "document.frmInfo";
    eval("var sourceObj = " + myformStr + "." + ASourceObj);
    var str = "";
    for (i = 0; i < sourceObj.options.length; ++i) {
        str = str + sourceObj.options[i].value + ","
    }
	if(str.length > 0)
	{
		str = str.substr(0, str.length - 1); //去除最后的逗号
	}
    return str;
}

function SearchItem(obj, q_obj, e) {
    SearchObj(obj, q_obj, e, "item");
}

function SetObjName(objId, tabname) {
    var id = $("#" + objId).val();
    var url = "admincp.aspx?mod=" + tabname + "&act=getname&isneedmain=0&oid=" + id;
    $.ajax({
        type: "POST",
        url: url,
        dataType: "text",
        async: true,
        success: function (data) {
            $("#" + objId).val(data);
        }
    });
}
/*@author 高琪
*@Time 2012-02-15
*@Desc 仿百度快速下拉搜索功能搜索员工--预处理部分
*@整体流程 SearchItem->CreateDiv->SearchServer
*@Params obj-当前要赋值的文本DOM，q_obj-职工号要赋值的DOM的ID
*/
function SearchObj(obj, q_obj, e, tabname) {
    var e = e || event;
    var KCode = e.keyCode || e.which || e.charCode;
    switch (KCode) {
        case 8: //-回退
            $("#" + q_obj).val("");
            if ($(obj).val() == "") {
                $("#mainsearch").remove();
            } else {
                CreateDiv(obj, q_obj, tabname);
            }
            break;
        case 38: //-上
            var AllCurtObj = $("#mainsearch").children().children();
            var CurtObj = $("#mainsearch").children().children(".SeaCurt");
            if ($(CurtObj).length == 0) {//未选中
                $($(AllCurtObj)[$(AllCurtObj).length - 1]).addClass("SeaCurt");
                $(obj).val($($(AllCurtObj)[$(AllCurtObj).length - 1]).text());
                $("#" + q_obj).val($($(AllCurtObj)[$(AllCurtObj).length - 1]).attr("No"));
            } else {//选中
                $(CurtObj).removeClass("SeaCurt");
                $($(CurtObj).prev("li")).addClass("SeaCurt");

                var text = $($(CurtObj).prev("li")).text(); //姓名
                var No = $($(CurtObj).prev("li")).attr("No"); //职工号

                text != "" ? $(obj).val(text) : "";
                if (q_obj != "") {
                    No != undefined ? $("#" + q_obj).val(No) : "";
                }
            }
            break;
        case 40: //下
            var AllCurtObj = $("#mainsearch").children().children();
            var CurtObj = $("#mainsearch").children().children(".SeaCurt");
            if ($(CurtObj).length == 0) {//未选中
                $($(AllCurtObj)[0]).addClass("SeaCurt");
                $(obj).val($($(AllCurtObj)[0]).text());
                $("#" + q_obj).val($($(AllCurtObj)[0]).attr("No"));
            } else {//选中
                $(CurtObj).removeClass("SeaCurt");
                $($(CurtObj).next("li")).addClass("SeaCurt");

                var text = $($(CurtObj).next("li")).text();
                var No = $($(CurtObj).next("li")).attr("No");

                text != "" ? $(obj).val(text) : "";
                if (q_obj != "") {
                    No != undefined ? $("#" + q_obj).val(No) : "";
                }
            }
            break;
        case 13:
            $("#mainsearch").remove();
            break;
        default:
            CreateDiv(obj, q_obj, tabname);
            break;
    }
}
/*@author 高琪
*@Time 2012-02-15
*@Desc 仿百度快速下拉搜索功能-组装用于下来的DIV列表
*/
function CreateDiv(obj, q_obj, tabname) {
    var s_v = $(obj).val();
    if (s_v != "") {
        var returnhtml = SearchServer(s_v, tabname);
        if (returnhtml != "") {
            var divWidth = $(obj).css("width");
            if (divWidth == "auto") //ie6下面部分显示为auto
                divWidth = "150px";
            var styleAppend = "";
            if (/msie/.test(navigator.userAgent.toLowerCase()))
                styleAppend = " margin-top:25px; ";
            var html = "<div id=\"mainsearch\" class=\"searchbox\" inputobj=\"" + $(obj).attr("id") + "\" q_inputobj=\""
                + q_obj + "\" style=\"width:" + divWidth + ";" + styleAppend + "\"><ul>";
            html += returnhtml;
            html += "</ul></div>";
            $("#mainsearch").remove();
            $(obj).after(html);
        } else {
            $("#mainsearch").remove();
        }
        //定位下拉列表的位置
        $("#mainsearch").css({ left: $(obj).position().left });
    }
}
/*@author 高琪
*@Time 2012-02-28
*@Desc 仿百度快速下拉搜索功能-支持鼠标选择实体！
*/
function mouseselect(obj) {
    $(obj).parent().children().removeClass("SeaCurt");
    $(obj).addClass("SeaCurt");
    $(obj).parent().parent(".searchbox").prev("input[type='text']").val($(obj).text());
	var q_input_obj = $("#mainsearch").attr("q_inputobj"); //获取要存放值的dom对象
	$("#" + q_input_obj).val($(obj).attr("No"));
}
/*@author 高琪
*@Time 2012-02-15
*@Desc 仿百度快速下拉搜索功能-实体后台AJAX搜索！
*/
function SearchServer(s, tabname) {
    var url = "admincp.aspx?mod=" + tabname + "&act=search" + tabname + "&isneedmain=0";
    var res = "";
    $.ajax({
        type: "POST",
        url: url,
        dataType: "text",
        async: false,
        data: "s=" + escape(s),
        success: function (data) {
            res = data;
        }
    });
    return res;
}

function checkkeyname() {
    if ($('#KeyName').val() == "") {
        alert("索引名称不能为空");
        return;
    }
    var actionstr = document.frmInfo.action;
    var url = _CurrentURL + "&act=checkkeyname&isneedmain=0";
    var result = false;
    $.ajax({
        type: "POST",
        url: url,
        dataType: "text",
        async: false,
        data: "a=" + escape(actionstr) + "&s=" + escape($('#KeyName').val()),
        success: function (data) {
            if (data == "1") {
                alert("索引名称存在重复");
            }
            else if (data == "2") {
                alert("索引名称不能为空");
            }
            else if (data == "0") {
                result = true;
            }
        }
    });
    return result;
}

function copyRecord(){
	var hasSelected = false;
    var frmInfo = document.frmInfo;
    var obj = frmInfo.sid;

    if (!attr) var attr = '';

    if (obj) {
        if (typeof obj.length != 'undefined') {
            for (i = 0; i < obj.length; i++) {
                if (obj[i].checked) {
                    hasSelected = true;
                    break;
                }
            }
        }
        else hasSelected = obj.checked;
    }
    else hasSelected = false;

    if (!hasSelected) {
        alert(lang_nosel);
        return false;
    }
	if(_CurrentMethod.indexOf("mod=jump") > 0 || _CurrentMethod.indexOf("mod=monster_gen") > 0)
	{
		if(!confirm("此表复制到其它服时不会检查重数据, 是否继续?"))
		{
			return;
		}
	}
    var ids = getIds();
	
	var svrChooseurl = "admincp.aspx?mod=pub&isneedmain=0";
	var resv = myShowModalDialog(svrChooseurl, 600, 580);
	if(resv == undefined || resv == 'undefined' || resv == "")
	{
		return;
	}
	var url = _CurrentMethod + "copyrecord";
	$.ajax({
        type: "POST",
        url: url,
        dataType: "text",
		async: false,
		data: "isneedmain=0&svr=" + resv + "&ids=" + ids,
		success: function (data) {
			if (data != "") {
				alert(data);
			}
			else
				alert("复制成功");
		}	
	});
}

function keynameChoose(tab) 
{
    var url = "admincp.aspx?mod=upanddown&act=searchkeyname&isneedmain=0&tab=" + tab + "&ids=" + $("#ids").val();
    var resv = myShowModalDialog(url, 600, 580);
    if (resv == undefined)
        return;
    $.post("admincp.aspx?mod=upanddown&act=getkeyname&isneedmain=0&tab=" + tab + "&ids=" + resv, function (data) {
        $("#ids").val(resv);
        $("#keynames").text(data);
    });

}

function gameAPITypeChoose(typeId, typeName)
{
	var APITypeChooseurl = "admincp.aspx?mod=showapi&act=gettypetree&isneedmain=0";
	var resv = myShowModalDialog(APITypeChooseurl, 600, 580);
	if(resv == undefined || resv == 'undefined' || resv == "")
	{
		return;
	}
    else
	{
		var results = resv.split("|");
        $("#" + typeId).val(results[0]);
        $("#" + typeName).val(results[1]);
	}
}

//serverIds:一个input text或hidden
//serverNames:一个span或div
//isnnedcur:是否要显示当前服务器 1:是 0:否
function serverChoose(serverIds, serverNames, isneedcur)
{
	var svrChooseurl = "admincp.aspx?mod=pub&isneedmain=0&isneedcur=" + isneedcur;
	var resv = myShowModalDialog(svrChooseurl, 600, 580);
	if(resv == undefined || resv == 'undefined' || resv == "")
	{
		return;
	}
    $.post("admincp.aspx?mod=tablemanager&act=getservernames&isneedmain=0&svrids=" + resv, function (data) {
        $("#" + serverIds).val(resv);
        $("#" + serverNames).text(data);
	});
}
//txtid: text文本框的id
//imgid: img标签id
//typeid:资源类型
//length:返回长度
//folder:文件夹
function resChoose(txtid, imgid, typeid, length, folder)
{
	var svrChooseurl = "admincp.aspx?mod=pub&isneedmain=0&act=showpicwin&Type=" + typeid + "&Folder=" + folder;
	var width = 650;
	var height = 580;
	var resv = showModalDialog(svrChooseurl, '', 'resizable:no;status:no;center:yes;help:no;dialogWidth:' + width + ' px;dialogHeight:' + height + ' px');
	if(resv == undefined || resv == 'undefined' || resv == "")
	{
		resv = window.ReturnValue; //chrome有些版本有问题, 所以在子窗口同时修改了父窗口的ReturnValue
		if(resv == undefined || resv == 'undefined' || resv == "")
			return;
	}
	if(length == 4)
		$("#" + txtid).val(resv.substr(1, 4));
	else if(length == 5)
		$("#" + txtid).val(resv.substr(0, 5));
	else if(length == 10)
		$("#" + txtid).val(resv.substr(0, 10));
	if(imgid != "")
	{
		$("#" + imgid).attr("src", "Admin/templates/default/img/" + resv.substr(0, 2) + "/" + resv.substr(2, 3) + "/" + resv);
	}
	
}
//设置顶部工具栏左边一块xml与script不相同的信息
function setDiffInfo()
{
	var url = "admincp.aspx?mod=data&act=getdiff&isneedmain=0";
	$.post(url, function(data){
		$('#diffInfo').html(data);
		setTimeout("setDiffInfo()", 10000);
	});
}
//重新载入游戏资源
function reloadGameSource() {
    var url = "admincp.aspx?mod=tablemanager&act=rs2&isneedmain=0&data=" + escape(_CurrentURL);
    $.post(url, function (data) {
        alert(data);
    });
}
//根据秒计算天小时分
//isSeconds: 是单位为秒, 否单位为毫秒
function showTimeInSpan(isSeconds, srcInputId, destSpanId)
{
	var formatStr = "";
	var miliSecondStr = "";
	var seconds = parseInt($('#' + srcInputId).val());
	if(!isSeconds)
	{
		if(seconds % 1000 > 0)
		{
			miliSecondStr = "." + seconds % 1000;
		}
		seconds = Math.floor(seconds / 1000);
	}
	var tmp = 0;
	if(seconds >= 86400) //大于1d
	{
		formatStr = Math.floor(seconds / 86400) + "天";
		seconds  %= 86400;
	}
	if(seconds >= 3600) //大于1h
	{
		formatStr += Math.floor(seconds / 3600) + "小时";
		seconds  %= 3600;
	}
	if(seconds >= 60) //大于1min
	{
		formatStr += Math.floor(seconds / 60) + "分钟";
		seconds  %= 60;
	}
	if(seconds > 0 || (seconds == 0 && miliSecondStr != "")) //大于1s
	{
		formatStr += seconds + miliSecondStr + "秒";
	}
	$('#' + destSpanId).text(formatStr);
}