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
<title>留言</title>

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

<link href="frontjsp/assets/css/jquery.toastmessage.css"
	rel="stylesheet" />

<style type="text/css">
#leaveMsg_form label.error {
	color: red;
	margin-left: 5px;
	float: left;
}

.ui-jqgrid-sortable {
	cursor: default !important;
}

.ui-icon-minus {
	width: 16px;
	height: 16px;
	background-image: url(assets/images/ui-icons_469bdd_256x240.png);
	background-position: -48px -128px;
}

.ui-icon-plus {
	width: 16px;
	height: 16px;
	background-image: url(assets/images/ui-icons_469bdd_256x240.png);
	background-position: -16px -128px
}

#gbox_grid-table {
	padding: 20px 0;
}

#grid-table_subgrid {
	width: auto !important;
}
</style>
<script type="text/javascript" src="<link href="frontjsp/assets/js/jquery.toastmessage.css"
	rel="stylesheet" />/jquery.min.js"></script>
<script type="text/javascript"
	src="frontjsp/assets/js/bootstrap.min.js"></script>
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
	var readStatus = "0";
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
	location.href="myQuestion.do";
	
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
							<input type="hidden" id="left_bar" value="question">
							<nav>
								<ul class="nav nav-pills nav-stacked">
									<li class="active_bar" id="my_resume"><a
										href="myRecruit.do"><img
											src="frontjsp/assets/images/resume.png" style="float: left;">&nbsp;简历信息</a></li>
									<li class="active_bar" id="my_apply"><a
										href="myApply.do"><img
											src="frontjsp/assets/images/yingpin.png" style="float: left;">&nbsp;应聘信息</a></li>
									<li class="active_bar" id="my_account"><a
										href="myAccount.do"><img
											src="frontjsp/assets/images/account.png" style="float: left;">&nbsp;账户信息</a></li>
									<li class="active_bar active" id="my_question"><a
										href="myQuestion.do"><img
											src="frontjsp/assets/images/liuyanban.png" style="float: left;">&nbsp;我的留言</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</aside>
				<!-- sidebar end -->
				<div class="main col-md-10" style="padding-bottom: 20px;">
					<div class="tabs-style-2">
						<ul class="nav nav-tabs" role="tablist">
							<li class="active"><a
								href="myQuestion.do"
								role="tab" data-toggle="tab"><i
									class="fa fa-lightbulb-o pr-5"></i>我的留言</a></li>
						</ul>

						<div class="ui-jqgrid ui-widget ui-widget-content ui-corner-all"
							id="gbox_grid-table" dir="ltr" style="width: 778px;">
							<div class="ui-widget-overlay jqgrid-overlay" id="lui_grid-table"></div>
							<div class="loading ui-state-default ui-state-active"
								id="load_grid-table" style="display: none;">查看回复</div>
							<div class="ui-jqgrid-view" id="gview_grid-table"
								style="width: 778px;">
								<div
									class="ui-jqgrid-titlebar ui-jqgrid-caption ui-widget-header ui-corner-top ui-helper-clearfix"
									style="display: none;">
									<a role="link"
										class="ui-jqgrid-titlebar-close ui-corner-all HeaderButton"
										style="right: 0px;"><span
										class="ui-icon ui-icon-circle-triangle-n"></span></a><span
										class="ui-jqgrid-title"></span>
								</div>
								<div class="ui-state-default ui-jqgrid-hdiv"
									style="width: 778px;">
									<div class="ui-jqgrid-hbox">
										<table class="ui-jqgrid-htable" style="width: 778px"
											role="grid" aria-labelledby="gbox_grid-table" cellspacing="0"
											cellpadding="0" border="0">
											<thead>
												<tr class="ui-jqgrid-labels" role="rowheader">
													<th id="grid-table_subgrid" role="columnheader"
														class="ui-state-default ui-th-column ui-th-ltr"
														style="width: 25px;"><div
															id="jqgh_grid-table_subgrid">
															<span class="s-ico" style="display: none"><span
																sort="asc"
																class="ui-grid-ico-sort ui-icon-asc ui-state-disabled ui-icon ui-icon-triangle-1-n ui-sort-ltr"></span><span
																sort="desc"
																class="ui-grid-ico-sort ui-icon-desc ui-state-disabled ui-icon ui-icon-triangle-1-s ui-sort-ltr"></span></span>
														</div></th>
													<th id="grid-table_question" role="columnheader"
														class="ui-state-default ui-th-column ui-th-ltr"
														style="width: 377px;"><span
														class="ui-jqgrid-resize ui-jqgrid-resize-ltr"
														style="cursor: col-resize;">&nbsp;</span>
													<div id="jqgh_grid-table_question"
															class="ui-jqgrid-sortable">
															留言内容<span class="s-ico" style="display: none"><span
																sort="asc"
																class="ui-grid-ico-sort ui-icon-asc ui-state-disabled ui-icon ui-icon-triangle-1-n ui-sort-ltr"></span><span
																sort="desc"
																class="ui-grid-ico-sort ui-icon-desc ui-state-disabled ui-icon ui-icon-triangle-1-s ui-sort-ltr"></span></span>
														</div></th>
													<th id="grid-table_askTime" role="columnheader"
														class="ui-state-default ui-th-column ui-th-ltr"
														style="width: 376px;"><span
														class="ui-jqgrid-resize ui-jqgrid-resize-ltr"
														style="cursor: col-resize;">&nbsp;</span>
													<div id="jqgh_grid-table_askTime"
															class="ui-jqgrid-sortable">
															留言时间<span class="s-ico" style="display: none"><span
																sort="asc"
																class="ui-grid-ico-sort ui-icon-asc ui-state-disabled ui-icon ui-icon-triangle-1-n ui-sort-ltr"></span><span
																sort="desc"
																class="ui-grid-ico-sort ui-icon-desc ui-state-disabled ui-icon ui-icon-triangle-1-s ui-sort-ltr"></span></span>
														</div></th>
												</tr>
											</thead>
										</table>
									</div>
								</div>
								<div class="ui-jqgrid-bdiv" style="height: auto; width: 778px;">
									<div style="position: relative;">
										<div></div>
										<table id="grid-table" tabindex="0" cellspacing="0"
											cellpadding="0" border="0" role="grid"
											aria-multiselectable="false"
											aria-labelledby="gbox_grid-table" class="ui-jqgrid-btable"
											style="width: 778px;">
											<tbody>
												<tr class="jqgfirstrow" role="row" style="height: auto">
													<td role="gridcell" style="height: 0px; width: 25px;"></td>
													<td role="gridcell" style="height: 0px; width: 377px;"></td>
													<td role="gridcell" style="height: 0px; width: 376px;"></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="ui-jqgrid-resize-mark" id="rs_mgrid-table">&nbsp;</div>
						</div>

						<div class="tab-content">
							<form class="form-horizontal" method="post" id="leaveMsg_form"
								onsubmit="return false;" novalidate="novalidate">
								<div class="form-group">
									<div class="col-xs-12 col-sm-8 col-sm-offset-2">
										<textarea id="inputquestion" name="question"
											class="form-control" style="width: 100%; height: 120px;"
											_value=""></textarea>
										<span style="float: right">（<span id="leftCnt"
											style="color: red">0</span>/200字）
										</span>
									</div>
								</div>

								<div class="form-group text-center">
									<button type="submit" class="btn btn-default" id="leaveMsgBtn">我要留言</button>
								</div>
							</form>
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

	<script src="frontjsp/assets/js/jquery.jqGrid.src.js"></script>
	<script type="text/javascript">
	$(function() {
		
		var grid_data = [];
		$("#grid-table").jqGrid({
			data : grid_data,  
			datatype: "local",
			height: "auto",
			autowidth : true,
		   	colNames:['留言内容', '留言时间'],
		   	colModel:[
		   		{name:'question', index:'question', sortable:false},
		   		{name:'askTime', index:'askTime', sortable:false}	
		   	],
			caption: "",
			rowNum:grid_data.length,
			loadtext:"查看回复",
			subGrid: true,
			ondblClickRow : function(rowid) {
				$("#"+rowid).children().first().trigger("click");
				return false;
			},
			subGridRowExpanded: function(subgrid_id, row_id) {
				var data = [];
				if(grid_data[row_id-1].answerTime.length > 0) {
					data.push(grid_data[row_id-1]);
				}
				
	            var subgrid_table_id = subgrid_id + "_t";
	            $("#" + subgrid_id).html("<table id='"+subgrid_table_id+"'></table>");
	            $("#" + subgrid_table_id).jqGrid({  
	                data: data,
	                autowidth : true,
	                datatype: "local",  
	                colNames: ['回复内容', '回复时间'],  
	                colModel: [  
	       	            {name:'answers', index:'answers', sortable:false},
	       	            {name:'answerTime', index:'answerTime', sortable:false}			
	                ],
	                height: "auto"
	           });  
	        }  	
		});

		document.onselectstart = function(){return false;};

		$("#leaveMsg_form").validate({
			rules : {
				question : {
					required : true,
				}
			},
			messages : {
				question : {
					required : "留言不能为空",
				}
			}
		});

		$("#inputquestion").keyup(function() {
			var MAX_LEN = 200;
			var curLength = $("#inputquestion").val().length;
			if(curLength > MAX_LEN) {
				$("#inputquestion").val($("#inputquestion").val().substr(0, MAX_LEN));
				curLength = MAX_LEN;
				alert("您的输入已经超过字数限制！" );
			}
			$("#leftCnt").text(curLength);
		});

		$("#leaveMsgBtn").click(function() {
			if(!$("#leaveMsg_form").valid()) {
				return;
			}
			var options = {
				url : "leaveQuestionMsg.do",
				type : "post",
				success : function(data, statusText) {
					if (typeof(data) == "undefined") {
						NFCommon.util.showError(ERROR_MSG, 2000);
						return;
					}				
					
					if (data.code == 'login') {
						resetFormValue();
						location.href = "tologin.do";
					}
					else if (data.code == 'success') {
						resetFormValue();
						location.reload();
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
				data : $("#leaveMsg_form").serialize()
			};
		    $.ajax(options);
		});
	});

	function is_form_changed() {
		var is_changed = false; 

        $("#leaveMsg_form textarea").each(function() {
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
		$("#leaveMsg_form textarea").each(function() {
	        $(this).attr('_value', $(this).val());
	    }); 
	}
	
	$(document).ready(resetFormValue); 
	
	window.onbeforeunload = function() {
	    if(is_form_changed()) {
	        return "您当前的编辑内容没有保存，确定离开吗？";
	    }
	}
	</script>
	<script type="text/javascript"
		src="frontjsp/assets/js/jquery.validate.js"></script>
	<script type="text/javascript"
		src="frontjsp/assets/js/jquery.toastmessage.js"></script>
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