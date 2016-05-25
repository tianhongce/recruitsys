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

<style type="text/css">
label {
	line-height: 2;
}

#contactinfo_form {
	margin: 0px;
}

#contactinfo_form label.error {
	color: red;
	margin-left: 5px;
	font-size: 12px;
}

.form-control {
	display: inline;
	width: 65%;
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
								<input type="hidden" id="left_bar" value="contact">
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
					<div class="col-lg-8 col-lg-offset-1">
						<form method="post" id="contactinfo_form" onsubmit="return false;">
							<input type="hidden" name="user_email" value="neu_tianhc@126.com">
							<input type="hidden" name="resumetype" value="CN">
							<div class="form-group">
								<label for="address" class="col-md-2 control-label">地址<small
									class="text-default">*</small></label>
								<div class="col-md-9">
									<input type="text" class="form-control" name="address"
										id="address" placeholder="通信地址" value="辽宁省沈阳市和平区文化路三巷11号" />
								</div>
							</div>
							<div class="space" style="padding-bottom: 30px"></div>
							<div class="form-group">
								<label for="postcode" class="col-md-2 control-label">邮编<small
									class="text-default">*</small></label>
								<div class="col-md-9">
									<input type="text" class="form-control" name="postcode"
										id="postcode" placeholder="邮政编码" value="110819" />
								</div>
							</div>
							<div class="space"></div>
							<div class="form-group">
								<label for="phone" class="col-md-2 control-label">手机<small
									class="text-default">*</small></label>
								<div class="col-md-9">
									<input type="text" class="form-control" name="phone" id="phone"
										placeholder="手机号码" value="18304010890" />
								</div>
							</div>
							<div class="space"></div>
							<div class="form-group">
								<label for="email" class="col-md-2 control-label">email<small
									class="text-default">*</small></label>
								<div class="col-md-9">
									<input type="text" class="form-control" name="email" id="email"
										placeholder="电子邮箱" value="neu_tianhc@126.com" />
								</div>
							</div>
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

	<script type="text/javascript">
		function saveInfo(bNext) {
			if (!$("#contactinfo_form").valid()) {
				return;
			}
			var login_type = "email";
			var mobile = $("#phone").val();
			var email = $("#email").val();
			$.ajax({
				url : "autoBindInfo.action",
				type : "post",
				success : function(data, statusText) {

				},
				error : function() {
					NFCommon.util.showError(ERROR_MSG, 2000);
				},
				async : false,
				dataType : "json",
				timeout : 15000,
				data : "mobile=" + mobile + "&email=" + email + "&userType="
						+ login_type
			});

			if (bNext && !is_form_changed()) {
				location.href = "fillEducation.action";
				return;
			}

			var options = {
				url : "saveContactInfo.action",
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
						resetFormValue();
						if (bNext) {
							location.href = "fillEducation.action";
						} else {
							NFCommon.util.showSuccess(data.message, 2000);
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
				data : $("#contactinfo_form").serialize(),
			};
			$.ajax(options);
		}

		$(function() {
			/*** 手机号码
			 *** 移动：134[0-8],135,136,137,138,139,150,151,157,158,159,182,183,184,187,188,178(4G),147
			           "^1(34[0-8]|(3[5-9]|5[017-9]|8[278])\\d)\\d{7}$"
			 *** 联通：130,131,132,152,155,156,185,186,176(4G),145(上网卡)
			           "^1(3[0-2]|5[256]|8[56])\\d{8}$"
			 *** 电信：133,1349,153,180,181,189,177(4G)
			           "^1((33|53|8[09])[0-9]|349)\\d{7}$"
			 */
			var MOBILE_REGEX = /^(0*|\+86)1(3[0-9]|4[57]|5[0-35-9]|8[0-9]|7[06-8])\d{8}$/;

			$.validator.addMethod("isMobile", function(value, element) {
				value = value.replace(new RegExp(" ", "gm"), "");
				var mobile = /^1\d{10}$/;
				return this.optional(element) || mobile.test(value);
			}, "请填写正确的手机号码");

			$("#contactinfo_form").validate({
				rules : {
					address : {
						required : true,
						maxlength : 128,
						minlength : 8
					},
					postcode : {
						required : true,
						number : true,
						maxlength : 6,
						minlength : 4
					},
					phone : {
						required : true,
						isMobile : true
					},
					email : {
						required : true,
						email : true,
						maxlength : 128,
					}
				},
				messages : {
					address : {
						required : "请填写通信地址",
						maxlength : "您填写的通信地址过长",
						minlength : "请填写正确的通信地址"
					},
					postcode : {
						required : "请填写邮政编码",
						number : "请填写正确的邮政编码",
						maxlength : "请填写正确的邮政编码",
						minlength : "请填写正确的邮政编码"
					},
					phone : {
						required : "请填写手机号码",
						isMobile : "请填写正确的手机号码"
					},
					email : {
						required : "请填写email地址",
						email : "请填写正确的email地址",
						maxlength : "请填写正确的email地址"
					}
				}
			});

			$("#saveBtn").click(function() {
				saveInfo(false);
			});

			$("#nextBtn").click(function() {
				saveInfo(true);
			});
		});

		function is_form_changed() {
			var is_changed = false;

			$("#contactinfo_form input").each(function() {
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
			$("#contactinfo_form input").each(function() {
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