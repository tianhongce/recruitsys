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
<base href="<%=basePath%>"></base>
<meta charset="utf-8">
<meta name="description" content="人才招聘" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!-- Mobile Meta -->
<link rel="shortcut icon" href="assets/images/favicon.ico" />
<title>我的简历</title>

<script type="text/javascript">
	if (!window.applicationCache) {
		self.location = "validateHtml5.do";
	}
</script>

<link href="frontjsp/assets/css/bootstrap.css" rel="stylesheet" />
<link href="frontjsp/assets/css/font-awesome.css" rel="stylesheet" />
<link href="frontjsp/assets/css/style.css" rel="stylesheet" />
<link href="frontjsp/assets/css/blue.css" rel="stylesheet" />
<link href="frontjsp/assets/css/jquery.toastmessage.css" rel="stylesheet" />

<link rel="stylesheet" href="frontjsp/assets/css/ui.jqgrid.css" />
<link rel="stylesheet" href="frontjsp/assets/css/ui_datepicker.css" />
<style type="text/css">
label {
	line-height: 2;
}

#education_info_form {
	margin: 0px;
}

#education_info_form label.error {
	color: red;
	margin-left: 5px;
	font-size: 12px;
}

.form-control {
	display: inline;
	width: 67%;
}

#desc {
	height: 200px;
}

.date-picker {
	width: 158px;
}

