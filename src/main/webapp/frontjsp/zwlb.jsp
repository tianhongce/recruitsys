<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
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
<title>招聘岗位</title>

<script type="text/javascript">
	if (!window.applicationCache) {
		self.location = "validateHtml5.action";
	}
</script>

<link href="frontjsp/assets/css/bootstrap.css" rel="stylesheet" />
<link href="frontjsp/assets/css/font-awesome.css" rel="stylesheet" />
<link href="frontjsp/assets/css/style.css" rel="stylesheet" />
<link href="frontjsp/assets/css/blue.css" rel="stylesheet" />
<link href="frontjsp/assets/css/jquery.toastmessage.css"
	rel="stylesheet" />

</head>
<script type="text/javascript" src="frontjsp/assets/js/jquery.min.js"></script>
<script type="text/javascript" src="frontjsp/assets/js/bootstrap.min.js"></script>

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
						<form id="search" name="search" method="post" action="searchPos.do">
							<div style="margin-top: 20px;">
								<h6>部 门：</h6>
								<select id="department" name="dept" class="form-control">
											<option value="">请选择</option>
											<option value="研发部">研发部</option>
											<option value="测试部">测试部</option>
											<option value="设计部">设计部</option>
											<option value="策划部">策划部</option>
											<option value="运营部">运营部</option>
											<option value="市场部">市场部</option>
											<option value="客服部">客服部</option>
											<option value="管理">管理</option>
								</select>
							</div>
							<div style="margin-top: 20px;">
								<h6>公司：</h6>
								<select id="department" name="company" class="form-control">
											<option value="">请选择</option>
											<option value="A公司">A公司</option>
											<option value="B公司">B公司</option>
								</select>
							</div>
							<div style="margin-top: 20px;">
								<h6>工作地点：</h6>
								<select class="form-control" id="location" name="place">
										<option value="">请选择</option>
										<option value="北京">北京市</option>
                                         <option value="浙江省">浙江省</option>
                                         <option value="天津市">天津市</option>
                                         <option value="安徽省">安徽省</option>
                                         <option value="上海市">上海市</option>
                                         <option value="福建省">福建省</option>
                                         <option value="重庆市">重庆市</option>
                                         <option value="江西省">江西省</option>
                                         <option value="山东省">山东省</option>
                                         <option value="河南省">河南省</option>
                                         <option value="湖北省">湖北省</option>
                                         <option value="湖南省">湖南省</option>
                                         <option value="广东省">广东省</option>
                                         <option value="海南省">海南省</option>
                                         <option value="山西省">山西省</option>
                                         <option value="青海省">青海省</option>
                                         <option value="江苏省">江苏省</option>
                                         <option value="辽宁省">辽宁省</option>
                                         <option value="吉林省">吉林省</option>
                                         <option value="台湾省">台湾省</option>
                                         <option value="河北省">河北省</option>
                                         <option value="贵州省">贵州省</option>
                                         <option value="四川省">四川省</option>
                                         <option value="云南省">云南省</option>
                                         <option value="陕西省">陕西省</option>
                                         <option value="甘肃省">甘肃省</option>
                                         <option value="黑龙江省">黑龙江省</option>
                                         <option value="香港特别行政区">香港特别行政区</option>
                                         <option value="澳门特别行政区">澳门特别行政区</option>
                                         <option value="广西壮族自治区">广西壮族自治区</option>
                                         <option value="宁夏回族自治区">宁夏回族自治区</option>
                                         <option value="新疆维吾尔自治区">新疆维吾尔自治区</option>
                                         <option value="内蒙古自治区">内蒙古自治区</option>
                                         <option value="西藏自治区">西藏自治区</option>
								</select>
							</div>
							<div style="margin-top: 20px;">
								<h6>岗位名称 ：</h6>
								<input type="text" id="searchtext" name="posname"
									class="form-control" maxlength=8 />
							</div>
							<div style="margin-top: 20px; align: center;">
								<input type="submit"  value="搜索">
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
										<th style="width: 18%;">职位名称</th>
										<th style="width: 13%;">所属部门</th>
										<th style="width: 14%;">所属公司</th>
										<th style="width: 12%;">工作地点</th>
										<th style="width: 12%;">招聘人数</th>
										<th style="width: 18%;">截止时间</th>
										<!-- <th style="width: 20%;">岗位介绍</th> -->
										<th style="width: 10%;">申请</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="pos" items="${poslist}" varStatus="stat">
									<form name="campus" method="post" action="">
										<tr style="cursor: pointer">
											<td>${pos.posname}</td>
											<td>${pos.dept}</td>
											<td>${pos.company}</td>
											<td>${pos.place}</td>
											<td>${pos.num}</td>
											<td><fmt:formatDate value="${pos.endtime }" pattern="yyyy-MM-dd" /> </td>
											<%-- <td>${pos.posdesc}</td> --%>
											<td>申请</td>
											<%-- <td><span id="${pos.posname}"><b
													class="arrow fa fa-angle-down"></b></span></td> --%>
										</tr>
										<%-- <tr id="${pos.posnum}" style="display: none">
											<td colspan="6">
											<strong>职位所属公司：</strong><br />
												${pos.company}<br /> <br />
											<strong>职位描述：</strong><br />
												${pos.posdesc}<br /> <br />
											<strong>职位要求：</strong><br /> 
												${pos.posreq}<br /> <br />
												
												<div align="center">
													<input type="button" class="btn btn-primary btn-sm radius"
														onclick="applyJob(667)" value="立即申请">
													<button class="btn btn-primary btn-sm radius"
														style="display: none">分享</button>
												</div></td>
										</tr> --%>
									</form>
									</c:forEach>
									
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
	<script type="text/javascript"
		src="frontjsp/assets/js/jquery.validate.js"></script>
	<script type="text/javascript"
		src="frontjsp/assets/js/jquery.toastmessage.js"></script>
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