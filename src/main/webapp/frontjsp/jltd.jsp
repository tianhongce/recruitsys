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
		<meta name="viewport" content="width=device-width, initial-scale=1.0" /> <!-- Mobile Meta -->
		<link rel="shortcut icon" href="frontjsp/assets/images/favicon.ico" />
		<title>我的应聘</title>
		
		<script type="text/javascript">
		if (!window.applicationCache) {
			 self.location = "validateHtml5.action";
        }
		</script>
		
		<link href="frontjsp/assets/css/bootstrap.css" rel="stylesheet" />
		<link href="frontjsp/assets/css/font-awesome.css" rel="stylesheet" />		
		<link href="frontjsp/assets/css/style.css" rel="stylesheet" />
		<link href="frontjsp/assets/css/skins/blue.css" rel="stylesheet" />
		<link href="frontjsp/assets/css/jquery.toastmessage.css" rel="stylesheet" />
		
		<link rel="stylesheet" href="frontjsp/assets/css/skins/blue.css" />
	<link rel="stylesheet" href="frontjsp/assets/css/ui.jqgrid.css" />
	<style type="text/css">
	.table-striped td {
		vertical-align: middle !important;
	}
	.alert:before {
		position:relative;
	}
	.alert.alert-info:after {
		content: "";
	}
	.layout:hover{text-decoration: underline;color: #3299cc}
	.text_mid {
		text-align:center;
	}
	.td_title {
		font-weight:bold;
	}
	
	.upload_error {
		color:red;
	}
	.op_block {
		float: right;
		margin-right:192px;
	}
	.ajax-file-upload-statusbar {
		display:none
	}
	.fileinput-button {
    	cursor:pointer;
    }
	.fileinput-button input {
        position: absolute;
        top: 0;
        margin: 0;
        opacity: 0;
        filter:alpha(opacity: 0);
        -ms-filter: 'alpha(opacity=0)';
        -moz-opacity:0;
        font-size: 1px;
        direction: ltr;
        cursor: pointer;
        width: 16px;
        height: 16px;
        cursor:pointer;
    }
    .form-group {
        margin-bottom: 30px;
        padding-top: 20px;
    }
    .ctype.btn {
        display: inline;
    }    
    .blue_icon {
    	color:#428bca;
    }
    .left {
    	float:left;
    	margin-right:5px;
    	position:relative;
    }
	</style>
</head>
	<script type="text/javascript" src="frontjsp/assets/plugins/jquery.min.js"></script>
	<script type="text/javascript" src="frontjsp/assets/bootstrap/js/bootstrap.min.js"></script>

	<body class="front">
		<div class="page-wrapper">
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
</script><section class="main-container">
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
			<input type="hidden" id="left_bar" value="resume">
			<nav>
				<ul class="nav nav-pills nav-stacked">
					<li class="active_bar" id="my_resume"><a href="myRecruit.action"><img src="frontjsp/assets/images/resume.png" style="float:left;" />&nbsp;简历信息</a></li>
					<li class="active_bar" id="my_apply"><a href="myApply.action"><img src="frontjsp/assets/images/yingpin.png" style="float:left;" />&nbsp;应聘信息</a></li>
					<li class="active_bar" id="my_account"><a href="myAccount.action"><img src="frontjsp/assets/images/account.png" style="float:left;" />&nbsp;账户信息</a></li>
					<li class="active_bar" id="my_question"><a href="myQuestion.action"><img src="frontjsp/assets/images/liuyanban.png" style="float:left;" />&nbsp;我的留言</a></li>
				</ul>
			</nav>
		</div>
	</div>
</aside>
<!-- sidebar end --><div class="main col-md-10">
	<div class="tabs-style-2">
		<!-- Nav tabs -->
		<ul class="nav nav-tabs" role="tablist">
		    <li class="active"><a href="#h2tab3" role="tab" data-toggle="tab"><i class="fa fa-user pr-5"></i>简历</a></li>
				<li><a href="#h2tab2" role="tab" data-toggle="tab"><i class="fa fa-cloud-upload pr-5"></i>附件上传</a></li>
			</ul>
		<!-- Tab panes -->
		<div class="tab-content">
			<div class="tab-pane fade in active" id="h2tab3">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>类型</th>
							<th>创建时间</th>
							<th>状态</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<tr>
								<td>
									中文</td>
								<td>2016-05-20 17:03</td>
								<td>已完善</td>
								<td>
								    <a class="btn btn-sm radius btn-primary" href="fillResume.action?from=edit">编辑</a>
								    <a class="btn btn-sm radius btn-info" target="_blank" href="viewCNResume.action">预览</a>
								    	<a class="btn btn-sm radius btn-success" onclick="exportResume('CN','162047','1456650229');return false;" href="#">导出</a>
								    <a class="btn btn-sm radius btn-dark" onclick="deleteResume('CN');return false;" href="#">删除</a>
								</td>
							</tr>
						</tbody>
				</table>
		   </div>
			<div class="tab-pane fade" id="h2tab2" style="margin-top:-20px;">
			<div>
			<form method="post" action="imgLoad.action" enctype="multipart/form-data">
				<table class="table table-striped" >
					<thead>
						<tr>
							<th style="width:20%">类型</th>
							<th class="text_mid" style="width:20%">是否上传</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="td_title">个人照片</td>
							<td class="text_mid">否</td>
							<td class="text_mid">
								<div class="op_block">
								    <a class="btn btn-sm radius btn-info" state="0" type="photo" name="previewAttach">预览</a>
								    <a class="btn btn-sm radius btn-dark" state="0" type="photo" name="deleteAttach">删除</a>
								</div>
								<div class="op_upload">
	                        		<a class="btn btn-sm radius btn-success" state="0" type="photo" name="uploadAttach">上传</a>
	                        	</div>
	                        </td>						
						</tr>
						<tr>
							<td class="td_title">身份证/护照</td>
							<td class="text_mid">否</td>
							<td class="text_mid">
		                        <div class="op_block">
								    <a class="btn btn-sm radius btn-info" state="0" type="id_card" name="previewAttach">预览</a>
								    <a class="btn btn-sm radius btn-dark" state="0" type="id_card" name="deleteAttach">删除</a>
								</div>
								<div class="op_upload">
									<a class="btn btn-sm radius btn-success" state="0" type="id_card" name="uploadAttach">上传</a>
								</div>
	                        </td>						
						</tr>
						<tr>
							<td class="td_title">其他证书</td>
							<td class="text_mid">否</td>
						    <td class="text_mid">
								<div class="op_block" style="margin-right:275px;">
									<a href="#h2tab0" role="tab" data-toggle="tab" class="btn btn-sm radius btn-success">上传</a>
									<a href="#h2tab4" role="tab" data-toggle="tab" class="btn btn-sm radius btn-info" id="updown">
									<i class="fa fa-angle-double-down pr-5">&nbsp;展开</i></a>
								</div>
	                        </td>
						</tr>						
						<div class="tab-pane fade" id="h2tab4" style="margin-top:-20px;">
				            <table id="othercert" class="table table-striped" style="display: none;">
					            <thead>
						            <tr>
							            <th style="width:20%">文件名称</th>
							            <th style="width:20%"></th>
							            <th>操作</th>
						            </tr>
					            </thead>
					            <tbody id="typelist">
				                </tbody>
			                </table>
			            </div>
					</tbody>
				</table>
				<input type="hidden" id="fileName" name="fileName" value=""/> 
				</form>
					</div>
				<div class="tab-pane fade" id="h2tab0" style="margin-top:-20px;">
			    <form id="othertype_form" enctype="multipart/form-data">
			        <table class="table table-striped" >
					<thead>
						<tr>
							<th width="60%" style="text-align: center;"><span id="tip"></span></th>
							<th width="40%" style="text-align: center;"><a class="ctype btn btn-sm radius btn-success" id="addcert"><i class="fa fa-plus pr-5">&nbsp;增加</i></a></th>
						</tr>
					</thead>
					</table>
			        <div id="certtype"></div>
		            <div class="space"></div>
			        <div style="text-align: center;">
			        	<a class="btn btn-sm radius btn-default" id="saveBtn">上传</a>
			        	<a class="btn btn-sm radius btn-dark" href="#h2tab2" role="tab" data-toggle="tab" id="backBtn">返回</a>
			        </div>
		        </form>
		        
			    </div>
				<div style="font-size:14px;">
				    <p style="margin-bottom:10px !important;color: gray;">
				        <i class="ace-icon fa fa-warning fa-exclamation-triangle"></i>
				                        文件上传类型仅支持：jpeg,jpg,gif,png   &nbsp;文件上传最大：1MB
				    </p>
			    </div>
		    </div>
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
		
		<script type="text/javascript" src="frontjsp/assets/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="adminfrontjsp/assets/js/jqGrid/jquery.jqGrid.src.js"></script>
	<script type="text/javascript" src="frontjsp/assets/js/jquery.fileupload.js"></script>
	<script type="text/javascript" src="frontjsp/assets/js/ajaxfileupload.js"></script>
	<script type="text/javascript">
	    var count = 0;
	    var tcount = 0;
		function exportResume(type, id, time) {
			window.open("/nfjjRecruitSystem/exportResume.action?type="+type);
			//window.open("/nfjjRecruitSystem/exportResumes.action?type="+type+"&user_emails="+encodeURIComponent("a@b.com")+"&user_emails="+encodeURIComponent("b@c.com"));
		}
		
		function deleteResume(type) {
			if(!confirm("您确认要删除吗？")) {
				return;
			}

			var options = {
				url : "deleteResume.action",
				type : "post",
				success : function(data, statusText) {
					if (typeof(data) == "undefined") {
						NFCommon.util.showError(ERROR_MSG, 2000);
						return;
					}				
					
					if (data.code == 'login') {
						location.href = "tologin.action";
					}
					else if (data.code == 'success') {
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
				timeout : 15000,
				data : "type="+type
			};
		    $.ajax(options);
		}
		
		/* 获取其他上传证书列表 */
		function showOthersList(){
			var options = {
				url : "getAttachBatch.action",
				type : "post",
				success : function(data, statusText) {
					if(data != null)
						tcount = data.count;
					var html = "";
					var tipHtml = "您目前已上传&nbsp;"+data.count+"&nbsp;张证书，还可继续上传&nbsp;"+(10-data.count)+"&nbsp;张证书";
					var tlist = data.tfiles;
					if(tlist != null){
						for(var i in data.tfiles){							
							html += "<tr><td class=\"td_title\">"+data.tfiles[i].fileName+"</td><td class=\"text_mid\"></td>"+
							        "<td class=\"text_mid\"><div class=\"op_block\">"+
							        "<a class=\"btn btn-sm radius btn-info\" style=\"margin-right:8px;\" type=\"other_cert\" onclick=\"previewOthers(this);\">预览</a>"+
							        "<a class=\"btn btn-sm radius btn-dark\" type=\"other_cert\" onclick=\"deleteOthers(this);\">删除</a></div>"+
							        "<div class=\"op_upload\"><a class=\"btn btn-sm radius btn-success\" type=\"other_cert\" onclick=\"uploadOthers(this);\">上传</a> </div></td></tr>";
						}
					}					
					$("#typelist").html(html);	
					$("#tip").html(tipHtml);
				},
				async : false,
				dataType: "json",
				timeout : 15000
			};
			$.ajax(options);
		}
		
		function uploadOthers(obj){
			var subtype = $(obj).parent().parent().parent().find("td").eq(0).text();
			$(obj).uploadFile({
				url:"uploadAttach.action",
				fileName:"filepath",
				formData:{"type":$(obj).attr("type"),"ctype":subtype},
				allowedTypes:"jpeg,jpg,png,gif",
				dragDrop:false,
				maxFileSize:1024*1024,
				multiple:false,
				maxFileCountErrorStr:"文件过大，最大",
				extErrorStr:"不允许上传该类型文件，只允许",
				uploadButtonClass:"btn btn-sm radius btn-success",
				onSuccess : function(files, response) {
					NFCommon.util.showSuccess("上传成功", 2000);
					element.parent().parent().prev().text("是");
					element.parent().prev().find("a").attr("state", "1");
				},
				onError : function(files, status, message, pd) {
					NFCommon.util.showError("上传失败，请稍候重试", 2000);
				}
			});
		}
		
		function previewOthers(obj){
			var subtype = $(obj).parent().parent().parent().find("td").eq(0).text();
			window.open('/nfjjRecruitSystem/getAttach.action?type='+$(obj).attr("type")+'&ctype='+encodeURIComponent(encodeURIComponent(subtype)));
		}
		
		function deleteOthers(obj){
			var subtype = $(obj).parent().parent().parent().find("td").eq(0).text();
			if(!confirm("您确认要删除吗？")) {
				return;
			}
			var options = {
				url : "delAttach.action",
				type : "post",
				success : function(data, statusText) {
					if (typeof(data) == "undefined") {
						NFCommon.util.showError(ERROR_MSG, 2000);
						return;
					}										
					if (data.code == 'login') {
						location.href = "tologin.action";
						return;
					}

					if (data.code == 'success') {
						showOthersList();
						$(obj).parent().parent().parent().remove();
						$("#othercert").parent().parent().find("tr").each(function(){
						    if($(this).find("td").eq(0) == "其他证书"){
						    	$(this).find("td").next().text("否");
						    }
						});							
						NFCommon.util.showSuccess(data.message, 2000);
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
				timeout : 15000,
				data : "type="+$(obj).attr("type")+"&ctype="+encodeURIComponent(encodeURIComponent(subtype))
			};
		    $.ajax(options);
		}

		$(function() {
			showOthersList();
			var subtype = "";			
			$("[name='uploadAttach']").each(function() {
				var element = $(this);
				
				$(this).uploadFile({
					url:"uploadAttach.action",
					fileName:"filepath",
					formData:{"type":$(this).attr("type")},
					allowedTypes:"jpeg,jpg,png,gif",
					dragDrop:false,
					maxFileSize:1024*1024,
					multiple:false,
					maxFileCountErrorStr:"文件过大，最大",
					extErrorStr:"不允许上传该类型文件，只允许",
					uploadButtonClass:"btn btn-sm radius btn-success",
					onSuccess : function(files, response) {
						NFCommon.util.showSuccess("上传成功", 2000);
						element.parent().parent().prev().text("是");
						element.parent().prev().find("a").attr("state", "1");
					},
					onError : function(files, status, message, pd) {
						NFCommon.util.showError("上传失败，请稍候重试", 2000);
					}/*,
					onSubmit : function() {
						if(element.attr("state") == 1 && !confirm("您确认要重新上传吗？（将覆盖原有附件）")) {
							return false;
						}
						return true;
					}*/
				});
			});
			
			$("[name='previewAttach']").each(function() {
				$(this).bind("click", function() {
					if($(this).attr("state") == 0) {
						NFCommon.util.showTip("您尚未上传该附件", 2000);
						return;
					}
					window.open('/nfjjRecruitSystem/getAttach.action?type='+$(this).attr("type"));
				});
			});
			
			$("[name='deleteAttach']").each(function() {
				var element = $(this);
				$(this).bind("click", function() {
					if($(this).attr("state") == 0) {
						NFCommon.util.showTip("您尚未上传该附件", 2000);
						return;
					}
							
					if(!confirm("您确认要删除吗？")) {
						return;
					}

					var options = {
						url : "delAttach.action",
						type : "post",
						success : function(data, statusText) {
							if (typeof(data) == "undefined") {
								NFCommon.util.showError(ERROR_MSG, 2000);
								return;
							}				
							
							if (data.code == 'login') {
								location.href = "tologin.action";
							}
							else if (data.code == 'success') {
								element.parent().parent().prev().text("否");
								element.parent().parent().find("a").attr("state", "0");
								NFCommon.util.showSuccess(data.message, 2000);
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
						timeout : 15000,
						data : "type="+$(this).attr("type")
					};
				    $.ajax(options);
				});
			});
						
			$("#updown").click(function() {
			    $(this).html($("#othercert").is(":hidden") ? "<i class=\"fa fa-angle-double-up pr-5\">&nbsp;收起</i>" : "<i class=\"fa fa-angle-double-down pr-5\">&nbsp;展开</i>");
			    $("#othercert").slideToggle();
			});
                           
            $("#addcert").click(function(){ 
            	count ++;
            	var html = "<div class=\"form-group\"><label for=\"c_type\" class=\"left\">证件类型名称：</label>"+
            	           "<div class=\"col-md-5\"><input type=\"text\" style=\"width:100%;\" id=\"c_type"+(count-1)+"\" name=\"c_type\" maxlength=\"20\"/>"+
            	           "</div><div class=\"left\"><span class=\"fileinput-button\" title=\"选择文件\"><i class=\"fa fa-file pr-5 blue_icon\"></i><input type=\"file\" id=\"c_file"+(count-1)+"\" name=\"files\" onchange=\"changeCss(this);\" multiple /></span></div>"+
            	           "<a class=\"left\" href=\"javascript:;\" title=\"删除\" style=\"cursor:pointer;\" onclick=\"delDiv(this);return false;\"><i class=\"fa fa-minus-square pr-5\"></i></a></div>";     	 
            	if(count < (11-tcount)){
            		$("#certtype").append(html);          		
            	}else{
            		NFCommon.util.showTip("您最多只能添加10张证书！", 2000);
            		return false;
            	} 
            });
                       
            $("[name='c_type']").each(function(){    	
            	$(this).bind('input propertychange', function() {
            		var ctype = $("#c_type"+count).val();
            		if(ctype.length > 20){
                		NFCommon.util.showTip("输入的证书类型不能超过20个汉字", 2000);
                		return;
                	}
            	});
            });
            
            $("#saveBtn").click(function(){            	
            	var ctype = [];
            	var type = "";
            	$("[name='c_type']").each(function(i){ 
            		ctype.push($("#c_type"+i).val());
            	});
            	           	
            	for(var i in ctype) {
            		var reg = /^[\u4e00-\u9fa5a-zA-Z0-9]+$/gi;  
                    if (!reg.test(ctype[i])) {  
                    	NFCommon.util.showTip("证件类型名称不能含有特殊字符", 2000);
                    	$("#c_type"+i).focus(); 
                    	return;
                    }
            		if(ctype[i] == "" || typeof(ctype[i]) == "undefined") {
            			$("#c_type"+i).focus();
            			NFCommon.util.showTip("请填写需要上传的证件类型名称", 2000);
            			return;
            		}
            	}

            	for(var i in ctype) {	
           			var typeJson = "";          	
                   	for(var i=0;i<ctype.length;i++){
                   		typeJson += ctype[i] + ",";
                   	}
                   	var reg=/,$/gi;
                   	typeJson = typeJson.replace(reg,"");
                   	var files = [];
                   	var filelist = $("#certtype").find(":file");
                   	for(var i=0;i<filelist.length;i++){
                   		files.push(filelist[i].id);
                   	}
                   	
                   	$.ajaxFileUpload({
                       	url : 'uploadAttachBatch.action',
                       	secureuri : false,
                       	fileElementId : files,
                       	dataType : 'json',
                       	data : {"ctype":typeJson},
                       	success : function(data, status) {
                           	NFCommon.util.showSuccess("上传成功！", 2000);
                           	showOthersList();
                           	$("#othertype_form")[0].reset();
                           	$("#certtype").remove();
                           	$("#certtype").find(":file").prev().removeClass().addClass("fa fa-file pr-5");
                        },
                        error : function(){
                            NFCommon.util.showError("上传失败，请稍候重试", 2000);
                            $("#othertype_form")[0].reset();
                        }
                    });
            	}          	         		
		    });
		});
		
		function delDiv(obj){						
			$(obj).parent().parent().remove();
			if(count != 0){
				count = count - 1;
			}
		}
		
		function changeCss(obj){ 
			$(obj).prev().removeClass().addClass("fa fa-check-square pr-5 blue_icon");
		}
		
	</script>
<script type="text/javascript" src="frontjsp/assets/jquery.validate.js"></script>
		<script type="text/javascript" src="frontjsp/assets/js/jquery.toastmessage.js"></script>
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