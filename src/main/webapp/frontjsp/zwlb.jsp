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
<link rel="shortcut icon" href="nimages/favicon.ico" />
<title>南方基金人才招聘-招聘岗位</title>

<script type="text/javascript">
	if (!window.applicationCache) {
		self.location = "validateHtml5.action";
	}
</script>

<link href="ncss/bootstrap.css" rel="stylesheet" />
<link href="ncss/font-awesome.css" rel="stylesheet" />
<link href="ncss/style.css" rel="stylesheet" />
<link href="ncss/blue.css" rel="stylesheet" />
<link href="ncss/jquery.toastmessage.css" rel="stylesheet" />

</head>
<script type="text/javascript" src="njs/jquery.min.js"></script>
<script type="text/javascript" src="njs/bootstrap.min.js"></script>

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
								src="nimages/index_logo.jpg" alt="南方基金"></a>
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

									<input type="hidden" id="active_bar" value="campus">
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
				var readStatus = "0";
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
				<!-- sidebar start -->
				<aside class="col-md-3">
					<div class="siebar">
						<form id="search" name="search" method="post">
							<div style="margin-top: 20px;">
								<h6>部 门：</h6>
								<select id="department" name="department" class="form-control">
								</select>
							</div>
							<div style="margin-top: 20px; display: none">
								<h6>工作地点：</h6>
								<select class="form-control" id="location" name="location">
									<option value="">所有</option>
									<option value="深圳">深圳</option>
									<option value="合肥">合肥</option>
									<option value="北京">北京</option>
									<option value="上海">上海</option>
									<option value="成都">成都</option>
								</select>
							</div>
							<div style="margin-top: 20px;">
								<h6>关键字 ：</h6>
								<input type="text" id="searchtext" name="searchtext"
									class="form-control" maxlength=8 />
							</div>
							<div style="margin-top: 20px; align: center;">
								<input type="button" onclick="searchposition()" value="搜索">
							</div>
						</form>
					</div>
				</aside>

				<!-- main start -->
				<!-- ================ -->
				<div class="main col-md-9"
					style="min-height: 520px; padding-bottom: 20px;">
					<div class="tabs-style-2">
						<!-- Nav tabs -->
						<ul class="nav nav-tabs" role="tablist">
							<li class="active"><a href="#h2tab1" role="tab"
								data-toggle="tab"><i class="fa fa-bookmark-o pr-5"></i>招聘职位</a>
							</li>
						</ul>
						<!-- Tab panes -->

						<div class="tab-content">
							<table class="table table-striped">
								<thead>
									<tr>
										<th style="width: 35%;">职位名称</th>
										<th style="width: 19%;">所属部门</th>
										<th style="width: 13%;">工作地点</th>
										<th style="width: 13%;">招聘人数</th>
										<th style="width: 20%;">截止时间</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<form id="campus667" name="campus" method="post"
										action="apply.action?jobid=667">
										<tr style="cursor: pointer"
											onclick="showJobDesp($('#nav667'), 667);return false;">
											<td>机构直销柜台岗</td>
											<td>机构业务部</td>
											<td>深圳</td>
											<td align="center">1</td>
											<td>2016-06-30</td>
											<td><span id="nav667"><b
													class="arrow fa fa-angle-down"></b></span></td>
										</tr>
										<tr id="job667" style="display: none">
											<td colspan="6"><strong>职位描述：</strong><br />
												1、直销客户日常业务办理，包括开户及日常交易<br />2、积极配合公司IPO及持续销售做好直销业务。<br />3机构客户日常服务工作：及时发送短信邮件等资讯，满足机构客户多元化需求；做好机构客户日常维护，提高机构客户满意度。<br />4、制作机构客户服务资讯及组织日常活动<br />5、领导交办的部门工作：部门预算、费用报销、与其他部门的联络等。<br />6、数据处理，柜台直销交易数据及分公司交易数据处理<br />
												<br /> <br /> <strong>职位要求：</strong><br />
												<div style="line-height: 2">
													1、金融相关专业本科及以上学历<br />2、、具有较强的么文字功底和综合能力，较强的团队合作意识和吃苦耐劳的精神<br />3、
													较强的数据处理能力<br />4、 耐心、细致、责任心强 <br /> <br />
												</div> <strong>专业要求：</strong><br /> <br /> <br /> <strong>学历要求：</strong>

												本科 <br /> <br /> <!--<strong>性别要求：</strong>
												不限制<br />
											<br /> -->
												<div align="center">
													<input type="button" class="btn btn-primary btn-sm radius"
														onclick="applyJob(667)" value="立即申请">
													<button class="btn btn-primary btn-sm radius"
														style="display: none">分享</button>
												</div></td>
										</tr>
									</form>
									<form id="campus665" name="campus" method="post"
										action="apply.action?jobid=665">
										<tr style="cursor: pointer"
											onclick="showJobDesp($('#nav665'), 665);return false;">
											<td>机构业务中台岗</td>
											<td>机构业务部</td>
											<td>深圳</td>
											<td align="center">1</td>
											<td>2016-06-30</td>
											<td><span id="nav665"><b
													class="arrow fa fa-angle-down"></b></span></td>
										</tr>
										<tr id="job665" style="display: none">
											<td colspan="6"><strong>职位描述：</strong><br />
												1、机构业务标书制作及管理；<br />2、信息披露、客户需求处理；<br />3、合同管理、投资阀值发起、投资资讯服务等；<br />
												<br /> <strong>职位要求：</strong><br />
												<div style="line-height: 2">
													1、金融相关专业本科及以上学历<br />2、具有较强的么文字功底和综合能力，较强的团队合作意识和吃苦耐劳的精神<br />3、
													较强的数据处理能力<br />4、 耐心、细致、责任心强 <br /> <br />
												</div> <strong>专业要求：</strong><br /> <br /> <br /> <strong>学历要求：</strong>

												本科 <br /> <br /> <!--<strong>性别要求：</strong>
												不限制<br />
											<br /> -->
												<div align="center">
													<input type="button" class="btn btn-primary btn-sm radius"
														onclick="applyJob(665)" value="立即申请">
													<button class="btn btn-primary btn-sm radius"
														style="display: none">分享</button>
												</div></td>
										</tr>
									</form>
									<form id="campus663" name="campus" method="post"
										action="apply.action?jobid=663">
										<tr style="cursor: pointer"
											onclick="showJobDesp($('#nav663'), 663);return false;">
											<td>机构合同管理岗</td>
											<td>机构业务部</td>
											<td>深圳</td>
											<td align="center">1</td>
											<td>2016-06-30</td>
											<td><span id="nav663"><b
													class="arrow fa fa-angle-down"></b></span></td>
										</tr>
										<tr id="job663" style="display: none">
											<td colspan="6"><strong>职位描述：</strong><br />
												1、公告内部审核及发布；<br />2、机构业务协议签署流程办理；<br />3、基金产品法律文件审核；<br />4、合同、文档存档。<br />
												<br /> <strong>职位要求：</strong><br />
												<div style="line-height: 2">
													1、本科学历，金融、法律等相关专业，1年以上工作经验；<br />2、有敏锐的市场感觉和良好的沟通能力；<br />3、高度敬业精神，工作负责、细致、有耐心。<br />
													<br />
												</div> <strong>专业要求：</strong><br /> <br /> <br /> <strong>学历要求：</strong>

												本科 <br /> <br /> <!--<strong>性别要求：</strong>
												不限制<br />
											<br /> -->
												<div align="center">
													<input type="button" class="btn btn-primary btn-sm radius"
														onclick="applyJob(663)" value="立即申请">
													<button class="btn btn-primary btn-sm radius"
														style="display: none">分享</button>
												</div></td>
										</tr>
									</form>
									<form id="campus661" name="campus" method="post"
										action="apply.action?jobid=661">
										<tr style="cursor: pointer"
											onclick="showJobDesp($('#nav661'), 661);return false;">
											<td>养老金客户经理</td>
											<td>养老金业务部</td>
											<td>北京</td>
											<td align="center">1</td>
											<td>2016-06-30</td>
											<td><span id="nav661"><b
													class="arrow fa fa-angle-down"></b></span></td>
										</tr>
										<tr id="job661" style="display: none">
											<td colspan="6"><strong>职位描述：</strong><br />
												1、负责年金客户的开拓、维护和服务工作； <br />2、策划、实施年金业务营销方案，实现销售目标； <br />3、推广公司品牌及产品，提高客户忠诚度。<br />
												<br /> <br /> <strong>职位要求：</strong><br />
												<div style="line-height: 2">
													1、大学本科及以上学历，有资深的金融专业背景和基金产品销售经验； <br />2、具有高度的敬业精神、责任心和使命感；
													<br />3、具有较好的团队合作和奉献精神； <br />4、具有良好的沟通能力及培训、演讲技能； <br />5、熟练掌握各种办公软件。<br />
													<br /> <br />
												</div> <strong>专业要求：</strong><br /> <br /> <br /> <strong>学历要求：</strong>

												本科 <br /> <br /> <!--<strong>性别要求：</strong>
												不限制<br />
											<br /> -->
												<div align="center">
													<input type="button" class="btn btn-primary btn-sm radius"
														onclick="applyJob(661)" value="立即申请">
													<button class="btn btn-primary btn-sm radius"
														style="display: none">分享</button>
												</div></td>
										</tr>
									</form>
									<form id="campus659" name="campus" method="post"
										action="apply.action?jobid=659">
										<tr style="cursor: pointer"
											onclick="showJobDesp($('#nav659'), 659);return false;">
											<td>养老金业务中台岗</td>
											<td>养老金业务部</td>
											<td>深圳</td>
											<td align="center">1</td>
											<td>2016-06-30</td>
											<td><span id="nav659"><b
													class="arrow fa fa-angle-down"></b></span></td>
										</tr>
										<tr id="job659" style="display: none">
											<td colspan="6"><strong>职位描述：</strong><br />
												1、养老金业务标书制作及管理；<br />2、信息披露、客户需求处理；<br />3、合同管理、投资阀值发起、投资资讯服务等；<br />
												<br /> <br /> <strong>职位要求：</strong><br />
												<div style="line-height: 2">
													1、金融相关专业本科及以上学历<br />2、具有较强的么文字功底和综合能力，较强的团队合作意识和吃苦耐劳的精神<br />3、
													较强的数据处理能力<br />4、 耐心、细致、责任心强 <br /> <br />
												</div> <strong>专业要求：</strong><br /> <br /> <br /> <strong>学历要求：</strong>

												本科 <br /> <br /> <!--<strong>性别要求：</strong>
												不限制<br />
											<br /> -->
												<div align="center">
													<input type="button" class="btn btn-primary btn-sm radius"
														onclick="applyJob(659)" value="立即申请">
													<button class="btn btn-primary btn-sm radius"
														style="display: none">分享</button>
												</div></td>
										</tr>
									</form>
									<form id="campus639" name="campus" method="post"
										action="apply.action?jobid=639">
										<tr style="cursor: pointer"
											onclick="showJobDesp($('#nav639'), 639);return false;">
											<td>高级文秘</td>
											<td>办公室</td>
											<td>深圳</td>
											<td align="center">1</td>
											<td>2016-04-30</td>
											<td><span id="nav639"><b
													class="arrow fa fa-angle-down"></b></span></td>
										</tr>
										<tr id="job639" style="display: none">
											<td colspan="6"><strong>职位描述：</strong><br /> 1、
												负责起草公司党建工作计划、工作报告、工作总结及其他需报送准备的文件资料；<br />2、 负责落实公司党支部建设工作；<br />3、
												负责组织各类党群活动，并做好相关宣传、接待工作；<br />4、
												负责完成公司党务日常工作，包括但不限于：党员发展、组织关系接转、党内评议考核及党费收支管理等；<br />5、
												负责协助完成办公室日常行政、文秘性事务工作；<br />6、 完成上级领导交办的其他工作。<br /> <br />
												<br /> <strong>职位要求：</strong><br />
												<div style="line-height: 2">
													1、 中共党员；品行端正，具有良好的沟通表达能力，具有较高的保密和服务意识；<br />2、
													本科及以上学历，政治、法律、新闻、财经、中文等相关专业优先；<br />3、
													具有党群或团建工作经历或工作经验者优先；<br />4、
													具备较强的公文与新闻写作能力；能熟练使用Word、Excel、PPT等日常办公软件。<br /> <br /> <br />
												</div> <strong>专业要求：</strong><br /> <br /> <br /> <strong>学历要求：</strong>

												本科 <br /> <br /> <!--<strong>性别要求：</strong>
												不限制<br />
											<br /> -->
												<div align="center">
													<input type="button" class="btn btn-primary btn-sm radius"
														onclick="applyJob(639)" value="立即申请">
													<button class="btn btn-primary btn-sm radius"
														style="display: none">分享</button>
												</div></td>
										</tr>
									</form>
									<form id="campus657" name="campus" method="post"
										action="apply.action?jobid=657">
										<tr style="cursor: pointer"
											onclick="showJobDesp($('#nav657'), 657);return false;">
											<td>机构客户经理（南京）</td>
											<td>合肥分公司</td>
											<td>南京</td>
											<td align="center">3</td>
											<td>2016-10-31</td>
											<td><span id="nav657"><b
													class="arrow fa fa-angle-down"></b></span></td>
										</tr>
										<tr id="job657" style="display: none">
											<td colspan="6"><strong>职位描述：</strong><br />
												1、负责机构客户的开拓、维护和服务工作； <br />2、策划、实施机构业务营销方案，实现销售目标； <br />3、推广公司品牌及产品，提高客户忠诚度。<br />
												<br /> <strong>职位要求：</strong><br />
												<div style="line-height: 2">
													1、大学本科及以上学历，有资深的金融专业背景和基金产品销售经验； <br />2、具有高度的敬业精神、责任心和使命感；
													<br />3、具有较好的团队合作和奉献精神； <br />4、具有良好的沟通能力及培训、演讲技能； <br />5、熟练掌握各种办公软件。<br />
													<br />
												</div> <strong>专业要求：</strong><br /> 金融相关专业<br /> <br /> <strong>学历要求：</strong>

												本科 <br /> <br /> <!--<strong>性别要求：</strong>
												不限制<br />
											<br /> -->
												<div align="center">
													<input type="button" class="btn btn-primary btn-sm radius"
														onclick="applyJob(657)" value="立即申请">
													<button class="btn btn-primary btn-sm radius"
														style="display: none">分享</button>
												</div></td>
										</tr>
									</form>
								</tbody>
							</table>

							<div id="no_job_hint" style="display: none" align="center">
								暂无相关职位信息</div>

						</div>

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
		var jobtype = getUrlParam("jobType");
		$(function() {
			var options = {
				url : "getDepartName.action?c=" + (jobtype == "CAMPUS" ? 1 : 2),
				type : "post",
				success : function(data) {
					var list = data.depList;
					var html = "<option value=\"\">所有</option>";
					for (var index = 0; index < list.length; index++) {
						html += "<option value=\""+list[index].name+"\">"
								+ list[index].name + "</option>";
					}
					$("#department").html(html);
				},
				async : false,
				dataType : "json",
				resetForm : true,
				timeout : 15000

			};
			$.ajax(options);

			if (jobtype == "CAMPUS") {
				$(".bar_li").removeClass("active");
				$("#campus_bar").addClass("active");
			} else {
				$(".bar_li").removeClass("active");
				$("#society_bar").addClass("active");
			}
			var department = "";
			var workcity = "";
			var searchtext = "";
			for (var i = 0; i < document.getElementById("department").options.length; i++) {
				if (document.getElementById("department").options[i].value == department) {
					document.getElementById("department").options[i].selected = true;
					break;
				}
			}
			for (var i = 0; i < document.getElementById("location").options.length; i++) {
				if (document.getElementById("location").options[i].value == workcity) {
					document.getElementById("location").options[i].selected = true;
					break;
				}
			}
			document.getElementById("searchtext").value = searchtext;
			var jobinfonum = "7";
			if (jobinfonum == 0) {
				$("#no_job_hint").css("display", "block");
			}

			$("#active_bar").val(jobtype == "CAMPUS" ? "campus" : "society"); // note!
		});

		function applyJob(jobid) {
			var user = "com.nfjj.domain.User@30bf1a99";
			if (user == null || user == "") {
				location.href = "tologin.action";
			} else {
				var resumeStatus = "FINISH";
				/* 
				var resumeState = 1;
				if(resumeState == 0) {
					NFCommon.util.showTip("请先完善您的简历后再申请职位", 2000);
					return;
				} */
				if (resumeStatus == "FILL") {
					NFCommon.util.showTip("请先完善您的简历后再申请职位", 2000);
					return;
				}

				//已登录
				var applycount = "";
				if (applycount != null && applycount != "") {
					alert(applycount);
				} else {
					var applyidlist = "[567]";
					if (applyidlist.indexOf(jobid) != -1) {
						NFCommon.util.showTip("您已经申请过该职位，请勿重复申请", 2000);
					} else {
						if (confirm("确认申请该职位吗？")) {
							document.getElementById("campus" + jobid).submit();
						}
					}
				}
			}
		}

		function showJobDesp(ele, jobid) {
			if ($("#job" + jobid).length == 0) {
				return;
			}
			if (document.getElementById("job" + jobid).style.display == "none") {
				document.getElementById("job" + jobid).style.display = "";
				ele.html('<b class="arrow fa fa-angle-up"></b>');
			} else {
				document.getElementById("job" + jobid).style.display = "none";
				ele.html('<b class="arrow fa fa-angle-down"></b>');
			}
		}

		function searchposition() {
			document.getElementById("search").action = "positionSearch.action?jobType="
					+ jobtype;
			document.getElementById("search").submit();
		}

		function getUrlParam(name) {
			var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
			var r = window.location.search.substr(1).match(reg);
			if (r != null)
				return unescape(r[2]);
			return null;
		}

		$(function() {
			if (getUrlParam("jobId") != null) {
				showJobDesp($('#nav' + getUrlParam("jobId")),
						getUrlParam("jobId"));
			}
		});
	</script>
	<script type="text/javascript" src="njs/jquery.validate.js"></script>
	<script type="text/javascript" src="njs/jquery.toastmessage.js"></script>
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