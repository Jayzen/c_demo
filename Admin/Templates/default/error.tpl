<html>
	<head>
		<title>{LANG_error_notice}</title>
		<style type='text/css'>
			#wrapper {
					border: 0px;
					margin: 0px;
					margin-left: auto;
					margin-right: auto;
					padding: 0px;
			}
			
			#header {
					background-color: #FFF;
					background-position: right top;
					border-bottom: 4px solid #80B5D7;
			}
			
			#header1 {
					position: relative;
					width: 100%;
					background: url(../images/header_blue.jpg) #30569D no-repeat;
					background-position: top right;
					margin: 0px;
					padding: 0px;
			}
			
			#wrapper1 div {
				border: 0px;
				margin: 0px;
				margin-left: auto;
				margin-right: auto;
				padding: 0px 5px 0px 5px;
				display: inline;
			}
			
			BODY {
				margin: 0px 0px 0px 0px;
				color : #333333;
			
				font-size: 9pt;
			}
			
			INPUT, TEXTAREA, SELECT {
				z-index : -3;
			}
			
			a {
				color: #ff6600;
				text-decoration: none;
				cursor: hand;
			}
			
			a:hover {
				color : #30569D;
				text-decoration : underline;
			}
			
			a:active {
				color : #FF9900;
				text-decoration : underline;
			}
			
			td {
				color : #333333;
				font-size : 9pt;
			}
			
			table
			{
				word-wrap: break-word;
				word-break: break-all;
			}
			
			table.menubar {
				width: 100%;
			}
			
			/* standard list style table */
			
			table.adminlist {
				background-color: #ffffff;
				border: 1px solid #CCCCCC;
				border-right: none;
			}
			
			table.adminlist th {
				font: 9pt;
				font-weight:bolder;
				height: 25px;
				background: url(../images/content_bg.png);
				background-repeat: repeat;
				text-align: center;
			}
			
			table.adminlist td {
				border-bottom: 1px solid #e5e5e5;
				border-right: 1px solid #e5e5e5;
				
				font-size: 9pt;
			}
			
			/* standard form style table */
			table.adminform {
				/*background-color: #FCF1DA;*/
				background-color: #f5f5f5;
				border: solid 1px #d5d5d5;
			}
			
			table.adminform th {
				font: 9pt ;
				font-weight:bolder;
				border-bottom: dashed 1px #CCCCCC;
				text-align: center;
				height: 25px;
				background: url(../images/content_bg.png);
				background-repeat: repeat;
			}
			
			table.adminform td {
				border-bottom: 1px solid #e5e5e5;
			/*	border-right: 1px solid #e5e5e5;*/
				
				font-size: 9pt;
			}
			
			table.operate
			{
				border: 0px;
			}
			
			table.operate td
			{
				border:0px;
				text-align:center;
			}
			
			table.normaltable
			{
				border:none; !important
			}
			
			table.normaltable  td {
				border:none; !important
			}
			
			form {
				margin: 0px 0px 0px 0px;
			}
			
			INPUT, TEXTAREA {
				BORDER-TOP-WIDTH: 1px; 
				PADDING-RIGHT: 1px; 
				PADDING-LEFT: 1px; 
				BORDER-LEFT-WIDTH: 1px; 
				FONT-SIZE: 9pt; 
				BORDER-LEFT-COLOR: #cccccc; 
				BORDER-BOTTOM-WIDTH: 1px; 
				BORDER-BOTTOM-COLOR: #cccccc; 
				PADDING-BOTTOM: 1px; 
				BORDER-TOP-COLOR: #cccccc; 
				PADDING-TOP: 1px; 
				BORDER-RIGHT-WIDTH: 1px; 
				BORDER-RIGHT-COLOR: #cccccc
			}
			
			select {
				font: 9pt 
			}
			
			
			.menubackgr {
				border: 1px solid #CCCCCC;
				border-bottom: none;
				background-image: url(../images/content_bg.png);
				background-repeat: repeat-x;
				background-position: left top;
			}
			
			.adminheader {
				color : #ff6600;
				font-size : 24px;
			}
			
			.list_operater {
				background: #FFFFFF
			}
			
			.btn_image
			{
				cursor: hand;
				border: 0px;
			}
			
			.highlight_row
			{
				background-color: #FFFFEF;
				cursor: hand;
			}
			.highlight_row2
			{
				background-color: #F7FFEF;
				cursor: hand;
			}
			
			.menudottedline {
				border-bottom: 1px solid #cccccc;
				border-top: 1px solid #ffffff;
				background-color: #F1F3F5;
			}
			
			.main {
				border: 1px solid #d5d5d5;
				width: 98%;
			}
			
			.menubackgr {
				background: #F1F3F5;
				border-bottom: 1px solid #cccccc;
			}
			
			.toolbar {
				background: #F1F3F5;
				border: 1px solid #FFFFFF;
				border-bottom: none;
			}
			
			.position_bar {
				background: #F1F3F5;
				border: 1px solid #FFFFFF;
				border-bottom: 1px solid #cccccc;
			}
			
			.quote {
				margin: 4px;
				border: 1px solid #cccccc;
				background-color: #E9ECEF;
				padding: 10px;
				font-size: 12px;
				color: #254D78;
			}
			
			.list_title
			{
				background-image: url(../images/content_bg.png);
				background-repeat: repeat-x;
				background-position: left top;
			}
			
			tr.list_title th
			{
				color: white;
			}
			
			tr.list_title a
			{
				color: white;
				text-decoration: underline;
			}
			
			tr.list_title a:visited
			{
				color: white;
			}
			
			tr.list_title a:hover
			{
				color: white;
			}
			
			tr.list_bottom td
			{
				color: white;
			}
			
			.list_content
			{
				background-color: #FFFFFF;
				cursor: hand;
			}
			
			.list_bottom
			{
				background-image: url(../images/content_bg.png);
				background-repeat: repeat-x;
				background-position: left top;
			}
			
			.info_title
			{
				background-image: url(../images/content_bg.png);
				background-repeat: repeat-x;
				background-position: left top;
			}
			
			.info_content
			{
				background: #FFFFFF;
			}
			
			.info_bottom
			{
				background-image: url(../images/content_bg.png);
				background-repeat: repeat-x;
				background-position: left top;
			}
			
			.module_title {
				font-size: 18px;
				color: #FF9933;
				font-weight: bold;
			}
		</style>
	</head>
	<body topmargin=0>
		<table width="100%"  border="0" cellpadding="0" cellspacing="0" class='normal'>
			<tr class='adminheader'>
				<td> <span class="module_title">{LANG_error}</span>		</td>
			</tr>
			<tr class='adminheader'>
				<td>
					<table width="100%" height="150"  border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="100">&nbsp;</td>
							<td>{Msg}<br>
								<table width="100%"  border="0" cellspacing="0" cellpadding="0" id=tblMaybe>
									<tr>
										<td height="25"><strong>{LANG_error_because}:</strong></td>
									</tr>
									<tr>
										<td><span id=maybe>{Maybe}</span></td>
									</tr>
									</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			</table>
		 <table width="100%"  border="0" cellspacing=0 cellpadding=5 class='adminform'>
		  <tr class='info_content'>
			<td >
				
			</td>
		  </tr>
		  <tr align="center" class='info_operate'>
			<td><a href="javascript:history.back(-1);">·µ»Ø</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="admincp.aspx" target=_top>·µ»ØÊ×Ò³</a></td>
		  </tr>
		</table>
		<script language='javascript'>
			var gotourl = '{Goto}';
			var delay = parseFloat('{Delay}');
			
			if(!maybe.innerText || maybe.innerText.length <= 0)
			{
				tblMaybe.style.display = 'none';
			}
			
			function gotoURL()
			{
				if(gotourl)
				{
					if(gotourl.substr(0, 11).toLowerCase() == 'javascript:') eval(gotourl);
					else location = gotourl;
				}
			}
			
			if(!isNaN(delay) && delay > 0)
			{
				setTimeout("gotoURL();", delay * 1000);
			}
		</script>
	</body>
</html>