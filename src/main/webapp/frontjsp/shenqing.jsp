<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<!-- saved from url=(0054)http://www.nffund.com/nfjjRecruitSystem/myApply.action -->
<html lang="en">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="description" content="南方基金人才招聘">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Mobile Meta -->
<link rel="shortcut icon"
	href="../nimages/favicon.ico">
<title>南方基金人才招聘-我的申请</title>

<script src="../njs/hm.js"></script>
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

<link rel="stylesheet" href="../ncss/blue.css">
<script type="text/javascript" src="../njs/jquery.min.js"></script>
<script type="text/javascript"
	src="../njs/bootstrap.min.js"></script>
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
							<div class="btn-group dropdown" style="display: inline-block;"
								id="welcome">
								<button type="button" class="btn"
									onclick="location.href=&#39;myRecruit.action&#39;;">
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
									onclick="location.href=&#39;logout.action&#39;">
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
							<a href="http://www.nffund.com/nfjjRecruitSystem/"><img
								id="logo" src="../nimages/index_logo.jpg" alt="南方基金"></a>
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
											<li class="bar_li" id="home_bar"><a
												href="http://www.nffund.com/nfjjRecruitSystem/index.action">招聘首页</a></li>
											<li class="bar_li" id="forum_bar"><a
												href="http://www.nffund.com/jforum/" target="_blank">未来之星</a></li>
											<li class="bar_li" id="campus_bar"><a
												href="http://www.nffund.com/nfjjRecruitSystem/job_position.action?jobType=CAMPUS">校园招聘</a></li>
											<li class="bar_li" id="society_bar"><a
												href="http://www.nffund.com/nfjjRecruitSystem/job_position.action?jobType=SOCIETY">社会招聘</a></li>
											<li class="bar_li active" id="personal_bar"><a
												href="http://www.nffund.com/nfjjRecruitSystem/myRecruit.action">我的应聘</a></li>
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
		<section class="main-container">
			<div class="container">
				<script type="text/javascript">
	$(function() {
		setActiveLeftBar();
	});

	function setActiveLeftBar() {
		$(".active_bar").removeClass("active");
		var left_active_bar = $("#left_bar").val();
		$("#my_" + left_active_bar).addClass("active");
	}
	/*
	resume -- 简历信息
	apply -- 应聘信息
	account -- 账户信息
	question -- 留言板
	hotpot -- 热点问题
	*/
</script>


				<!-- sidebar start -->
				<aside class="col-md-2">
					<div class="sidebar">
						<div class="block clearfix">
							<h3 class="title">我的应聘</h3>
							<div class="separator"></div>
							<input type="hidden" id="left_bar" value="apply">
							<nav>
								<ul class="nav nav-pills nav-stacked">
									<li class="active_bar" id="my_resume"><a
										href="http://www.nffund.com/nfjjRecruitSystem/myRecruit.action"><img
											src="../nimages/resume.png" style="float: left;">&nbsp;简历信息</a></li>
									<li class="active_bar active" id="my_apply"><a
										href="http://www.nffund.com/nfjjRecruitSystem/myApply.action"><img
											src="../nimages/yingpin.png" style="float: left;">&nbsp;应聘信息</a></li>
									<li class="active_bar" id="my_account"><a
										href="http://www.nffund.com/nfjjRecruitSystem/myAccount.action"><img
											src="../nimages/account.png" style="float: left;">&nbsp;账户信息</a></li>
									<li class="active_bar" id="my_question"><a
										href="http://www.nffund.com/nfjjRecruitSystem/myQuestion.action"><img
											src="../nimages/liuyanban.png"
											style="float: left;">&nbsp;我的留言</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</aside>
				<!-- sidebar end -->
				<div class="main col-md-10" style="padding-bottom: 20px;">
					<!-- tabs start -->
					<div class="tabs-style-2">
						<!-- Nav tabs -->
						<ul class="nav nav-tabs" role="tablist">
							<li class="active"><a
								href="http://www.nffund.com/nfjjRecruitSystem/myApply.action#h2tab1"
								role="tab" data-toggle="tab"><i
									class="fa fa-credit-card pr-5"></i>申请记录</a></li>
						</ul>
						<!-- Tab panes -->
						<div class="tab-content">
							<table class="table table-striped">
								<thead>
									<tr>
										<th>职位名称</th>
										<th>部门</th>
										<th>招聘进度</th>
										<th>申请日期</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<form id="myApply152689" name="myApply" method="post"
										action="http://www.nffund.com/nfjjRecruitSystem/cancel.action?recordId=152689"></form>
									<tr style="cursor: pointer"
										onclick="showJobDesp(152689);return false;">
										<td>2016校园招聘-软件工程师</td>
										<td>信息技术部</td>
										<td>投递成功</td>
										<td>2016-02-28</td>
										<td><a
											href="http://www.nffund.com/nfjjRecruitSystem/myApply.action#"
											onclick="javascript:deleteRecord(152689);return false;">撤销</a></td>
									</tr>
									<tr id="job152689" style="display: none">
										<td colspan="6"><strong>职位描述：</strong> <br> <br>
											<strong>职位要求：</strong> <br>
											<div style="line-height: 2">
												1、 熟悉软件开发及数据挖掘、算法设计、程序开发、架构设计等系统规划和开发工作；<br>2、计算机及相关专业，硕士学历；<br>3、优秀的计算机软件知识基础至少熟悉两种主流开发语言，熟悉Web
												Service、BPM技术核心；<br>4、具有较好的沟通能力、敬业精神；<br>5、限2016年毕业应届毕业生。
											</div> <br></td>
									</tr>


								</tbody>
							</table>
						</div>
					</div>
					<!-- tabs end -->
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
    function deleteRecord(recordId)
    {
    	if(confirm("确认撤销该投递吗？"))
        {   
             document.getElementById("myApply"+recordId).submit(); 
        }
    }
    
    function showJobDesp(jobid) {
    	if (document.getElementById("job" + jobid).style.display == "none") {
	        document.getElementById("job" + jobid).style.display = "";
	    }
	    else {
	        document.getElementById("job" + jobid).style.display = "none";
	    }
    }
	</script>
	<script type="text/javascript" src="../njs/jquery.validate.js"></script>
	<script type="text/javascript" src="../njs/jquery.toastmessage.js"></script>
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

</body>
</html>