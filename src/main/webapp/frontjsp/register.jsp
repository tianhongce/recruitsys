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
<meta name="description" content="南方基金人才招聘" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!-- Mobile Meta -->
<link rel="shortcut icon" href="frontjsp/assets/images/favicon.ico" />
<title>南方基金人才招聘-注册</title>

<script type="text/javascript">
	if (!window.applicationCache) {
		self.location = "validateHtml5.action";
	}
</script>

<link href="frontjsp/assets/css/bootstrap.css" rel="stylesheet" />
<link href="frontjsp/assets/css/font-awesome.css"
	rel="stylesheet" />
<link href="frontjsp/assets/css/style.css" rel="stylesheet" />
<link href="frontjsp/assets/css/blue.css" rel="stylesheet" />
<link href="frontjsp/assets/css/jquery.toastmessage.css" rel="stylesheet" />

<style type="text/css">
#register_form label.error {
	color: red;
	line-height: 2;
}

.form-control {
	width: 48%;
	float: left;
	margin-right: 1px;
}

#inputVerifyCode-error {
	float: right;
	margin-top: -30px;
	margin-right: 210px;
}

.ui-jqgrid-bdiv {
	overflow: hidden !important;
}

#loading_img {
	left: 30%;
}

#bg {
	width: 100%;
	height: 100%;
	top: 0px;
	left: 0px;
	position: fixed;
	filter: Alpha(opacity = 30);
	opacity: 0.7;
	background: #000000;
	z-index: 9999;
	display: none;
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
							<div class="btn-group dropdown">
								<button type="button" class="btn"
									onclick="location.href='frontjsp/register.jsp'">
									<i class="fa fa-search"></i> 注册
								</button>
							</div>
							<div class="btn-group dropdown">
								<button type="button" class="btn"
									onclick="location.href='frontjsp/login.jsp'">
									<i class="fa fa-user"></i> 登录
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
								src="frontjsp/assets/images/index_logo.jpg" alt="南方基金"></a>
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

									<input type="hidden" id="active_bar" value="index">
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
		<section class="main-container">
			<div class="container">
				<div class="row col-lg-12">
					<div class="space-bottom"></div>
					<h2 class="text-center">用户注册</h2>
					<div class="form-horizontal" id="show">
						<form class="form-horizontal" role="form" method="post"
							id="register_form" action="register.do">
							<!-- <form class="form-horizontal" method="post" id="register_form"> -->
							<input type="hidden" id="registerType" name="registerType"
								value="email" />
							<div class="form-group">
								<label for="inputEmail"
									class="col-sm-2 control-label col-sm-offset-2">邮箱</label>
								<div class="col-md-8">
									<input type="text" name="useremail" class="form-control"
										id="inputEmail" placeholder="请输入邮箱" value="" />
								</div>
							</div>
							<div class="form-group">
								<label for="inputUsername"
									class="col-sm-2 control-label col-sm-offset-2">用户名</label>
								<div class="col-md-8">
									<input type="text" name="username" class="form-control"
										id="inputUsername" placeholder="请输入用户名" value="" />
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword"
									class="col-sm-2 control-label col-sm-offset-2">登录密码</label>
								<div class="col-md-8">
									<input type="password" name="userpwd" class="form-control"
										id="inputPassword" autocomplete="off"
										placeholder="6-20个任意字符组合" value="" />
								</div>
							</div>
							<div class="form-group">
								<label for="inputRePassword"
									class="col-sm-2 control-label col-sm-offset-2">确认密码</label>
								<div class="col-md-8">
									<input type="password" name="userpwd2" class="form-control"
										id="inputRePassword" autocomplete="off"
										placeholder="6-20个任意字符组合" value="" />
								</div>
							</div>
							<div class="form-group">
								<label for="inputVerifyCode"
									class="col-sm-2 control-label col-sm-offset-2">验证码</label>
								<div class="col-md-8">
									<input type="text" name="imgcode" autocomplete="off"
										class="form-control" style="float: none" id="inputVerifyCode"
										maxlength="5" placeholder="5位数字、字母组合" value="" />
									<div id="verifyCode" style="margin-top: 10px">
										 <img id="captcha_img" alt="点击更换" title="点击更换" onclick="changeVerifyCode(this)" src="imgcodeController/kaptcha-image.do" class="m">
										  <a href="javascript:;"
											style="float: right; margin-top: -20px; margin-right: 380px;"
											onclick="changeVerifyCode(this);return false;">看不清？换一张</a>
									</div>
									
									<!-- <div id="verifyCode" style="margin-top: 10px">
										<img
											style="cursor: pointer; margin-right: 10px; width: 250px; height: 90px;"
											onclick="refreshImage();return false;" id="randomImg"
											border=1 src="getImgCode.action" /> <a href="javascript:;"
											style="float: right; margin-top: -20px; margin-right: 380px;"
											onclick="refreshImage();return false;">看不清？换一张</a>
									</div> -->
									
									<div id="verifyMsgCode" style="display: none;">
										<input type="button" class="form-control"
											style="float: right; background-color: #3d78d8; color: #fff !important;"
											id="msgbtn" value="获取短信验证码" />
									</div>
								</div>
							</div>
							<div class="form-group text-center">
								<div>
									<button type="submit" id="register" class="btn btn-default">注册</button>
								</div>
							</div>
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
		$(document).ready(
				function() {

					checkInputType($("#inputEmail").val());

					$("#inputEmail").blur(function() {
						checkInputType($(this).val());
					});

					//获取短信验证码
					$("#msgbtn").click(
							function() {
								var mobile = $("#inputEmail").val();
								var registerType = $("#registerType").val();
								var options = {
									url : "sendSmsCode.action",
									type : "post",
									dataType : "json",
									success : function(data) {
										if (data.code == "error") {
											NFCommon.util.showError(
													"验证码发送失败，请稍候重试", 2000);
										}
									},
									data : "mobile=" + mobile
											+ "&registerType=" + registerType
								};
								$.ajax(options);
								time($(this));
							});

					$("#register_form").validate({
						rules : {
							useremail : {
								required : true,
								verifyuser : true
							},
							userpwd : {
								required : true,
								rangelength : [ 6, 20 ]
							},
							userpwd2 : {
								required : true,
								equalTo : "#inputPassword"
							},
							imgcode : {
								required : true
							}
						},
						messages : {
							useremail : {
								required : "邮箱不能为空"
							},
							userpwd : {
								required : "登录密码不能为空",
								rangelength : "密码须为6-20个任意字符组合",
							},
							userpwd2 : {
								required : "请输入确认密码",
								equalTo : "两次输入密码不一致"
							},
							imgcode : {
								required : "验证码不能为空"
							}
						}
					});

					$.validator.addMethod("verifyuser",
							function(value, element) {
								return this.optional(element)
										||  isEmail(value);
							}, "邮箱格式不对");
				});
		var wait = 60;
		function time(btn) {
			if (wait == 0) {
				btn.removeAttr("disabled");
				btn.css('background-color', '#3d78d8');
				btn.val("获取验证码");
				wait = 60;
			} else {
				btn.attr("disabled", true);
				btn.css('background-color', '#666666');
				btn.val(wait + "秒后重新获取");
				wait--;
				setTimeout(function() {
					time(btn);
				}, 1000);
			}
		}
		function isMobile(number) {
			var phonepartten = /(^0{0,1}1[3|4|5|6|7|8|9][0-9]{9}$)/;
			if (phonepartten.test(number)) {
				return true;
			} else {
				return false;
			}
		}
		function isEmail(number) {
			var emailpattern = /^([\.a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;
			if (emailpattern.test(number)) {
				return true;
			} else {
				return false;
			}
		}
		function refreshImage() {
			document.getElementById("randomImg").setAttribute("src",
					"getImgCode.action?r=" + Math.random());
		}
		
		function changeVerifyCode(img){
		        img.src = "imgcodeController/kaptcha-image.do?"+Math.floor(Math.random()*100);   
		}
		
		function checkInputType(type) {
			if (isMobile(type)) {
				/* $("#registerType").val("mobile");
				$("#verifyMsgCode").show();
				$("#verifyCode").hide();
				$("#verifyMsgCode").parent().removeClass("col-md-8").addClass(
						"col-md-4");
				$("#inputVerifyCode").attr('placeholder', '6位数字').attr(
						"maxlength", "6").css('float', 'left');
				$("#inputVerifyCode-error").css('margin-top', '-5px').css(
						'margin-right', '-110px'); */
			} else {
				$("#registerType").val("email");
				$("#verifyMsgCode").hide();
				$("#verifyCode").show();
				$("#verifyMsgCode").parent().removeClass("col-md-4").addClass(
						"col-md-8");
				$("#inputVerifyCode").attr('placeholder', '5位数字、字母组合').attr(
						"maxlength", "5").css('float', 'none');
				$("#inputVerifyCode-error").css('margin-top', '-30px').css(
						'margin-right', '210px');
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