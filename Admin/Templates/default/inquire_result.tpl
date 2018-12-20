<!DOCTYPE html>
<html>
<head>
  <meta charset="gb2312">
  <title>白鹿教育学习查询系统</title>
  <meta name="KeyWords" content="">
  <meta name="Description" content="">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="format-detection" content="telephone=no">
  <!-- artDialog-6.0 -->
  <link href="js/artDialog6.0/ui-dialog.css" rel="stylesheet" type="text/css"/>
  
  <link rel="stylesheet" href="css/base.css">
  <link rel="stylesheet" href="css/main.css">
</head>
<body>
<div class="wrap">
  <div class="header">
    <div class="studentCard">
      <div class="info">
        <div class="child"><span>{StuName}</span><span>{StuSex}</span><span>{StuAge}岁</span></div>
        <div class="school"><span>{School}</span><span>{StuGrade}年级</span></div>
      </div>
      <div class="action"><a class="btn" href="admincp.aspx?mod=pub&act=desk">重新查询</a></div>
    </div>
  </div>
  <ul class="other_info">
    <li><p><em>学号</em><span>{StuNO}</span></p></li>
    <li><p><em>班主任</em><span>{TeacherName}</span></p></li>
    <li><p><em>状态</em><span class="{ClassState_Class}">{ClassState}</span></p></li>
    <!--“晚托中”状态使用样式 class="on"，“已到期”状态使用样式 class="off"。-->
  </ul>
  <dl class="result">
    <dt>{QueryDateTime}</dt>
    <dd>
      <div class="title"><span>晚托时间</span></div>
      <div class="item"><p>{TotalDays}天</p></div>
    </dd>
    <dd>
      <div class="title"><span>剩余时间</span></div>
      <div class="item"><p>{LeavingDays}天</p></div>
    </dd>
    <dd{HideComment}>
      <div class="title"><span>本周评语</span></div>
      <div class="item"><p>{ThisWeekComment}</p></div>
    </dd>
    <dd{HideComment}>
      <div class="title"><span>上周评语</span></div>
      <div class="item"><p>{LastWeekComment}</p></div>
    </dd>
    <dd class="weakness">
      <div class="title"><span>新增薄弱知识点</span></div>
      <div class="cruces">
		{weakness}
      </div>
    </dd>
    <dd class="gotNew">
      <div class="title"><span>新掌握的知识点</span></div>
      <div class="cruces">
        {gotNew}
      </div>
    </dd>
  </dl>
  <div class="floor">Copyright ? 2016 BAILU SCHOOL All Rights Reserved.</div>
</div>
<!--通用遮罩-->
<div class="veilBlock veilZ-1 veilHide"></div>
<script src="js/jquery-2.1.3.min.js"></script>
<script src="js/artDialog6.0/dialog-min.js"></script>
<script>
$(document).ready(function(){
	//绑定知识点触摸弹出详情的动作
	$('dl.result>dd>div.cruces>span').on('click', function () {
		var txt = $(this).text();
		var kd = $(this).attr("kd");
		var detail = $(this).attr("detail");
		var elem ='<div class=\"crucesDetail\" id=\"CrucesDetail\">'
			 //知识点介绍
			 +'  <div class=\"intor\">'
			 +'    <h2>'+txt+'</h2>'//更据实际知识点获取数据
			 +'    <p>'+kd+'</p>'//更据实际知识点获取数据
			 +'  </div>'
				 //<div class="opinion">容器为知识点掌握情况，若无情况描述，该容器可直接删除。
			 +'  <div class=\"opinion\">'
			 +'    <h2>知识点掌握情况</h2>'
			 +'    <p>'+detail+'</p>'//更据数据库实际情况获取数据
			 +'  </div>'
			 +'</div>';
		var showCD = dialog({
			title: false,
			content: elem,//显示的内容请自行通过数据库载入，这里只作为样式示范。
			quickClose: true,
			fixed: true,
			onshow: function () {
				$("body>div.veilBlock").removeClass("veilZ-1").removeClass("veilHide");
				$("body>div.ui-popup").next().css("cursor", "pointer");
			},
			onclose: function () {
				$("body>div.veilBlock").addClass("veilHide");
				setTimeout('$("body>div.veilBlock").addClass("veilZ-1")',400);
			}
		});
		showCD.show();
	});	
});
</script>
</body>
</html>