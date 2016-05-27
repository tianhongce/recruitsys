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
<link rel="shortcut icon" href="frontjsp/assets/images/favicon.ico" />
<title>我的简历</title>

<script type="text/javascript">
	if (!window.applicationCache) {
		self.location = "validateHtml5.action";
	}
</script>

<link href="frontjsp/assets/css/bootstrap.css" rel="stylesheet" />
<link href="frontjsp/assets/css/font-awesome.css" rel="stylesheet" />
<link href="frontjsp/assets/css/style.css" rel="stylesheet" />
<link href="frontjsp/assets/css/blue.css" rel="stylesheet" />
<link href="frontjsp/assets/css/jquery.toastmessage.css" rel="stylesheet" />

<link rel="stylesheet" href="frontjsp/assets/css/ui.jqgrid.css" />
<style type="text/css">
label {
	line-height: 2;
}

#language_info_form {
	margin: 0px;
}

#language_info_form label.error {
	color: red;
	margin-left: 5px;
	font-size: 12px;
}

.form-control {
	display: inline;
	width: 50%;
}

#DelError {
	display: none !important;
}

.form-group .col-md-9 {
	padding-bottom: 30px;
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
								<input type="hidden" id="left_bar" value="language">
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
					<div class="col-lg-10" style="margin-bottom: 50px; padding: 0px;">
						<table id="grid-table" style="width: 100%;"></table>
					</div>

					<div class="col-lg-offset-3">
						<form method="post" id="language_info_form"
							onsubmit="return false;">
							<input type="hidden" name="user_email" value="neu_tianhc@126.com">
							<input type="hidden" name="userid" value="1">
							<input type="hidden" name="resumetype" value="CN"> <input
								type="hidden" name="langid" value="-1"> <input
								type="hidden" name="oper" value="add">
							<div class="form-group">
								<label for="lang" class="col-md-2 control-label">语言<small
									class="text-default">*</small></label>
								<div class="col-md-9">
									<select class="form-control" name="lang" id="lang">
										<option value="">请选择</option>
										<option value="英语">英语</option>
										<option value="日语">日语</option>
										<option value="俄语">俄语</option>
										<option value="阿拉伯语">阿拉伯语</option>
										<option value="法语">法语</option>
										<option value="德语">德语</option>
										<option value="西班牙语">西班牙语</option>
										<option value="葡萄牙语">葡萄牙语</option>
										<option value="意大利语">意大利语</option>
										<option value="韩语/朝鲜语">韩语/朝鲜语</option>
										<option value="普通话">普通话</option>
										<option value="粤语">粤语</option>
										<option value="闽南语">闽南语</option>
										<option value="上海话">上海话</option>
										<option value="其它">其它</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="degree" class="col-md-2 control-label">熟练程度<small
									class="text-default">*</small></label>
								<div class="col-md-9">
									<select class="form-control" name="degree" id="degree">
										<option value="">请选择</option>
										<option value="一般">一般</option>
										<option value="良好">良好</option>
										<option value="熟练">熟练</option>
										<option value="精通">精通</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="subject" class="col-md-2 control-label">考试项目</label>
								<div class="col-md-9">
									<input type="text" class="form-control" name="subject"
										id="subject">
								</div>
							</div>
							<div class="form-group">
								<label for="grade" class="col-md-2 control-label">考试成绩</label>
								<div class="col-md-9">
									<input type="text" class="form-control" name="grade" id="grade">
								</div>
							</div>
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
								<a href="http://www.nffund.com/" target="_blank">管理有限公司</a>&nbsp;版权所有&nbsp;&nbsp;粤ICP备05103745号
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
		src="frontjsp/assets/js/jqGrid/jquery.jqGrid.src.js"></script>
	<script type="text/javascript"
		src="frontjsp/assets/js/jqGrid/i18n/grid.locale-cn.js"></script>

	<script type="text/javascript">
		////////////////////////////////////////////////////////////////////////////////////////
		$(function() {

			function serializeData(data) {
				var user_email = "neu_tianhc@126.com";
				var result = "resumetype=CN&user_email="
						+ encodeURIComponent(user_email);
				for ( var p in data) {
					if (typeof (data[p]) != "undefined") {
						result += "&" + p + "=" + encodeURIComponent(data[p]);
					}
				}
				var singleRow = jQuery("#grid-table").jqGrid('getRowData',
						data["id"]);
				return result + "&langid=" + singleRow["langid"];
			}

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
				"degree" : "熟练",
				"langid" : 202361,
				"subject" : "CET-6",
				"grade" : "434",
				"lang" : "英语"
			} ];
			$("#grid-table")
					.jqGrid(
							{
								data : grid_data,
								datatype : "local",
								height : "auto",
								colNames : [ ' ', 'langid', '语言', '掌握程度',
										'考试项目', '考试成绩' ],
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
											name : 'langid',
											index : 'langid',
											width : 0,
											editable : false
										},
										{
											name : 'lang',
											index : 'lang',
											editable : true,
											width : containerWidth / 4,
											edittype : "select",
											editrules : {
												required : true
											},
											editoptions : {
												value : "英语:英语;日语:日语;俄语:俄语;阿拉伯语:阿拉伯语;法语:法语;德语:德语;西班牙语:西班牙语;意大利语:意大利语;韩语/朝鲜语:韩语/朝鲜语;普通话:普通话;粤语:粤语;闽南语:闽南语;上海话:上海话;其它:其它"
											}
										},
										{
											name : 'degree',
											index : 'degree',
											width : containerWidth / 4,
											editable : true,
											edittype : "select",
											editrules : {
												required : true
											},
											editoptions : {
												value : "一般:一般;良好:良好;熟练:熟练;精通:精通"
											}
										}, {
											name : 'subject',
											index : 'subject',
											width : containerWidth / 4,
											editable : true,
											editrules : {
												required : false
											},
											editoptions : {
												maxlength : "64"
											}
										}, {
											name : 'grade',
											index : 'grade',
											width : containerWidth / 4,
											editable : true,
											editrules : {
												required : false
											},
											editoptions : {
												maxlength : "64"
											}
										}, ],
								editurl : "saveLanguageInfo.do",
								serializeRowData : serializeData
							}).hideCol("langid");

			$.extend($.jgrid.del, {
				mtype : 'POST',
				serializeDelData : serializeData
			});

			$("#saveBtn").click(function() {
				saveInfo(false);
				return false;
			});

			$("#nextBtn").click(function() {
				saveInfo(true);
				return false;
			});

			$("#language_info_form").validate({
				rules : {
					grade : {
						maxlength : 64
					},
					subject : {
						maxlength : 64
					}
				},
				messages : {
					grade : {
						maxlength : "您输入的考试成绩内容过长"
					},
					subject : {
						maxlength : "您输入的考试项目名称过长"
					}
				}
			});
		});

		function saveInfo(bNext) {
			if (bNext && !is_form_changed()) {
				location.href = "fillExperience.do";
				return;
			}

			if (!$("#language_info_form").valid()) {
				return;
			}

			for (var index = 1; index <= $("#grid-table").getGridParam(
					"reccount"); ++index) {
				var row = $("#grid-table").jqGrid("getRowData", index);
				if (row["lang"] == $("#lang").val()) {
					NFCommon.util.showTip("您已添加过该语言能力", 2000);
					return;
				}
			}

			if ($("#grid-table").getGridParam("reccount") >= 5) {
				NFCommon.util.showTip("可添加的语言能力已超出限制", 2000);
				return;
			}

			var options = {
				url : "saveLanguageInfo.do",
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
						rowData["langid"] = data.id;
						rowData["lang"] = $("#lang").find("option:selected")
								.val();
						rowData["degree"] = $("#degree")
								.find("option:selected").val();
						rowData["subject"] = $("#subject").val();
						rowData["grade"] = $("#grade").val();
						$("#grid-table").jqGrid("addRowData",
								$("#grid-table").getGridParam("records") + 1,
								rowData);
						$("#subject").val("");
						$("#grade").val("");

						resetFormValue();
						if (bNext) {
							location.href = "fillFamily.action";
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
				data : $("#language_info_form").serialize()
			};
			$.ajax(options);
		}

		function is_form_changed() {
			var is_changed = false;

			$("#language_info_form input,select").each(function() {
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
			$("#language_info_form input,select").each(function() {
				$(this).attr('_value', $(this).val());
			});
		}

		$(document).ready(resetFormValue);
		window.onbeforeunload = function() {
			if (is_form_changed()) {
				return "您当前的编辑内容没有保存，确定离开吗？";
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