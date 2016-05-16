<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE html>
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta name="description" content="南方基金人才招聘" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!-- Mobile Meta -->
<link rel="shortcut icon" href="../nimages/favicon.ico" />
<title>我的简历</title>

<script type="text/javascript">
	if (!window.applicationCache) {
		self.location = "validateHtml5.action";
	}
</script>

<link href="../ncss/bootstrap.css" rel="stylesheet" />
<link href="../ncss/font-awesome.css" rel="stylesheet" />
<link href="../ncss/style.css" rel="stylesheet" />
<link href="../ncss/blue.css" rel="stylesheet" />
<link href="../ncss/jquery.toastmessage.css" rel="stylesheet" />

<link rel="stylesheet" href="../ncss/ui.jqgrid.css" />
<link rel="stylesheet" href="../ncss/ui_datepicker.css" />
<style type="text/css">
label {
	line-height: 2;
}

#experience_info_form {
	margin: 0px;
}

#experience_info_form label.error {
	color: red;
	margin-left: 5px;
	font-size: 12px;
}

.form-control {
	display: inline;
	width: 66%;
}

#desp {
	height: 200px;
}

#company-error {
	float: right;
	margin-right: 107px;
}

.ui-jqgrid-bdiv {
	overflow: hidden !important;
}

.date-picker {
	width: 158px;
}

.ui-jqgrid tr.jqgrow td {
	white-space: normal !important;
	height: auto;
	vertical-align: middle;
	padding-top: 2px;
}

.ui-widget-overlay {
	background: rgba(0, 0, 0, 0.25);
	opacity: 1 !important;
	filter: alpha(opacity = 100) !important;
	z-index: 1039 !important;
}

.ui-datepicker-year {
	color: #222222;
}

.ui-datepicker-month {
	color: #222222;
}

.ui-datepicker {
	width: 15em;
	padding: .2em .2em 0;
	display: none;
	font-size: 1em;
}

.ui-datepicker .ui-datepicker-title select {
	font-size: 0.9em;
	margin: 1px 0;
}

#sdate-error {
	float: right;
	margin-right: 193px;
}
</style>
</head>
<script type="text/javascript" src="../njs/jquery.min.js"></script>
<script type="text/javascript"
	src="../njs/bootstrap.min.js"></script>

