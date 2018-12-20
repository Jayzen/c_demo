<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset={Charset}">
		<title>{SYS_NAME} {LANG_operator}</title>
		<link rel=stylesheet href="{BASE_PREFIX}/css/admin.css">
		<link rel=stylesheet href="{BASE_PREFIX}/css/toolbar.css">
		<script type="text/javascript">
	
			var BASE_PREFIX		= "{BASE_PREFIX}";
			var _SCRIPT_NAME	= "{SCRIPT_NAME}";
			var _CurrentURL		= "{CURRENT_MODULE}";
			var _CurrentMethod	= "{CURRENT_ACT}";
			var _RequestURI		= "{REQUEST_URI}";			

			var CurOrderField	= "{OrderField}";
			var CurOrderMode	= "{OrderMode}";			

			var OrderURL		= "{OrderURL}"; 			
			var CurServerName_ = "{CurServerName_}";
			var lang_notnull	= "{LANG_js_notnull}";
			var lang_neednumeric= "{LANG_js_isnumeric}";
			var lang_needfloat	= "{LANG_js_isdouble}";
			var lang_needemail	= "{LANG_js_email}";
			var lang_needtelephone	= "{LANG_js_telephone}";
			var lang_needmobile	= "{LANG_js_mobile}";
			var lang_neededate	= "{LANG_js_date}";
			var lang_nosel		= "{LANG_js_nosel}";
			var lang_opt_confirm	= "{LANG_js_opt_confirm}";
			var lang_logout_confirm	= "{LANG_js_logout_confirm}";
			var lang_delete_confirm	= "{LANG_js_delete_confirm}";
			var lang_minlength		= "{LANG_js_minlength}";
			var lang_maxlength		= "{LANG_js_maxlength}";
			var lang_err_fileformat	= "{LANG_err_fileformat}";
			var lang_minvalue		= "{LANG_js_minvalue}";
			var lang_maxvalue		= "{LANG_js_maxvalue}";
			
			var highlightColor	= "#10EE10";
			var normalColor		= "#FFFFFF";
	
		</script>
		<script type="text/javascript" src="Admin/js/toolbar.js"></script>
		<script type="text/javascript" src="Admin/js/common.js" charset="GBK"></script>			
		<script type="text/javascript" src="Admin/js/jquery-1.4.2.js"></script>
	</head>
	<body topmargin="0">
		<div id="wrapper">
        	<div id="header">
       		</div>
		</div>
		<!-- beginRow1 Admincp -->
		<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
			<tr class="toolbar menudottedline">
				<td class="menudottedline" width="40%" style="padding-left: 2px">
					<table>
						<tr>
							<td style="width: 400px; height: 22px; background: white; vertical-align: middle; border-top:1px solid #888888; border-left: 1px solid #888888;padding-left: 3px">{LANG_position}<a href="admincp.aspx" target=_top>{LANG_startpage}</a> {Position}</td>
						</tr>
					</table>
				</td>
				<td class="menudottedline">
					
				</td>
			    <td width="30%" class="menudottedline">{Toolbar}</td>
			</tr>
		</table>
		<!-- endRow1 Admincp -->
		<br>
		<DIV align="center">
        	<DIV class="main">
        		<TABLE width='100%' border="0">
        			<TBODY>
        				<TR>
        					<TD vAlign="center" align="center">
								{DATA}
							</TD>
       					</TR>
       				</TBODY>
       			</TABLE>
       		</DIV>
		</DIV>
		<table width="100%" border="0" cellspacing="0" cellpadding="5">
			<tr>
				<td align="center">
					{LANG_powered}
				</td>
			</tr>
		</table>
	</body>
</html>
<iframe width="0" height="0" src="about:blank" id="ifrmHidden" name=ifrmHidden></iframe>