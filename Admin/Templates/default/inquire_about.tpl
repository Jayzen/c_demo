<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
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
  
    <link href="css/mobiscroll.frame.css" rel="stylesheet" type="text/css" />
	<link href="css/mobiscroll.scroller.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" href="css/base.css">
  <link rel="stylesheet" href="css/main.css">
  
  <script src="js/jquery-2.1.3.min.js"></script>
	<script src="js/artDialog6.0/dialog-min.js"></script>
   <script src="js/mobiscroll.core.js"></script>
    <script src="js/mobiscroll.frame.js"></script>
    <script src="js/mobiscroll.scroller.js"></script>

    <script src="js/mobiscroll.util.datetime.js"></script>
    <script src="js/mobiscroll.datetimebase.js"></script>
    <script src="js/mobiscroll.datetime.js"></script>

    <script src="js/i18n/mobiscroll.i18n.zh.js"></script>

	<script>
	 $(function () {
		$('#dateBox').mobiscroll().date({
			theme: $.mobiscroll.defaults.theme, 
			mode: "scroller", 
			display: "bottom",
			lang: "zh", 
			minDate: new Date(2016, 1, 1),
            maxDate: new Date(2020, 12, 30)
		});
		$(".month li").on("click", function(){
			$(".month li").removeClass("on");
			$(this).addClass("on");
		});
		$(".week li").on("click", function(){
			$(".week li").removeClass("on");
			$(this).addClass("on");
		});
		$(".childSelect li").on("click", function(){
			$(".childSelect li").removeClass("on");
			$(this).addClass("on");
		});
	});
	function queryDate()
	{
		var stuNO = $(".childSelect").find(".on").attr("data-item");
		var date = $("#dateBox").val();
		location = "admincp.aspx?mod=pub&act=querydate&date=" + date + "&stuno=" + stuNO;
	}
	function queryWeek()
	{
		var stuNO = $(".childSelect").find(".on").attr("data-item");
		var week = $(".week").find(".on").attr("data-item");
		location = "admincp.aspx?mod=pub&act=queryweek&week=" + week + "&stuno=" + stuNO;
	}
	function queryMonth()
	{
		var stuNO = $(".childSelect").find(".on").attr("data-item");
		var month = $(".month").find(".on").attr("data-item");
		location = "admincp.aspx?mod=pub&act=querymonth&month=" + month + "&stuno=" + stuNO;
	}
	function queryTestPaper()
	{
		var stuNO = $(".childSelect").find(".on").attr("data-item");
		location = "admincp.aspx?mod=pub&act=querytestpaper&stuno=" + stuNO;
	}
	</script>
</head>
<body>
<div class="wrap">
  <div class="header">
    <div class="logo"><img src="images/logo.png"/></div>
  </div>
  <form>
    <div class="childSelect">
      <span>可查询学生</span>
      <ul>
        {StuInfo}
      </ul>
    </div>   
    <ul class="orderList date-inquire">
      <li><span>查询日期</span><p><input type="text" id="dateBox" value="{dateBox}" /></p></li>
      <li class="action"><a class="submitBtn" href='#' title="按日期查询" onClick="queryDate()">按日期查询</a></li>
    </ul>
    <div class="period-inquire">
      <div class="week">
        <ul>
          {WeekInfo}
        </ul>
      </div>
      <div class="action"><a class="submitBtn" href="#" onClick="queryWeek()" title="按周查询">按周查询</a></div>
    </div>
	 <div class="period-inquire">
      <div class="month">
        <ul>
          {MonthInfo}
        </ul>
      </div>
      <div class="action"><a class="submitBtn" href="#" onClick="queryMonth()" title="按月查询">按月查询</a></div>
	  <div class="action"><a class="submitBtn" href="#" onClick="queryTestPaper()" title="查试卷">查试卷</a></div>
    </div>
  </form>
  <div class="floor">Copyright @ 2016 BAILU SCHOOL All Rights Reserved.</div>
</div>
</body>
</html>