<html>
<HEAD>
<LINK id=css href="{BASE_PREFIX}/css/admincp.css" type=text/css rel=stylesheet>
<script type="text/javascript" src="Admin/js/jquery-1.4.2.js"></script>
<SCRIPT>
<!--
var menus = new Array('queryinfo'{sytemscript1});
function togglemenu(id) {
	sethighlight(id);
	if(parent.menu) {
		for(k in menus) {
			if(parent.menu.document.getElementById(menus[k])) {
				parent.menu.document.getElementById(menus[k]).style.display = menus[k] == id ? '' : 'none';
			}
		}
	}
}
function findtags(parentobj, tag) {
	if(typeof parentobj.getElementsByTagName != 'undefined') {return parentobj.getElementsByTagName(tag);}
	else if(parentobj.all && parentobj.all.tags) {return parentobj.all.tags(tag);}
	else {return null;}
}
function sethighlight(n) {
	var lis = findtags(document, 'li');
	for(var i = 0; i < lis.length; i++) {
		lis[i].className = '';
	}
	var obj = document.getElementById(n);
	obj.className = 'menuon';
}

-->
</script>
</HEAD>
<BODY>

<iframe width="0" height="0" src="about:blank" id=ifrmHidden name=ifrmHidden></iframe>
<TABLE class=topmenubg cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
    <TR>
      <TD width=169 rowSpan=2>&nbsp;</TD>
      <TD width="750">
	  <DIV class=topmenu>
          <UL>
			<LI id=queryinfo><SPAN><A onClick="togglemenu('queryinfo');return false;" href="#">–≈œ¢≤È—Ø</A></SPAN> </LI>
			{sytemscript2}
          </UL>
      </DIV>
	  </TD>
	  <TD align="right" style='text-align:right;padding-right:10px;'>{CurrentUserInfo}</TD>
    </TR>
  </TBODY>
</TABLE>
</BODY></HTML>
<script>
togglemenu("queryinfo");
</script>
