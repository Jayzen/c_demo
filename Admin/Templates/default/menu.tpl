<HTML><HEAD><TITLE>��¹������ѯϵͳ</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="{BASE_PREFIX}/css/admincp.css" type=text/css rel=stylesheet>
<SCRIPT>
var is_ie = document.all ? true : false;
var is_ff = window.addEventListener ? true : false;

function refreshmainframe(e) {
	e = e ? e : window.event;
	actualCode = e.keyCode ? e.keyCode : e.charCode;
	if(actualCode == 116 && parent.main) {
		parent.main.location.reload();
		if(is_ie) {
			e.keyCode = 0;
			e.returnValue = false;
		} else {
			e.preventDefault();
		}
	}
}


function get_cookie(name) {
	cookiename = name + '=';
	cookiepos = document.cookie.indexOf(cookiename);
	if(cookiepos != -1) {
		cookiestart =cookiepos+cookiename.length;
		cookieend = document.cookie.indexOf(';', cookiestart);
		if(cookieend == -1) {
			cookieend = document.cookie.length;
		}
		return unescape(document.cookie.substring(cookiestart, cookieend));
	}
	return '';
}


function set_cookie(name, value) {
	expires = new Date();
	expires.setTime(expires.getTime() + 2592000);
	document.cookie = name + "=" + value + "; path=/; expires=" + expires.toGMTString();
}
function $(id) {
	return document.getElementById(id);
}


var collapsed=get_cookie('cdb_collapse');
function collapse_change(menucount) {
	if($('menu_' + menucount).style.display == 'none') {
		$('menu_' + menucount).style.display = '';collapsed = collapsed.replace('[' + menucount + ']' , '');
		$('menuimg_' + menucount).src = '{BASE_PREFIX}/images/menu_reduce.gif';
	} else {
		$('menu_' + menucount).style.display = 'none';collapsed += '[' + menucount + ']';
		$('menuimg_' + menucount).src = '{BASE_PREFIX}/images/menu_add.gif';
	}
	set_cookie('cdb_collapse', collapsed);
}
//parent.main.location='admincp.aspx?act=desktop';
//parent.header.togglemenu("order");
</SCRIPT>
</HEAD>
<BODY>
<CENTER>
      <!--ϵͳ����-->
<DIV id=queryinfo style="display:">
	<TABLE class=leftmenulist style="MARGIN-BOTTOM: 5px" cellSpacing=0 cellPadding=0 width=146 align=center border=0>
		<TBODY>
		  <TR class=leftmenutext>
			<TD><A onclick=collapse_change(111) href="#">
				<IMG id=menuimg_111 src="{BASE_PREFIX}/images/menu_reduce.gif" border=0></A>&nbsp;<A onclick=collapse_change(111) href="#">������Ϣ</A>
			</TD>
		  </TR>
		</TBODY>
		<TBODY id=menu_111>
		  <TR class=leftmenutd>
			<TD>
				<TABLE class=leftmenuinfo cellSpacing=0 cellPadding=0 border=0>
					<TBODY>
						<TR>
							<TD><IMG src="{BASE_PREFIX}/images/s_menu.gif" align=absMiddle border=0>&nbsp;<A href="admincp.aspx?mod=stuinfo" target="main" class=h_menu>ѧ����Ϣ</A></TD>
						</TR>
						<TR>
							<TD><IMG src="{BASE_PREFIX}/images/s_menu.gif" align=absMiddle border=0>&nbsp;<A href="admincp.aspx?mod=knowledgebase" target="main" class=h_menu>֪ʶ��</A></TD>
						</TR>
						<TR>
							<TD><IMG src="{BASE_PREFIX}/images/s_menu.gif" align=absMiddle border=0>&nbsp;<A href="admincp.aspx?mod=stucomment" target="main" class=h_menu>ѧ������</A></TD>
						</TR>
						<TR>
							<TD><IMG src="{BASE_PREFIX}/images/s_menu.gif" align=absMiddle border=0>&nbsp;<A href="admincp.aspx?mod=stuknowledge" target="main" class=h_menu>ѧ��֪ʶ��</A></TD>
						</TR>
						<TR>
							<TD><IMG src="{BASE_PREFIX}/images/s_menu.gif" align=absMiddle border=0>&nbsp;<A href="admincp.aspx?mod=test" target="main" class=h_menu>�����Ծ��</A></TD>
						</TR>
						<TR>
							<TD><IMG src="{BASE_PREFIX}/images/s_menu.gif" align=absMiddle border=0>&nbsp;<A href="admincp.aspx?mod=stutest" target="main" class=h_menu>ѧ�������Ծ�</A></TD>
						</TR>
					 </TBODY>
				</TABLE>
			</TD>
		  </TR>
		</TBODY>
	</TABLE>
  </DIV>

<!--ϵͳ����-->
<DIV id=system style="DISPLAY:none">
  <TABLE class=leftmenulist style="MARGIN-BOTTOM: 5px" cellSpacing=0 cellPadding=0 width=146 align=center border=0>
    <TBODY>
      <TR class=leftmenutext>
        <TD><A onclick=collapse_change(121) href="#">
			<IMG id=menuimg_121 src="{BASE_PREFIX}/images/menu_reduce.gif" border=0></A>&nbsp;<A onclick=collapse_change(121) href="#">ϵͳ����</A>
		</TD>
      </TR>
	</TBODY>
    <TBODY id=menu_121>
      <TR class=leftmenutd>
        <TD><TABLE class=leftmenuinfo cellSpacing=0 cellPadding=0 border=0>
            <TBODY>
			<!-- beginRow_bak ldgl -->
			<TR>
                <TD><IMG src="{BASE_PREFIX}/images/s_menu.gif" align=absMiddle border=0>&nbsp;<A href="admincp.aspx?mod=user" target="main" class=h_menu>�û�����</A></TD>
            </TR>
			<TR>
				<TD><IMG src="{BASE_PREFIX}/images/s_menu.gif" align=absMiddle border=0>&nbsp;<A href="admincp.aspx?mod=teachinfo" target="main" class=h_menu>��ʦ��Ϣ</A></TD>
			</TR>
			<TR>
				<TD><IMG src="{BASE_PREFIX}/images/s_menu.gif" align=absMiddle border=0>&nbsp;<A href="admincp.aspx?mod=chargerecord" target="main" class=h_menu>���Ѽ�¼</A></TD>
			</TR>
			 <!-- endRow_bak ldgl -->
			 </TBODY>
        </TABLE></TD>
      </TR></TBODY>
  </TABLE>
</DIV>
<TABLE class=leftmenulist cellSpacing=0 cellPadding=0 width=146 align=center border=0>
    <TBODY>
	  <TR  class=leftmenutext>
		<TD><DIV style="MARGIN-LEFT: 32px"><A 
		  href="/admincp.aspx?mod=login&act=chgpass" 
		  target=_top>�޸�����</A></DIV></TD>
	  </TR>
      <TR class=leftmenutext>
        <TD><DIV style="MARGIN-LEFT: 48px"><A 
      href="/admincp.aspx?mod=login&act=logout" 
      target=_top>�˳�</A></DIV></TD>
      </TR>
    </TBODY>
  </TABLE>
</CENTER></BODY></HTML>
