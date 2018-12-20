<table width="500"  border="0" cellspacing="0" cellpadding="0" style='border:none' class="normaltable">
  <tr align="right">
    <td height="25" nowrap><strong>共<span style='color: #ffcc00'>{recordCount}</span>条记录&nbsp;&nbsp;&nbsp;
	<span style='color: #ffcc00'>
	<input name="edtPageSize" type="text" id="edtPageSize" size="4" value='{pageSize}' 
	onKeyDown="if(window.event.keyCode == 13) return setPageSize();"></span>条/页&nbsp;&nbsp;&nbsp;当前为
	<span style='color: #ffcc00'>{curPage}</span>/{pageCount}页 </strong></td>
    <td width="43"><a  id=pageFirst  onclick='btnPage("first");'><strong><span style='color: #ffffff'>前页</span></strong></a></td>
    <td width="50"><a  id=pagePrevious  onclick='btnPage("previous");'><strong><span style='color: #ffffff;'>上一页</span></strong></a></td>
    <td width="50"><a  id=pageNext  onclick='btnPage("next");'><strong><span style='color: #ffffff;'>下一页</span></strong></a></td>
    <td width="43"><a  id=pageLast  onclick='btnPage("last");'><strong><span style='color: #ffffff'>后页</span></strong></a></td>
    <td width="40"><input name="edtPage" type="text" id="edtPage" size="4" onKeyDown="if(window.event.keyCode == 13) return goPage();">
    </td>
    <td width="30"><input type="button" value="GO" onclick='goPage();'>
    </td>
  </tr>
</table>
<script language="javascript">
	var page		= parseInt('{curPage}');
	var pageCount	= parseInt('{pageCount}');
	var pageSize	= parseInt('{pageSize}');
	var recordCount	= parseInt('{recordCount}');

	function goPage()
	{
		var obj = document.getElementById('edtPage');
		
		if(!obj.value || isNaN(parseInt(obj.value)) || parseInt(obj.value) > pageCount || parseInt(obj.value) < 1)
		{
			alert('Valid page number is 1 to ' + pageCount);
			return false;
		}
		
		//_RequestURI = _RequestURI.replace(/&/ig, '&amp;');
		
		location = _RequestURI.replace(/&page=[\-0-9]*/, '') + "&page=" + obj.value;
		
		return false;
	}
	
	function setPageSize()
	{
		var objPageSize = document.getElementById('edtPageSize');
		if(!objPageSize.value || isNaN(parseInt(objPageSize.value)) || parseInt(objPageSize.value) < 1)
		{
			alert('请输入正确的数据');
			return false;
		}
		location = _RequestURI.replace(/&pagesize=[\-0-9]*/, '') + "&pagesize=" + objPageSize.value;
		
		return false;
	}
	
	function btnPage(act)
	{
		var pageNum = 0;
		
		switch(act.toLowerCase())
		{
			case 'first':
				if(page <= 1) return false;
				else pageNum = 1;
				break;
			case 'previous':
				if(page <= 1) return false;
				else pageNum = page - 1;
				break;
			case 'next':
				if(page >= pageCount) return false;
				else pageNum = page + 1;
				break;
			case 'last':
				if(page >= pageCount) return false;
				else pageNum = pageCount;
				break;
		}
		
		//_RequestURI = _RequestURI.replace(/&/ig, '&amp;');
		if(pageNum != 0) window.location = _RequestURI.replace(/&page=[\-0-9]*/, '') + "&page=" + pageNum;
	}
</script>
