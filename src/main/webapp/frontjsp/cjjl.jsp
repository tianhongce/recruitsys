<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<!-- saved from url=(0057)http://www.nffund.com/nfjjRecruitSystem/fillResume.action -->
<html lang="en">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="description" content="人才招聘">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Mobile Meta -->
<link rel="shortcut icon"
	href="frontjsp/assets/images/favicon.ico">
<title>我的简历</title>
<base href="<%=basePath%>"></base>
<script src="frontjsp/assets/js/hm.js"></script>
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

<link rel="stylesheet" href="../frontjsp/assets/css/ui_datepicker.css">
<style type="text/css">
label {
	line-height: 2;
	padding: 0px !important;
}

#baseinfo_form {
	margin: 0px;
}

#baseinfo_form label.error {
	color: red;
	margin-left: 5px;
	font-size: 12px;
	float: left;
	clear: both;
}

.upload_error {
	color: red;
	width: 250px;
	text-align: left;
}

.op_upload {
	margin-left: 106px
}

.ajax-file-upload-statusbar {
	display: none
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

.col-md-1 {
	width: 14%;
}

.form-control {
	width: 65%;
}

.form-group {
	clear: both;
}
</style>
<script type="text/javascript" src="frontjsp/assets/js/jquery.min.js"></script>
<script type="text/javascript" src="frontjsp/assets/js/bootstrap.min.js"></script>
</head>



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
	if(readStatus == 1){
		document.getElementById("news").style.display="inline-block";
		setInterval("changeColor()",200); 
	}else{
		document.getElementById("welcome").style.display="inline-block";
	} 
};
function changeColor(){ 
var color="#f00|#0f0|#00f|#880|#808|#088|yellow|green|blue|gray"; 
color=color.split("|"); 
document.getElementById("blink").style.color=color[parseInt(Math.random() * color.length)]; 
} 
function newsClick(){
	location.href="myQuestion.action";
	
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
		if(status & (1<<0)){
			$("#my_contact > a").css("color","#FF3333");
		}
		if(status & (1<<1)){
			$("#my_education > a").css("color","#FF3333");
		}
		if(status & (1<<2)){
			$("#my_experience > a").css("color","#FF3333");
		}
		if(status & (1<<3)){
			$("#my_language > a").css("color","#FF3333");
		}
		if(status & (1<<4)){
			$("#my_family > a").css("color","#FF3333");
		}
		if(status & (1<<5)){
			$("#my_evaluation > a").css("color","#FF3333");
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
								<input type="hidden" id="left_bar" value="baseinfo">
								<nav>
									<ul class="nav nav-pills nav-stacked">
										<li class="active_bar active" id="my_baseinfo"><a
											href="http://www.nffund.com/nfjjRecruitSystem/fillResume.action">基本资料</a></li>
										<li class="active_bar" id="my_contact"><a
											href="http://www.nffund.com/nfjjRecruitSystem/fillContact.action">联系方式</a></li>
										<li class="active_bar" id="my_education"><a
											href="http://www.nffund.com/nfjjRecruitSystem/fillEducation.action">教育经历</a></li>
										<li class="active_bar" id="my_experience"><a
											href="http://www.nffund.com/nfjjRecruitSystem/fillExperience.action">工作/实习经验</a></li>
										<li class="active_bar" id="my_language"><a
											href="http://www.nffund.com/nfjjRecruitSystem/fillLanguage.action">语言能力</a></li>
										<li class="active_bar" id="my_family"><a
											href="http://www.nffund.com/nfjjRecruitSystem/fillFamily.action">家庭成员信息</a></li>
										<li class="active_bar" id="my_evaluation"><a
											href="http://www.nffund.com/nfjjRecruitSystem/fillEvaluation.action">自我评价</a></li>
										<!-- <li class="active_bar" id="my_other"><a href="fillOther.action">附加信息</a></li> -->
									</ul>
								</nav>
							</div>
						</div>
					</aside>
					<!-- sidebar end -->
					<div class="progress" style="height: 30px; margin-top: 20px;">
						<div class="progress-bar progress-bar-info" role="progressbar"
							aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"
							style="min-width: 16%; width: 0%">
							<span class="sr-only">您的简历已完善0%的资料</span>
						</div>
					</div>
					<div class="col-lg-10" style="padding-left: 40px;">
						<div class="form-group"
							style="display: block; text-align: center; min-width: 200px; margin-top: 15px; position: absolute; right: 0px;">
							<div align="center">
								<img id="base_photo" width="113" height="165"
									onload="AutoResizeImage(200,290,this)"
									src="../frontjsp/assets/images/no_pic.jpg" title="请上传照片">
							</div>
							<div class="btn btn-sm radius btn-primary"
								style="position: relative; overflow: hidden; cursor: default;">
								上传照片
								<form method="POST"
									action="http://www.nffund.com/nfjjRecruitSystem/uploadAttach.action"
									enctype="multipart/form-data"
									style="margin: 0px; padding: 0px;">
									<input type="file" id="ajax-upload-id-1461837047704"
										name="filepath" accept="*"
										style="position: absolute; cursor: pointer; top: 0px; width: 100%; height: 100%; left: 0px; z-index: 100; opacity: 0;">
								</form>
							</div>
							<a class="btn btn-sm radius btn-primary" type="photo" id="upload"
								style="text-align: center; display: none;">上传照片</a>
							<div class="upload_error"></div>
						</div>
						<form method="post" id="baseinfo_form" onsubmit="return false;"
							novalidate="novalidate">
							<input type="hidden" name="user_email" value="1196585084@qq.com"
								_value="1196585084@qq.com"> <input type="hidden"
								name="resumetype" value="CN" _value="CN">
							<div class="form-group">
								<label for="fullName" class="col-md-1">姓名<small
									class="text-default">*</small></label>
								<div class="col-md-7">
									<input type="text" style="float: left" class="form-control"
										id="fullName" name="fullName" value="" _value="">
								</div>
							</div>
							<div class="space" style="padding-bottom: 30px"></div>
							<div class="form-group">
								<label for="sex" class="col-md-1">性别<small
									class="text-default">*</small></label>
								<div class="col-md-7">
									<select class="form-control" name="sex" id="sex">
										<option value="0">男</option>
										<option value="1">女</option>
									</select>
								</div>
							</div>
							<div class="space"></div>
							<div class="form-group">
								<label for="tall" class="col-md-1">身高<small
									class="text-default">*</small></label>
								<div class="col-md-7">
									<input type="text" name="tall" style="float: left;"
										class="form-control" id="tall" value="" _value=""> <span
										style="color: gray; line-height: 2.5; margin-left: 5px;">单位：cm</span>
								</div>
							</div>
							<div class="space"></div>
							<div class="form-group">
								<label for="birthDay" class="col-md-1">出生日期<small
									class="text-default">*</small></label>
								<div class="col-md-7">
									<input style="width: 65%; float: left;"
										class="date-picker hasDatepicker" id="id-date-picker-1"
										type="text" data-date-format="yyyy-mm-dd" name="birthDay"
										value="" _value="">
									<!--<span class="add-on" onclick="$('#id-date-picker-1').trigger('focus');"><i class="icon-calendar"></i></span> -->
								</div>
							</div>
							<div class="space"></div>
							<div class="form-group">
								<label class="col-md-1" style="line-height: 1.5;">户口所在地<small
									class="text-default">*</small></label>
								<div id="prov-city" class="col-md-7">
									<select class="prov" name="province" style="width: 28%"><option
											value="">请选择</option>
										<option value="北京">北京</option>
										<option value="天津">天津</option>
										<option value="河北">河北</option>
										<option value="山西">山西</option>
										<option value="内蒙古">内蒙古</option>
										<option value="辽宁">辽宁</option>
										<option value="吉林">吉林</option>
										<option value="黑龙江">黑龙江</option>
										<option value="上海">上海</option>
										<option value="江苏">江苏</option>
										<option value="浙江">浙江</option>
										<option value="安徽">安徽</option>
										<option value="福建">福建</option>
										<option value="江西">江西</option>
										<option value="山东">山东</option>
										<option value="河南">河南</option>
										<option value="湖北">湖北</option>
										<option value="湖南">湖南</option>
										<option value="广东">广东</option>
										<option value="广西">广西</option>
										<option value="海南">海南</option>
										<option value="重庆">重庆</option>
										<option value="四川">四川</option>
										<option value="贵州">贵州</option>
										<option value="云南">云南</option>
										<option value="西藏">西藏</option>
										<option value="陕西">陕西</option>
										<option value="甘肃">甘肃</option>
										<option value="青海">青海</option>
										<option value="宁夏">宁夏</option>
										<option value="新疆">新疆</option>
										<option value="香港">香港</option>
										<option value="澳门">澳门</option>
										<option value="台湾">台湾</option>
										<option value="国外">国外</option></select><select
										class="city col-md-offset-1" name="city" style="width: 29%;"
										disabled="disabled"></select>
								</div>
							</div>
							<div class="space" style="padding-bottom: 10px"></div>
							<div class="form-group">
								<label for="politicalStatus" class="col-md-1">政治面貌<small
									class="text-default">*</small></label>
								<div class="col-md-7">
									<select class="form-control" name="politicalStatus">
										<option value="PARTY">中共党员</option>
										<option value="PREPARTY">预备党员</option>
										<option value="YOUTH">共青团员</option>
										<option value="PUBLIC">群众</option>
										<option value="OTHERS">其他</option>
									</select>
								</div>
							</div>
							<div class="space"></div>
							<div class="form-group">
								<label for="maritalStatus" class="col-md-1">婚姻状况<small
									class="text-default">*</small></label>
								<div class="col-md-7">
									<select class="form-control" name="maritalStatus">
										<option value="SINGLE">未婚</option>
										<option value="MARRIED">已婚</option>
										<option value="DIVORCED">离婚</option>
										<!-- <option value="WIDOWED" >丧偶</option> -->
									</select>
								</div>
							</div>
							<div class="space"></div>
							<div class="form-group">
								<label for="idCardNumber" class="col-md-1">身份证/护照<small
									class="text-default">*</small></label>
								<div class="col-md-7">
									<input type="text" style="float: left" class="form-control"
										id="idCardNumber" name="idCardNumber" value="" _value="">
								</div>
							</div>
							<div class="space"></div>
							<div class="form-group">
								<label for="expricesYears" class="col-md-1">工作年限</label>
								<div class="col-md-7">
									<input type="text" style="float: left;" class="form-control"
										placeholder="单位：年" id="expricesYears" name="expricesYears"
										_value=""> <span
										style="color: gray; line-height: 2.5; margin-left: 5px;">（应届生可不填）</span>
								</div>
							</div>
							<div class="space"></div>
							<div class="form-group">
								<label for="nowPosition" class="col-md-1">目前职位</label>
								<div class="col-md-7">
									<input type="text" style="float: left;" class="form-control"
										id="nowPosition" name="nowPosition" value="" _value="">
									<span style="color: gray; line-height: 2.5; margin-left: 5px;">（应届生可不填）</span>
								</div>
							</div>
							<div class="space"></div>
							<div class="form-group">
								<label for="wishMonthSalary" class="col-md-1">期望薪酬<small
									class="text-default">*</small></label>
								<div class="col-md-7">
									<select class="form-control" name="wishMonthSalary">
										<option value="2000,4000">2000-4000/月</option>
										<option value="4000,6000">4000-6000/月</option>
										<option value="6000,8000">6000-8000/月</option>
										<option value="8000,10000">8000-10000/月</option>
										<option value="10000,12000">10000-12000/月</option>
										<option value="12000,16000">12000-16000/月</option>
										<option value="16000,20000">16000-20000/月</option>
										<option value="20000,30000">20000-30000/月</option>
										<option value="30000">30000以上/月</option>
									</select>
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

	<script type="text/javascript" src="../frontjsp/assets/js/jquery.cityselect.js"></script>
	<script type="text/javascript" src="../frontjsp/assets/js/jquery-ui.1.11.3.js"></script>
	<script type="text/javascript" src="../frontjsp/assets/js/jquery.fileupload.js"></script>
	<script type="text/javascript">
	function saveInfo(bNext){
		if(!$("#baseinfo_form").valid()) {
			return;
		}
		
		var options = {
			url : "saveBaseInfo.action",
			type : "post",
			success : function(data, statusText) {
				if (typeof(data) == "undefined") {
					NFCommon.util.showError("操作失败，请稍候重试", 2000);
					return;
				}
				
				if (data.code == 'login') {
					resetFormValue();
					location.href = "tologin.action";
				}
				else if (data.code == 'success') {
					resetFormValue();
					if(bNext) {
						location.href = "fillContact.action";
					}
					else {
						NFCommon.util.showSuccess(data.message, 2000);
					}
				}
				else {
					NFCommon.util.showError(data.message, 2000);
				}
			},
			error : function() {
				NFCommon.util.showError(ERROR_MSG, 2000);
			},
			async : false,
			dataType: "json",  
			resetForm : true,  
			timeout : 15000,
			data : $("#baseinfo_form").serialize(),
		};
	    $.ajax(options);
	}

	$(function() {
		$.ajax({
			url : "findAttach.action?type=photo",
			type : "get",
			success : function(data) {
				if(data.code == "not exists"){
					$("#base_photo").attr("src", "assets/images/no_pic.jpg");
					$("#base_photo").attr("title","请上传照片");
				}else{
					$("#base_photo").attr("src","/nfjjRecruitSystem/getAttach.action?type=photo");
					$("#base_photo").removeAttr("title");
				}
			},
			async : false,
			dataType: "json",  
			timeout : 15000
		});
		
		$("#upload").each(function() {
			$(this).uploadFile({
				url:"uploadAttach.action",
				fileName:"filepath",
				formData:{"type":"photo"},
				allowedTypes:"jpeg,jpg,png,gif",
				dragDrop:false,
				maxFileSize:1024*1024,
				multiple:false,
				maxFileCountErrorStr:"文件过大，最大",
				extErrorStr:"不允许上传该类型文件，只允许",
				uploadButtonClass:"btn btn-sm radius btn-primary",
				onSuccess : function(files, response) {
					$("#base_photo").attr("src", "/nfjjRecruitSystem/getAttach.action?type=photo&r="+Math.random());
				},
				onError : function(files, status, message, pd) {
					NFCommon.util.showError("上传失败，请稍候重试", 2000);
				}
			});
		});
		
		$("#baseinfo_form").validate({
			rules : {
				fullName : {
					required : true,
					maxlength: 6,
					minlength: 2
				},
				birthDay: {
					required : true
				},
				tall : {
					required : true,
					digits : true,
					range : [100, 250]
				}, 
				sex : {
					required : true
				},
				province : {
					required : true
				},
				city : {
					required : true
				},
				politicalStatus:{
					required : true
				},
				maritalStatus : {
					required : true
				},
				idCardNumber : {
					required : true,
					maxlength: 18,
					idcardno : true,
					cardlength:true
				},
				wishMonthSalary : {
					required : true
				},
				nowPosition : {
					maxlength: 128,
				},
				expricesYears : {
					number:true,
					maxlength:4
				}
			},
			messages : {
				fullName : {
					required : "请填写真实姓名",
					minlength : "请填写真实姓名",
					maxlength : "请填写真实姓名"
				},
				birthDay: {
					required : '请选择出生日期'
				},
				sex : {
					required : "请选择性别",
				},
				province : {
					required : ""
				},
				city : {
					required : "请选择省/市/县"
				},
				politicalStatus:{
					required : "请选择政治面貌"
				},
				maritalStatus : {
					required : "请选择婚姻状况"
				},
				idCardNumber : {
					required : "请填写身份证/护照",
					maxlength: "身份证/护照不能超过18位"
				},
				wishMonthSalary : {
					required : "请选择期望薪酬"
				},
				tall : {
					required : "请填写身高",
					digits : "请填写正确的身高",
					range : "请填写正确的身高"
				},
				nowPosition : {
					maxlength : "填写的职位信息过长"
				},
				expricesYears : {
					number : "填写的工作年限有误",
					maxlength : "填写的工作年限有误"
				}
			}
		});
		
		$.validator.addMethod("idcardno", function(value, element) {
			return this.optional(element) || isIdCardNo(value);
		}, "证件号码有误");
		
		$.validator.addMethod("cardlength", function(value, element) {
			if(value.length == 8 || value.length == 9 || value.length == 10 || value.length == 15 || value.length == 18){
				return true;
			}
			return this.optional(element);
		}, "身份证必须为8/9/10/15/18位，护照为9位,");
		
		$("#prov-city").citySelect({
			city : "",
			prov : "",
			required : false,
		});
		$.datepicker.regional['zh-CN'] = {
			clearText: '清除',   
			clearStatus: '清除已选日期',   
			closeText: '关闭',   
			closeStatus: '不改变当前选择',   
			prevText: '<',   
			prevStatus: '显示上月',   
			prevBigText: '<<',   
			prevBigStatus: '显示上一年',   
			nextText: '>',   
			nextStatus: '显示下月',   
			nextBigText: '>>',   
			nextBigStatus: '显示下一年',   
			currentText: '今天',   
			currentStatus: '显示本月',
			monthNames: ['一月','二月','三月','四月','五月','六月', '七月','八月','九月','十月','十一月','十二月'],   
			monthNamesShort: ['一','二','三','四','五','六', '七','八','九','十','十一','十二'],   
			monthStatus: '选择月份',   
			yearStatus: '选择年份',   
			weekHeader: '周',   
			weekStatus: '年内周次',   
			dayNames: ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'],   
			dayNamesShort: ['周日','周一','周二','周三','周四','周五','周六'],   
			dayNamesMin: ['日','一','二','三','四','五','六'],   
			dayStatus: '设置 DD 为一周起始',   
			dateStatus: '选择 m月 d日, DD',   
			dateFormat: 'yy-mm-dd',   
			firstDay: 1,   
			initStatus: '请选择日期',   
			showMonthAfterYear: true,
			changeMonth: true,
			changeYear: true,
			yearRange: "c-65:c"
		};
				   
		$.datepicker.setDefaults($.datepicker.regional['zh-CN']);
		$('.date-picker').removeClass("hasDatepicker");
		$('.date-picker').datepicker();
				
		$("#nextBtn").click(function () {
			saveInfo(true);
			return false;
		});
		$("#saveBtn").click(function () {
			saveInfo(false);
			return false;
		});
	});
	
	///////////////////////////////////////////////////////////////////////////
	function is_form_changed() {
		var is_changed = false; 

        $("#baseinfo_form input").each(function() {
        	var _v = $(this).attr('_value');
        	if(typeof(_v) == 'undefined') {
				_v = ''; 
			}
                 
            if(_v != $(this).val()) {
                is_changed = true; 
			}
		}); 
		
		return is_changed;
	}

	function resetFormValue() {
		$("#baseinfo_form input").each(function() {
	        $(this).attr('_value', $(this).val());
	    }); 
	}
	
	$(document).ready(resetFormValue); 
	
	window.onbeforeunload = function() {
	    if(is_form_changed()) {
	        return "您当前的编辑内容没有保存，确定离开吗？";
	    }
	}

	function getSexByIdCard(idCard) {
	    if(idCard.length == 15) {   
	        if(idCard.substring(14,15)%2==0) {   
	            return 1;   
	        }   
	        return 0;
	    }

	    if(idCard.length == 18) {   
	        if(idCard.substring(14,17)%2==0){   
	            return 1;   
	        } 
	        return 0;
	    }
	       
	    return -1;
	}   
	
	function isIdCardNo(num) {
		var birthDay = $("input[name='birthDay']").val();
		var arr=birthDay.split("-");
		var year = arr[0];
		var month = arr[1];
		var day = arr[2];
		var dateCompare1 = year + month +day;
		var dateCompare2 = year.substring(2,4) + month +day;
		var intStrLen = num.length;
		if(intStrLen == 18){
			var date18 = num.substring(6,14);
			if(date18 != dateCompare1){
				return false;
			}
			if($("#sex").val() != getSexByIdCard(num)) {
				return false;
			}
		}else if(intStrLen == 15){
			var date15 = num.substring(6,12);
			if(date15 != dateCompare2){
				return false;
			}
			if($("#sex").val() != getSexByIdCard(num)) {
				return false;
			}
		}else if(checkGATIdCard(num) == false)
			return false;

		
		
		
		return true;
	}
	/**
	 * 验证港澳台身份证
	 * @param obj
	 */
	function checkGATIdCard(obj){
	    var reg1 = /^[A-Z]{1,2}[0-9]{6}[\(|\()]?[0-9A-Z][\)|\)]?$/;//香港格式1 (香港身份证号码结构：XYabcdef(z))
	    var reg2 = /^[A-Z][0-9]{8,12}$/;//香港格式2 (H60152555)
	     
	    var reg3 = /^[1|5|7][0-9]{6}[\(|\(]?[0-9A-Z][\)|\)]?$/;//澳门,8位数,不包含出生年月 格式为 xxxxxxx(x) 注:x全为数字,无英文字母 首位数只有1、5、7字开头的
	    var reg4 = /^[a-zA-Z][0-9]{9}$/;//台湾:10位字母和数字
	     
	    if(reg1.test(obj) || reg2.test(obj) || reg3.test(obj) || reg4.test(obj)){
	        return true;
	    }
	    else 
	    	return false;
	}
	
	function AutoResizeImage(maxWidth,maxHeight,objImg){
		var img = new Image();
		img.src = objImg.src;
		var hRatio;
		var wRatio;
		var Ratio = 1;
		var w = img.width;
		var h = img.height;
		wRatio = maxWidth / w;
		hRatio = maxHeight / h;
		if (maxWidth ==0 && maxHeight==0){		
		    Ratio = 1;
		}else if (maxWidth==0){//
		    if (hRatio<1) Ratio = hRatio;
		}else if (maxHeight==0){
		    if (wRatio<1) Ratio = wRatio;
		}else if (wRatio<1 || hRatio<1){
		    Ratio = (wRatio<=hRatio?wRatio:hRatio);
		}
		if (Ratio<1){
		    w = w * Ratio;
		    h = h * Ratio;
		}
		objImg.height = h;
		objImg.width = w;
	}
	</script>
	<script type="text/javascript" src="../frontjsp/assets/js/jquery.validate.js"></script>
	<script type="text/javascript"
		src="../frontjsp/assets/js/jquery.toastmessage.js"></script>
	<script type="text/javascript">
			$(function(){
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

	<div id="ui-datepicker-div"
		class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>
</body>
</html>