#sdate-error {
	float: right;
	margin-right: 193px;
}
</style>
</head>
<script type="text/javascript" src="frontjsp/assets/js/jquery.min.js"></script>
<script type="text/javascript"
	src="frontjsp/assets/js/bootstrap.min.js"></script>

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
									onclick="location.href='myInfo.do';">
									<i class="fa fa-search"></i> ${user.username }
								</button>
							</div>
							<div class="btn-group dropdown">
								<button type="button" class="btn dropdown-toggle"
									onclick="location.href='logout.do'">
									<i class="fa fa-user"></i> 退出
								</button>
							</div>
							<div class="btn-group dropdown">
								<!-- <a class="btn" target="_blank"
									style="padding: 8px 10px; margin: 0; font-size: 12px; color: #999; text-align: center; min-width: 0; background-color: transparent;"
									href="index.jsp"><i class="fa fa-home"></i> 首页</a> -->
									<button type="button" class="btn dropdown-toggle"
									onclick="location.href='index.jsp'">
									<i class="fa fa-home"></i> 首页
								</button>
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
							<a href="index.jsp"><img id="logo"
								src="frontjsp/assets/images/index_logo.jpg" alt=""></a>
						</div>

						<!-- name-and-slogan -->
						<div class="site-slogan"></div>

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

									<input type="hidden" id="active_bar" value="campus">
									<!-- Collect the nav links, forms, and other content for toggling -->
									<div class="collapse navbar-collapse" id="navbar-collapse-1">
										<ul class="nav navbar-nav navbar-right">
											<li class="bar_li" id="home_bar"><a href="index.jsp">招聘首页</a></li>
											<li class="bar_li" id="society_bar"><a
												href="frontjsp/poslist.do">招聘岗位</a></li>
											<li class="bar_li" id="personal_bar"><a
												href="myInfo.do">我的应聘</a></li>
											<li class="bar_li" id="personal_bar"></li>

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
				location.href = "myQuestion.do";

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
								<input type="hidden" id="left_bar" value="education">
								<nav>
									<ul class="nav nav-pills nav-stacked">
										<li class="active_bar" id="my_baseinfo"><a
											href="fillResume.do">基本资料</a></li>
										<li class="active_bar" id="my_education"><a
											href="fillEducation.do">教育经历</a></li>
										<li class="active_bar" id="my_experience"><a
											href="fillExperience.do">工作/实习经验</a></li>
										<li class="active_bar" id="my_language"><a
											href="fillLanguage.do">语言能力</a></li>
										<li class="active_bar" id="my_evaluation"><a
											href="fillEvaluation.do">自我评价</a></li>
										<!-- <li class="active_bar" id="my_other"><a href="fillOther.do">附加信息</a></li> -->
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
					<div class="col-lg-10" style="padding: 0px;">
						<table id="grid-table" style="width: 100%"></table>
					</div>
					<div class="col-lg-offset-2"
						style="color: gray; font-size: 12px; margin-bottom: 50px">
						注：请从最高学历开始填写</div>

					<div class="col-lg-offset-3">
						<form method="post" id="education_info_form"
							onsubmit="return false;">
							<input type="hidden" name="userid" value="1">
							<input type="hidden" name="user_email" value="neu_tianhc@126.com">
							<input type="hidden" name="resumetype" value="CN">
							 
							<input
								type="hidden" name="oper" value="add"> <input
								type="hidden" name="eid" value="-1">
							<div class="form-group">
								<label class="col-md-2 control-label">时间<small
									class="text-default">*</small></label> <span style="margin-left: 15px">
									<input class="date-picker" id="sdate" placeholder="开始时间"
									type="text" data-date-format="yyyy-mm-dd" name="sdate" />
								</span> <span style="margin: 0 5px 0 5px">到</span> <span> <input
									class="date-picker" id="edate" placeholder="结束时间，不填表示至今"
									type="text" data-date-format="yyyy-mm-dd" name="edate" />
								</span>
							</div>
							<div class="form-group">
								<label for="school" class="col-md-2 control-label">学校<small
									class="text-default">*</small></label>
								<div class="col-md-9">
									<input type="text" class="form-control" name="school"
										id="school">
								</div>
							</div>
							<div class="space" style="padding-bottom: 30px"></div>
							<div class="form-group">
								<label for="major" class="col-md-2 control-label">专业<small
									class="text-default">*</small></label>
								<div class="col-md-9">
									<input type="text" class="form-control" name="major" id="major">
								</div>
							</div>
							<div class="space"></div>
							<div class="form-group">
								<label for="degree" class="col-md-2 control-label">学历<small
									class="text-default">*</small></label>
								<div class="col-md-9">
									<select class="form-control" name="degree" id="degree">
										<option value="" >请选择</option>
										<option value="学士">学士</option>
										<option value="硕士">硕士</option>
										<option value="博士">博士</option>
										<option value="双学位">双学位</option>
										<option value="其他">其他</option>
									</select>
								</div>
							</div>
							<div class="space"></div>
							<div class="form-group">
								<label for="type" class="col-md-2 control-label">教育类型<small
									class="text-default">*</small></label>
								<div class="col-md-9">
									<select class="form-control" name="type" id="type">
										<option value="" >请选择</option>
										<option value="全日制">全日制</option>
										<option value="非全日制">非全日制</option>
									</select>
								</div>
							</div>
							<div class="space"></div>
							<div class="form-group">
								<label for="desc" class="col-md-2 control-label">专业描述</label>
								<div class="col-md-9">
									<textarea type="text" class="form-control" name="desc"
										id="desc"></textarea>
									<div style="color: gray;">
										填写您所学的专业包括什么课程，您的毕业设计等（<span id="leftCnt" style="color: red">0</span>/1000字）
									</div>
								</div>
							</div>
							<div class="space"></div>
							<!-- <div class="form-group">
				<label for="oversea" class="col-md-2 control-label">海外学习经历</label>
				<div class="col-md-9">
					<input name="oversea" class="form-control" type="checkbox" />
				</div>"
			</div> -->
							<div class="space"></div>
							<div class="space"></div>
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
								<a href="index.jsp/" target="_blank">********有限公司</a>&nbsp;版权所有&nbsp;&nbsp;*********
							</p>
							<p style="margin-bottom: 10px !important;">地址：************************，&nbsp;&nbsp;邮编：000000</p>
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
		src="frontjsp/assets/js/jqGrid/jquery.jqGrid.src.js"></script>
	<script type="text/javascript"
		src="frontjsp/assets/js/jqGrid/i18n/grid.locale-cn.js"></script>
	<script type="text/javascript" src="frontjsp/assets/js/jquery-ui.1.11.3.js"></script>

	<script type="text/javascript">
		////////////////////////////////////////////////////////////////////////////////////////
		var degreeHash = {
			"学士" : "学士",
			"硕士" : "硕士",
			"博士" : "博士",
			"其他" : "其他",
			"双学位" : "双学位"
		};
		var typeHash = {
			"全日制" : "全日制",
			"非全日制" : "非全日制"
		};

		$(function() {

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

			var editDegreeValue = '';
			for (k in degreeHash)
				editDegreeValue += ';' + k + ':' + degreeHash[k];
			editDegreeValue = editDegreeValue.substring(1);

			var editTypeValue = '';
			for (k in typeHash)
				editTypeValue += ';' + k + ':' + typeHash[k];
			editTypeValue = editTypeValue.substring(1);

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

			var containerWidth = $("#grid-table").width() - 70;
			var grid_data = [ {
				"degree" : "BACHELOR",
				"school" : "东北大学",
				"edate" : "",
				"sdate" : "2012-08-21",
				"desc" : "专业课程：C语言程序设计、C++程序设计、java语言程序设计、软件工程、计算机网络、计算机操作系统、计算机组成原理、面向对象程序设计、数据库概论、通信原理",
				"type" : "FULLTIME",
				"eid" : 361857,
				"major" : "软件工程"
			} ];
			$("#grid-table").jqGrid(
					{
						drag : true,
						data : grid_data,
						datatype : "local",
						height : "auto",
						colNames : [ ' ', 'eid', '学校', '专业', '学历', '开始时间',
								'结束时间', '教育类型', '专业描述' ],
						colModel : [
								{
									name : 'myac',
									index : '',
									width : 70,
									fixed : true,
									sortable : false,
									resize : false,
									formatter : 'dos',
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
									name : 'school',
									index : 'school',
									width : containerWidth / 7,
									editable : true,
									editoptions : {
										maxlength : "64",
										minlength : "4"
									},
									editrules : {
										required : true,
										custom : true,
										custom_func : schoolCheck
									}
								},
								{
									name : 'major',
									index : 'major',
									width : containerWidth / 7,
									editable : true,
									editoptions : {
										maxlength : "32",
										minlength : "2"
									},
									editrules : {
										required : true,
										custom : true,
										custom_func : majorCheck
									}
								},
								{
									name : 'degree',
									index : 'degree',
									width : containerWidth / 7,
									editable : true,
									edittype : "select",
									editoptions : {
										value : editDegreeValue
									},
									editrules : {
										required : true
									},
									formatter : "select"
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
									name : 'type',
									index : 'type',
									width : containerWidth / 7,
									editable : true,
									edittype : "select",
									editoptions : {
										value : editTypeValue
									},
									editrules : {
										required : true
									},
									formatter : "select"
								},
								{
									name : 'desc',
									index : 'desc',
									width : containerWidth / 7,
									editable : true,
									edittype : "textarea",
									editoptions : {
										rows : "6",
										cols : "50",
										maxlength : "1000"
									},
									formatter : function(cellValue, options,
											rawObject) { // in
										if (typeof (cellValue) != "undefined") {
											return cellValue.replace(/\n/g,
													"<br>");
										}
										return "";
									},
									unformat : function(cellValue, options,
											rawObject) { // out
										return rawObject.innerText;
									}
								} ],
						editurl : "saveEducationInfo.do",
						serializeRowData : serializeData,
						autoencode : true,
					}).hideCol("eid");

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
				yearRange : "c-50:c+30"
			};

			$.datepicker.setDefaults($.datepicker.regional['zh-CN']);
			$('.date-picker').removeClass("hasDatepicker");
			$('.date-picker').datepicker();

			$("#education_info_form").validate({
				rules : {
					sdate : {
						required : true,
					},
					school : {
						required : true,
						maxlength : 64,
						minlength : 4
					},
					major : {
						required : true,
						maxlength : 32,
						minlength : 2
					},
					desc : {
						maxlength : 1000,
					}
				},
				messages : {
					sdate : {
						required : "请选择开始时间",
					},
					school : {
						required : "请填写学校名称",
						maxlength : "您填写的学校名称过长",
						minlength : "请填写正确的学校名称"
					},
					major : {
						required : "请填写专业名称",
						maxlength : "您填写的专业名称过长",
						minlength : "请填写正确的专业名称"
					},
					desc : {
						maxlength : "您填写的专业描述过长",
					}
				}
			});

			$("#desc").keyup(function() {
				var MAX_LEN = 1000;
				var curLength = $("#desc").val().length;
				if (curLength > MAX_LEN) {
					$("#desc").val($("#desc").val().substr(0, MAX_LEN));
					curLength = MAX_LEN;
					alert("您的输入已经超过字数限制！");
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

		function saveInfo(bNext) {
			if (bNext && !is_form_changed()) {
				location.href = "fillExperience.do";
				return;
			}

			if (!$("#education_info_form").valid()) {
				return;
			}

			if ($("#edate").val().length != 0
					&& $("#sdate").val().localeCompare($("#edate").val()) >= 0) {
				NFCommon.util.showTip("起始时间不能大于终止时间", 2000);
				return;
			}

			if ($("#grid-table").getGridParam("reccount") >= 5) {
				NFCommon.util.showTip("可添加的教育经历已超出限制", 2000);
				return;
			}

			var options = {
				url : "saveEducationInfo.do",
				type : "post",
				success : function(data, statusText) {
					if (typeof (data) == "undefined") {
						NFCommon.util.showError(ERROR_MSG, 2000);
						return;
					}

					if (data.code == 'login') {
						resetFormValue();
						location.href = "tologin.do";
					} else if (data.code == 'success') {
						NFCommon.util.showSuccess(data.message, 2000);

						var rowData = {};
						rowData["eid"] = data.eid;
						rowData["school"] = $("#school").val();
						rowData["major"] = $("#major").val();
						rowData["degree"] = $("#degree").val();
						rowData["type"] = $("#type").val();
						rowData["desc"] = $("#desc").val();
						rowData["sdate"] = $("#sdate").val();
						rowData["edate"] = $("#edate").val();
						$("#grid-table").jqGrid("addRowData",
								$("#grid-table").getGridParam("records") + 1,
								rowData);
						$(':input', '#education_info_form').not(
								':button, :submit, :reset, :hidden').val('')
								.removeAttr('checked').removeAttr('selected');

						resetFormValue();
						if (bNext) {
							location.href = "fillExperience.do";
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
				data : $("#education_info_form").serialize()
			};
			$.ajax(options);
		}

		function is_form_changed() {
			var is_changed = false;

			$("#education_info_form input").each(function() {
				var _v = $(this).attr('_value');
				if (typeof (_v) == 'undefined') {
					_v = '';
				}

				if (_v != $(this).val()) {
					is_changed = true;
				}
			});

			$("#education_info_form textarea").each(function() {
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
			$("#education_info_form input").each(function() {
				$(this).attr('_value', $(this).val());
			});
			$("#education_info_form textarea").each(function() {
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

		function schoolCheck(value, colname) {
			var row = $('#grid-table').jqGrid('getGridParam', 'selrow');
			var length = $("#" + row + "_school").val().length;
			if (length < 4) {
				return [ false, "请填写正确的学校名称" ];
			} else if (length > 64) {
				return [ false, "您填写的学校名称过长" ];
			} else {
				return [ true, "" ];
			}
		}

		function majorCheck(value, colname) {
			var row = $('#grid-table').jqGrid('getGridParam', 'selrow');
			var length = $("#" + row + "_major").val().length;
			if (length < 2) {
				return [ false, "请填写正确的专业名称" ];
			} else if (length > 32) {
				return [ false, "您填写的专业名称过长" ];
			} else {
				return [ true, "" ];
			}
		}
	</script>
	<script type="text/javascript" src="frontjsp/assets/js/jquery.validate.js"></script>
	<script type="text/javascript" src="frontjsp/assets/js/jquery.toastmessage.js"></script>
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