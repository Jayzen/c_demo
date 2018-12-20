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
  <script src="Admin/js/jquery-1.10.2.min.js"></script>
  <link rel="stylesheet" href="css/base.css">
  <link rel="stylesheet" href="css/main.css">
  <script src="Admin/js/lightbox.js"></script>
<link rel="stylesheet" href="Admin/Templates/default/css/lightbox.min.css">
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
    <dt>试卷查询</dt>
	{PaperList}
  </dl>
  <div class="floor">Copyright ? 2016 BAILU SCHOOL All Rights Reserved.</div>
</div>

</body>
</html>