<body class="front">
	<div class="page-wrapper">
		<!-- header-top start -->
		<!-- ================ -->
		<div class="header-top">
			<div class="container">
				<div class="col-xs-2 col-sm-6"></div>
				<div class="col-xs-10 col-sm-6">

					<!-- header-top-second start -->
					<!-- ================ -->
					<div id="header-top-second" class="clearfix">

						<!-- header top dropdowns start -->
						<!-- ================ -->
						<div class="header-top-dropdown">
							<div class="btn-group dropdown" style="display: none" id="news">
								<button type="button" class="btn" onclick="newsClick();"
									id="blink">
									<i class="fa fa-user"></i> 新回复
								</button>
							</div>
							<div class="btn-group dropdown" style="display: none"
								id="welcome">
								<button type="button" class="btn"
									onclick="location.href='myRecruit.action';">
									<i class="fa fa-search"></i> 欢迎您， neu_tianhc@126.com
								</button>
							</div>
							<!-- <div class="btn-group dropdown" style="display:inline-block" id="welcome">
							<button type="button" class="btn" onclick="location.href='myRecruit.action';" >
							    <i class="fa fa-search"></i> 
							             欢迎您，
							    neu_tianhc@126.com</button>
						</div> -->
							<div class="btn-group dropdown">
								<button type="button" class="btn dropdown-toggle"
									onclick="location.href='logout.action'">
									<i class="fa fa-user"></i> 退出
								</button>
							</div>
							<div class="btn-group dropdown">
								<a class="btn" target="_blank"
									style="padding: 8px 10px; margin: 0; font-size: 12px; color: #999; text-align: center; min-width: 0; background-color: transparent;"
									href="http://www.nffund.com/"><i class="fa fa-home"></i>
									南方基金首页</a>
							</div>
						</div>
						<!--  header top dropdowns end -->

					</div>
					<!-- header-top-second end -->
				</div>
			</div>
		</div>
		<!-- header-top end -->

		<!-- header start (remove fixed class from header in order to disable fixed navigation mode) -->
		<!-- ================ -->
		<header class="header fixed clearfix">
			<div class="container">
				<div class="col-md-4">
					<!-- header-left start -->
					<!-- ================ -->
					<div class="header-left clearfix">

						<!-- logo -->
						<div class="logo">
							<a href="/nfjjRecruitSystem/"><img id="logo"
								src="../nimages/index_logo.jpg" alt="南方基金"></a>
						</div>

						<!-- name-and-slogan -->
						<div class="site-slogan">一切为了客户，做受人敬重的理财专家。</div>

					</div>
					<!-- header-left end -->
				</div>

				<div class="col-md-8">
					<!-- header-right start -->
					<!-- ================ -->
					<div class="header-right clearfix">

						<!-- main-navigation start -->
						<!-- ================ -->
						<div class="main-navigation animated">

							<!-- navbar start -->
							<!-- ================ -->
							<nav class="navbar navbar-default" role="navigation">
								<div class="container-fluid">

									<!-- Toggle get grouped for better mobile display -->
									<div class="navbar-header">
										<button type="button" class="navbar-toggle"
											data-toggle="collapse" data-target="#navbar-collapse-1">
											<span class="sr-only">Toggle navigation</span> <span
												class="icon-bar"></span> <span class="icon-bar"></span> <span
												class="icon-bar"></span>
										</button>
									</div>

									<input type="hidden" id="active_bar" value="personal">
									<!-- Collect the nav links, forms, and other content for toggling -->
									<div class="collapse navbar-collapse" id="navbar-collapse-1">
										<ul class="nav navbar-nav navbar-right">
											<li class="bar_li" id="home_bar"><a href="index.action">招聘首页</a></li>
											<li class="bar_li" id="forum_bar"><a
												href="http://www.nffund.com/jforum/" target="_blank">未来之星</a></li>
											<li class="bar_li" id="campus_bar"><a
												href="job_position.action?jobType=CAMPUS">校园招聘</a></li>
											<li class="bar_li" id="society_bar"><a
												href="job_position.action?jobType=SOCIETY">社会招聘</a></li>
											<li class="bar_li" id="personal_bar"><a
												href="myRecruit.action">我的应聘</a></li>
										</ul>
									</div>
								</div>
							</nav>
							<!-- navbar end -->

						</div>
						<!-- main-navigation end -->

					</div>
					<!-- header-right end -->

				</div>
			</div>
		</header>
		<!-- header end -->
		<script language="javascript">
			window.onload = function() {
				var readStatus = "";
				if (readStatus == 1) {
					document.getElementById("news").style.display = "inline-block";
					setInterval("changeColor()", 200);
				} else {
					document.getElementById("welcome").style.display = "inline-block";
				}
			};
			function changeColor() {
				var color = "#f00|#0f0|#00f|#880|#808|#088|yellow|green|blue|gray";
				color = color.split("|");
				document.getElementById("blink").style.color = color[parseInt(Math
						.random()
						* color.length)];
			}
			function newsClick() {
				location.href = "myQuestion.action";

			}
		</script>
		<!-- main-container start -->
		<!-- ================ -->
		<section class="main-container">
			<div class="container">
				<div class="row">
					<script type="text/javascript">
						$(function() {
							setActiveLeftBar();
						});

						function setActiveLeftBar() {
							$(".active_bar").removeClass("active");
							var left_active_bar = $("#left_bar").val();
							$("#my_" + left_active_bar).addClass("active");

							var status = parseInt("null");
							if (status & (1 << 0)) {
								$("#my_contact > a").css("color", "#FF3333");
							}
							if (status & (1 << 1)) {
								$("#my_education > a").css("color", "#FF3333");
							}
							if (status & (1 << 2)) {
								$("#my_experience > a").css("color", "#FF3333");
							}
							if (status & (1 << 3)) {
								$("#my_language > a").css("color", "#FF3333");
							}
							if (status & (1 << 4)) {
								$("#my_family > a").css("color", "#FF3333");
							}
							if (status & (1 << 5)) {
								$("#my_evaluation > a").css("color", "#FF3333");
							}
						}
						/*
						base -- 基本资料
						contact -- 联系方式
						education -- 教育经历
						intern -- 工作实习经验
						language -- 语言能力
						family -- 家庭
						evalution - 自我评价
						other -- 附加信息
						 */
					</script>


					<!-- sidebar start -->
					<aside class="col-md-2">
						<div class="sidebar">
							<div class="block clearfix">
								<h3 class="title">我的简历</h3>
								<div class="separator"></div>
								<input type="hidden" id="left_bar" value="experience">
								<nav>
									<ul class="nav nav-pills nav-stacked">
										<li class="active_bar" id="my_baseinfo"><a
											href="fillResume.action">基本资料</a></li>
										<li class="active_bar" id="my_contact"><a
											href="fillContact.action">联系方式</a></li>
										<li class="active_bar" id="my_education"><a
											href="fillEducation.action">教育经历</a></li>
										<li class="active_bar" id="my_experience"><a
											href="fillExperience.action">工作/实习经验</a></li>
										<li class="active_bar" id="my_language"><a
											href="fillLanguage.action">语言能力</a></li>
										<li class="active_bar" id="my_family"><a
											href="fillFamily.action">家庭成员信息</a></li>
										<li class="active_bar" id="my_evaluation"><a
											href="fillEvaluation.action">自我评价</a></li>
										<!-- <li class="active_bar" id="my_other"><a href="fillOther.action">附加信息</a></li> -->
									</ul>
								</nav>
							</div>
						</div>
					</aside>
					<!-- sidebar end -->
					<div class="progress" style="height: 30px; margin-top: 20px;">
						<div class="progress-bar progress-bar-info" role="progressbar"
							aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"
							style="min-width: 16%; width: 100%">
							<span class="sr-only">您的简历已完善100%的资料</span>
						</div>
					</div>
					<div class="col-lg-10" style="margin-bottom: 50px; padding: 0px;">
						<table id="grid-table" style="width: 100%;"></table>
					</div>

					<div class="col-lg-offset-3">
						<form method="post" id="experience_info_form"
							onsubmit="return false;">
							<input type="hidden" name="user_email" value="neu_tianhc@126.com">
							<input type="hidden" name="resumetype" value="CN"> <input
								type="hidden" name="oper" value="add"> <input
								type="hidden" name="eid" value="-1">
							<div class="form-group">
								<label class="col-md-2 control-label">时间<small
									class="text-default">*</small></label> <span style="margin-left: 15px">
									<input class="date-picker" id="sdate" placeholder="开始时间"
									type="text" data-date-format="yyyy-mm-dd" name="sdate" />
								</span> <span style="margin: 0 5px">到</span> <span> <input
									class="date-picker" id="edate" placeholder="结束时间，不填表示至今"
									type="text" data-date-format="yyyy-mm-dd" name="edate" />
								</span>
							</div>
							<div class="form-group">
								<label for="company" class="col-md-2 control-label">单位名称<small
									class="text-default">*</small></label>
								<div class="col-md-9" style="padding-bottom: 15px;">
									<input type="text" class="form-control" name="company"
										id="company">
								</div>
							</div>
							<div class="space"></div>
							<div class="form-group">
								<label for="industry" class="col-md-2 control-label">行业<small
									class="text-default">*</small></label>
								<div class="col-md-9">
									<select class="form-control" name="industry" id="industry">
										<option value="金融/投资/证券">金融/投资/证券</option>
										<option value="银行/保险/信托">银行/保险/信托</option>
										<option value="会计/审计/法律">会计/审计/法律</option>
										<option value="专业咨询服务">专业咨询服务</option>
										<option value="计算机/通信/电信">计算机/通信/电信</option>
										<option value="互联网/电子商务">互联网/电子商务</option>
										<option value="广告/媒体/宣传">广告/媒体/宣传</option>
										<option value="贸易/进出口">贸易/进出口</option>
										<option value="建筑/工程/房地产">建筑/工程/房地产</option>
										<option value="石油/化工">石油/化工</option>
										<option value="电力/水利">电力/水利</option>
										<option value="制造/矿产">制造/矿产</option>
										<option value="交通/运输/物流">交通/运输/物流</option>
										<option value="医疗/制药/卫生">医疗/制药/卫生</option>
										<option value="文化/体育/娱乐">文化/体育/娱乐</option>
										<option value="多元化业务集团">多元化业务集团</option>
										<option value="教育培训/学术科研">教育培训/学术科研</option>
										<option value="政府/非盈利机构">政府/非盈利机构</option>
										<option value="国际组织">国际组织</option>
										<option value="其他行业">其他行业</option>
									</select>
								</div>
							</div>
							<div class="space"></div>
							<div class="form-group">
								<label for="dept" class="col-md-2 control-label">部门<small
									class="text-default">*</small></label>
								<div class="col-md-9">
									<input type="text" class="form-control" name="dept" id="dept">
								</div>
							</div>
							<div class="space"></div>
							<div class="form-group">
								<label for="position" class="col-md-2 control-label">职位<small
									class="text-default">*</small></label>
								<div class="col-md-9">
									<input type="text" class="form-control" name="position"
										id="position">
								</div>
							</div>
							<div class="space"></div>
							<div class="form-group">
								<label for="desp" class="col-md-2 control-label">工作内容<small
									class="text-default">*</small></label>
								<div class="col-md-9">
									<textarea type="text" class="form-control" name="desp"
										id="desp"></textarea>
									<div style="color: gray;">
										请详细描述您的职责范围、工作任务以及取得的成绩等（<span id="leftCnt" style="color: red">0</span>/1000字）
									</div>
								</div>
							</div>
							<div class="space"></div>
							<!-- <div class="form-group">
				<label for="referee" class="col-md-2 control-label">证明人</label>
				<div class="col-md-9">
					姓名：<input type="text" class="form-control" name="referee_name" id="referee_name" style="width:159px;">
					联系电话：<input type="text" class="form-control" name="referee_phone" id="referee_phone" style="width:159px;">
				</div>
			</div>
			<div class="space"></div> -->
							<button class="btn btn-default radius" id="saveBtn">保存</button>
							<button class="btn btn-default radius" id="nextBtn">下一步</button>
						</form>
					</div>
				</div>
			</div>
		</section>

		<footer id="footer" style="right: 0px; left: 0px; bottom: 0px">
			<div class="footer">
				<div class="container">
					<div class="row">
						<div class="text-center" style="font-size: 11px;">
							<p style="margin-bottom: 10px !important;">
								<a href="http://www.nffund.com/" target="_blank">南方基金管理有限公司</a>&nbsp;版权所有&nbsp;&nbsp;粤ICP备05103745号
							</p>
							<p style="margin-bottom: 10px !important;">地址：深圳市福田中心区福华一路6号免税商务大厦22层，31-33层&nbsp;&nbsp;邮编：518048</p>
						</div>
					</div>
				</div>
			</div>
		</footer>

		<script type="text/javascript">
			var _hmt = _hmt || [];
			(function() {
				var hm = document.createElement("script");
				hm.src = "//hm.baidu.com/hm.js?a31ee59f81ee6daa5a8952145159315b";
				var s = document.getElementsByTagName("script")[0];
				s.parentNode.insertBefore(hm, s);
			})();
		</script>

	</div>

	<script type="text/javascript"
		src="../njs/jqGrid/jquery.jqGrid.src.js"></script>
	<script type="text/javascript"
		src="../njs/jqGrid/i18n/grid.locale-cn.js"></script>
	<script type="text/javascript" src="../njs/jquery-ui.1.11.3.js"></script>
	<script type="text/javascript">
		////////////////////////////////////////////////////////////////////////////////////////
		$(function() {

			function pickDate(cellvalue, options, cell) {
				setTimeout(function() {
					$(cell).find('input[type=text]').datepicker({
						format : 'yyyy-mm-dd',
						autoclose : true,
						endDate : "-1d",
						startDate : "-65y"
					});
				}, 0);
			}

			function serializeData(data) {
				var user_email = "neu_tianhc@126.com";
				var result = "resumetype=CN&user_email="
						+ encodeURIComponent(user_email);
				for ( var p in data) {
					result += "&" + p + "="
							+ encodeURIComponent($.jgrid.htmlDecode(data[p]));
				}
				var singleRow = jQuery("#grid-table").jqGrid('getRowData',
						data["id"]);
				return result + "&eid=" + singleRow["eid"];
			}

			var containerWidth = $("#grid-table").width() - 70;
			var grid_data = [ {
				"position" : "组长",
				"edate" : "2015-08-20",
				"company" : "东软集团沈阳分公司",
				"dept" : "实训部",
				"sdate" : "2015-06-01",
				"desp" : "工资管理系统开发",
				"industry" : "计算机/通信/电信",
				"eid" : 415391
			} ];
			$("#grid-table")
					.jqGrid(
							{
								drag : true,
								data : grid_data,
								datatype : "local",
								height : "auto",
								colNames : [ ' ', 'eid', '公司', '行业', '部门',
										'职位', '开始时间', '结束时间', '工作描述'/*, '证明人姓名', '证明人联系电话'*/],
								colModel : [
										{
											name : 'myac',
											index : '',
											width : 70,
											fixed : true,
											sortable : false,
											resize : false,
											formatter : 'actions',
											formatoptions : {
												keys : true,
												delOptions : {
													recreateForm : true
												},
											}
										},
										{
											name : 'eid',
											index : 'eid',
											width : 0,
											editable : false
										},
										{
											name : 'company',
											index : 'company',
											width : containerWidth / 7,
											editable : true,
											editoptions : {
												maxlength : "128"
											},
											editrules : {
												required : true
											}
										},
										{
											name : 'industry',
											index : 'industry',
											width : containerWidth / 7,
											editable : true,
											edittype : "select",
											editrules : {
												required : true
											},
											editoptions : {
												value : "金融/投资/证券:金融/投资/证券;银行/保险/信托:银行/保险/信托;会计/审计/法律:会计/审计/法律;专业咨询服务:专业咨询服务;计算机/通信/电信:计算机/通信/电信;互联网/电子商务:互联网/电子商务;广告/媒体/宣传:广告/媒体/宣传;贸易/进出口:贸易/进出口;建筑/工程/房地产:建筑/工程/房地产;石油/化工:石油/化工;电力/水利:电力/水利;制造/矿产:制造/矿产;交通/运输/物流:交通/运输/物流;医疗/制药/卫生:医疗/制药/卫生;文化/体育/娱乐:文化/体育/娱乐;多元化业务集团:多元化业务集团;教育培训/学术科研:教育培训/学术科研;政府/非盈利机构:政府/非盈利机构;国际组织:国际组织;其他行业:其他行业"
											}
										},
										{
											name : 'dept',
											index : 'dept',
											width : containerWidth / 7,
											editable : true,
											editoptions : {
												maxlength : "64"
											},
											editrules : {
												required : true
											}
										},
										{
											name : 'position',
											index : 'position',
											width : containerWidth / 7,
											editable : true,
											editoptions : {
												maxlength : "64"
											},
											editrules : {
												required : true
											}
										},
										{
											name : 'sdate',
											index : 'sdate',
											width : containerWidth / 7,
											editable : true,
											sorttype : "date",
											unformat : pickDate,
											editrules : {
												required : true,
												date : true
											}
										},
										{
											name : 'edate',
											index : 'edate',
											width : containerWidth / 7,
											editable : true,
											sorttype : "date",
											unformat : pickDate,
											editrules : {
												custom : true,
												custom_func : dateCheck
											}
										},
										{
											name : 'desp',
											index : 'desp',
											width : containerWidth / 7,
											editable : true,
											edittype : "textarea",
											editoptions : {
												rows : "6",
												cols : "50",
												maxlength : "1000"
											},
											editrules : {
												required : true
											},
											formatter : function(cellValue,
													options, rawObject) { // in
												if (typeof (cellValue) != "undefined") {
													return cellValue.replace(
															/\n/g, "<br>");
												}
												return "";
											},
											unformat : function(cellValue,
													options, rawObject) { // out
												return rawObject.innerText;
											}
										} ],
								editurl : "saveExperienceInfo.action",
								serializeRowData : serializeData,
								autoencode : true,
							}).hideCol("eid");

			$.fn.center = function() {
				var top = ($(window).height() - this.height()) / 2;
				var left = ($(window).width() - this.width()) / 2;
				var scrollTop = $(document).scrollTop();
				var scrollLeft = $(document).scrollLeft();
				return this.css({
					position : 'absolute',
					'top' : top + scrollTop,
					left : left + scrollLeft
				}).show();
			}

			$.jgrid.del.beforeShowForm = function() {
				$("#delmodgrid-table").center();
			}

			$.extend($.jgrid.del, {
				mtype : 'POST',
				serializeDelData : serializeData
			});

			$.datepicker.regional['zh-CN'] = {
				clearText : '清除',
				clearStatus : '清除已选日期',
				closeText : '关闭',
				closeStatus : '不改变当前选择',
				prevText : '<',
				prevStatus : '显示上月',
				prevBigText : '<<',   
			prevBigStatus: '显示上一年',   
			nextText: '>',
				nextStatus : '显示下月',
				nextBigText : '>>',
				nextBigStatus : '显示下一年',
				currentText : '今天',
				currentStatus : '显示本月',
				monthNames : [ '一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月',
						'九月', '十月', '十一月', '十二月' ],
				monthNamesShort : [ '一', '二', '三', '四', '五', '六', '七', '八',
						'九', '十', '十一', '十二' ],
				monthStatus : '选择月份',
				yearStatus : '选择年份',
				weekHeader : '周',
				weekStatus : '年内周次',
				dayNames : [ '星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六' ],
				dayNamesShort : [ '周日', '周一', '周二', '周三', '周四', '周五', '周六' ],
				dayNamesMin : [ '日', '一', '二', '三', '四', '五', '六' ],
				dayStatus : '设置 DD 为一周起始',
				dateStatus : '选择 m月 d日, DD',
				dateFormat : 'yy-mm-dd',
				firstDay : 1,
				initStatus : '请选择日期',
				showMonthAfterYear : true,
				changeMonth : true,
				changeYear : true,
				yearRange : "c-50:c"
			};

			$.datepicker.setDefaults($.datepicker.regional['zh-CN']);
			$('.date-picker').removeClass("hasDatepicker");
			$('.date-picker').datepicker();

			$("#experience_info_form").validate({
				rules : {
					sdate : {
						required : true,
					},
					company : {
						required : true,
						maxlength : 128
					},
					dept : {
						required : true,
						maxlength : 64
					},
					position : {
						required : true,
						maxlength : 64,
					},
					desp : {
						required : true,
						maxlength : 1000,
					}
				},
				messages : {
					sdate : {
						required : "请选择开始时间",
					},
					company : {
						required : "请填写单位名称",
						maxlength : "您填写的单位名称过长"
					},
					position : {
						required : "请填写职位名称",
						maxlength : "您填写的职位名称过长"
					},
					dept : {
						required : "请填写部门名称",
						maxlength : "您填写的部门名称过长"
					},
					desp : {
						required : "请填写工作内容",
						maxlength : "您填写的工作内容过长"
					}
				}
			});

			$("#desp").keyup(function() {
				var MAX_LEN = 1000;
				var curLength = $("#desp").val().length;
				if (curLength > MAX_LEN) {
					$("#desp").val($("#desp").val().substr(0, MAX_LEN));
					alert("您的输入已经超过字数限制！");
					curLength = MAX_LEN;
				}

				$("#leftCnt").text(curLength);
			});

			$("#saveBtn").click(function() {
				saveInfo(false);
				return false;
			});

			$("#nextBtn").click(function() {
				saveInfo(true);
				return false;
			});
		});

		function saveInfo(bNext) {
			if (bNext && !is_form_changed()) {
				location.href = "fillLanguage.action";
				return;
			}

			if (!$("#experience_info_form").valid()) {
				return;
			}

			if ($("#edate").val().length != 0
					&& $("#sdate").val().localeCompare($("#edate").val()) >= 0) {
				NFCommon.util.showTip("起始时间不能大于终止时间", 2000);
				return;
			}

			if ($("#grid-table").getGridParam("reccount") >= 5) {
				NFCommon.util.showTip("可添加的工作经历已超出限制", 2000);
				return;
			}

			var options = {
				url : "saveExperienceInfo.action",
				type : "post",
				success : function(data, statusText) {
					if (typeof (data) == "undefined") {
						NFCommon.util.showError(ERROR_MSG, 2000);
						return;
					}

					if (data.code == 'login') {
						resetFormValue();
						location.href = "tologin.action";
					} else if (data.code == 'success') {
						NFCommon.util.showSuccess(data.message, 2000);
						var rowData = {};
						rowData["eid"] = data.eid;
						rowData["position"] = $("#position").val();
						rowData["company"] = $("#company").val();
						rowData["dept"] = $("#dept").val();
						rowData["desp"] = $("#desp").val();
						rowData["sdate"] = $("#sdate").val();
						rowData["edate"] = $("#edate").val();
						rowData["industry"] = $("#industry").val();
						$("#grid-table").jqGrid("addRowData",
								$("#grid-table").getGridParam("records") + 1,
								rowData);
						$(':input', '#experience_info_form').not(
								':button, :submit, :reset, :hidden').val('')
								.removeAttr('checked').removeAttr('selected');

						resetFormValue();
						if (bNext) {
							location.href = "fillLanguage.action";
						} else {
							$("#my_" + $("#left_bar").val() + " > a").css(
									"color", "#3d78d8");
						}
					} else {
						NFCommon.util.showError(data.message, 2000);
					}
				},
				error : function() {
					NFCommon.util.showError(ERROR_MSG, 2000);
				},
				async : false,
				dataType : "json",
				resetForm : true,
				timeout : 15000,
				data : $("#experience_info_form").serialize(),
				autoencode : true,
			};
			$.ajax(options);
		}

		function is_form_changed() {
			var is_changed = false;

			$("#experience_info_form input").each(function() {
				var _v = $(this).attr('_value');
				if (typeof (_v) == 'undefined') {
					_v = '';
				}

				if (_v != $(this).val()) {
					is_changed = true;
				}
			});
			$("#experience_info_form textarea").each(function() {
				var _v = $(this).attr('_value');
				if (typeof (_v) == 'undefined') {
					_v = '';
				}

				if (_v != $(this).val()) {
					is_changed = true;
				}
			});

			return is_changed;
		}

		function resetFormValue() {
			$("#experience_info_form input").each(function() {
				$(this).attr('_value', $(this).val());
			});
			$("#experience_info_form textarea").each(function() {
				$(this).attr('_value', $(this).val());
			});
		}

		$(document).ready(resetFormValue);

		window.onbeforeunload = function() {
			if (is_form_changed()) {
				return "您当前的编辑内容没有保存，确定离开吗？";
			}
		}

		function dateCompare(sdate, edate) {
			var arr = sdate.split("-");
			var starttime = new Date(arr[0], arr[1], arr[2]);
			var starttimes = starttime.getTime();
			var arrs = edate.split("-");
			var lktime = new Date(arrs[0], arrs[1], arrs[2]);
			var lktimes = lktime.getTime();

			if (starttimes >= lktimes) {
				return false;
			} else {
				return true;
			}
		}

		function dateCheck(value, colname) {
			var row = $('#grid-table').jqGrid('getGridParam', 'selrow');
			var sdate = $("#" + row + "_sdate").val();
			if (!dateCompare(sdate, value)) {
				return [ false, "开始时间不能大于结束时间" ];
			} else {
				return [ true, "" ];
			}
		}
	</script>
	<script type="text/javascript" src="../njs/jquery.validate.js"></script>
	<script type="text/javascript" src="../njs/jquery.toastmessage.js"></script>
	<script type="text/javascript">
		$(function() {
			/*
			active_bar: 
			home -- 招聘首页
			school -- 校园招聘
			society -- 社会招聘
			notice -- 重要公告
			personal -- 我的应聘
			 */
			$(".bar_li").removeClass("active");
			var active_bar = $("#active_bar").val();
			$("#" + active_bar + "_bar").addClass("active");
		});
	</script>
</body>
</html>