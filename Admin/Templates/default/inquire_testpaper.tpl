<!DOCTYPE html>
<html>
<head>
  <meta charset="gb2312">
  <title>��¹����ѧϰ��ѯϵͳ</title>
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
        <div class="child"><span>{StuName}</span><span>{StuSex}</span><span>{StuAge}��</span></div>
        <div class="school"><span>{School}</span><span>{StuGrade}�꼶</span></div>
      </div>
      <div class="action"><a class="btn" href="admincp.aspx?mod=pub&act=desk">���²�ѯ</a></div>
    </div>
  </div>
  <ul class="other_info">
    <li><p><em>ѧ��</em><span>{StuNO}</span></p></li>
    <li><p><em>������</em><span>{TeacherName}</span></p></li>
    <li><p><em>״̬</em><span class="{ClassState_Class}">{ClassState}</span></p></li>
    <!--�������С�״̬ʹ����ʽ class="on"�����ѵ��ڡ�״̬ʹ����ʽ class="off"��-->
  </ul>
	<dl class="result">
    <dt>�Ծ��ѯ</dt>
	{PaperList}
  </dl>
  <div class="floor">Copyright ? 2016 BAILU SCHOOL All Rights Reserved.</div>
</div>

</body>
</html>