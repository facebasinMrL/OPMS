<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html style="" lang="en">
<head>
<meta charset="UTF-8">
<title>OPMS管理系统</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="author" content="lock">
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/img/favicon.ico" type="image/png">
<link href="<%=request.getContextPath()%>/css/style.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/style-responsive.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/jquery-ui-1.10.3.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/default.css"
	rel="stylesheet">
</head>
<body class="sticky-header">
	<section>
	      <div class="left-side sticky-left-side" style="overflow: hidden;" tabindex="5000">
        <div class="logo">
            <a href="#">
                <img src="img/logo-left.png" alt="OPMS管理系统">
            </a>
        </div>
        <div class="logo-icon text-center">
            <a href="#">
                <img src="img/logo_icon.png" style="width: 40px;" alt="OPMS管理系统">
            </a>
        </div>
        <div class="left-side-inner">
            <div class="visible-xs hidden-sm hidden-md hidden-lg">
                <div class="media logged-user">
                    <img alt="libai" src="img/96d7546cbe9cbe9e36ce11ffd9afcc95-cropper.jpg" class="media-object">
                    <div class="media-body">
                        <h4>
                            <a href="">${sessionScope.user.username}</a>
                        </h4>
                        <span>OPMS系统</span>
                    </div>
                </div>
                <h5 class="left-nav-title">控制台</h5>
                <ul class="nav nav-pills nav-stacked custom-nav">
                    <li>
                        <a href="">
                            <i class="fa fa-user"></i>
                            <span>个人设置</span>
                        </a>
                    </li>
                    <li>
                        <a href="tologout">
                            <i class="fa fa-sign-out"></i>
                            <span>退出</span></a>
                    </li>
                </ul>
            </div>

            <ul class="nav nav-pills nav-stacked custom-nav js-left-nav">
                <li class="">
                    <a href="#">
                        <i class="fa fa-home"></i>
                        <span>我的主页</span>
                    </a>
                </li>
                <li class="">
                    <a href="listProjectInfo">
                        <i class="fa fa-book"></i>
                        <span>项目管理</span>
                    </a>
                </li>
                <li>
                    <a href="listCheckworkbyuserid">
                        <i class="fa fa-tasks"></i>
                        <span>考勤管理</span>
                    </a>
                </li>
                <li>
                    <a href="approvalindex">
                        <i class="fa fa-suitcase"></i>
                        <span>审批管理</span>
                    </a>
                </li>
                <li>
                    <a href="all_knowledge_manage">
                        <i class="fa fa-tasks"></i>
                        <span>知识分享</span>
                    </a>
                </li>
                <li>
                    <a href="listAlbums">
                        <i class="fa fa-plane"></i>
                        <span>员工相册</span>
                    </a>
                </li>
                <li>
                    <a href="listResumes">
                        <i class="fa fa-laptop"></i>
                        <span>简历管理</span>
                    </a>
                </li>
                <li>
                    <a href="listPmsUsersProfile">
                        <i class="fa fa-user"></i>
                        <span>组织管理</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
		<div class="main-content">
			<div class="header-section">
				<a class="toggle-btn"><i class="fa fa-bars"></i></a>
				<div class="menu-right">
					<ul class="notification-menu">
						<li><a href="#"
							class="btn btn-default dropdown-toggle info-number"
							data-toggle="dropdown"> <i class="fa fa-envelope-o"></i>
						</a>
							<div class="dropdown-menu dropdown-menu-head pull-right">
								<h5 class="title">你有 0 最新信息</h5>
								<ul class="dropdown-list normal-list">
									<li class="text-center">目前还没有最新消息</li>
									<li class="new"><a href="">查看更多</a></li>
								</ul>
							</div></li>
						<li><a href="javascript:;"
							class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								<img
								src="<%=request.getContextPath()%>/img/96d7546cbe9cbe9e36ce11ffd9afcc95-cropper.jpg"
								alt="${user.username}"> ${user.username} <span class="caret"></span>
						</a>
							<ul class="dropdown-menu dropdown-menu-usermenu pull-right">
								<li><a href=""> <i class="fa fa-user"></i>
										个人主页
								</a></li>
								<li><a href=""> <i class="fa fa-cog"></i>
										基本资料
								</a></li>
								<li><a href=""> <i class="fa fa-camera"></i>
										更换头像
								</a></li>
								<li><a href="profilePwd"> <i class="fa fa-cog"></i>
										更换密码
								</a></li>
								<li><a href=""> <i class="fa fa-th-list"></i>
										我的任务
								</a></li>
								<li><a href="tologout"> <i class="fa fa-sign-out"></i>
										退出
								</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
			<div class="page-heading">
				<h3>需求管理</h3>
				<ul class="breadcrumb pull-left">
					<li><a href="">OPMS</a></li>
					<li><a href="">testkin1</a></li>
					<li class="active">需求</li>
				</ul>
			</div>
			<div class="wrapper">
				<div class="row">
					<div class="col-lg-12">
						<section class="panel">
							<header class="panel-heading"> </header>
							<div class="panel-body">
								<!--                             <form class="form-horizontal adminex-form"  id="needs-form" enctype="multipart/form-data" novalidate="novalidate" action="updateNeed" method="post">
 -->
								<form class="form-horizontal adminex-form" novalidate="novalidate"
									id="needs-form" enctype="multipart/form-data">

									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label"><span>*</span>需求名称</label>
										<div class="col-sm-10">
											<input id="need_name" oldname="${projectNeed.getName() }" name="name" value="${projectNeed.getName() }"
												class="form-control" placeholder="请输入需求名称" type="text">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label"><span>*</span>来源</label>
										<div class="col-sm-10">
											<select name="source" class="form-control">
												<option style="display: none;" checked
													value="${projectNeed.getSource() }">${projectNeed.getNeedSource() }</option>
												<option value="">请选择来源</option>
												<option value="1">客户</option>
												<option value="2">用户</option>
												<option value="3">产品经理</option>
												<option value="4">市场</option>
												<option value="5">客服</option>
												<option value="6">竞争对手</option>
												<option value="7">合作伙伴</option>
												<option value="8">开发人员</option>
												<option value="9">测试人员</option>
												<option value="10">其他</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label"><span>*</span>优先级</label>
										<div class="col-sm-10">
											<select name="level" class="form-control">
												<option style="display: none;" checked
													value="${projectNeed.getLevel() }">${projectNeed.getLevel() }级</option>
												<option value="">请选择优先级</option>
												<option value="1">1级</option>
												<option value="2">2级</option>
												<option value="3">3级</option>
												<option value="4">4级</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label"><span>*</span>阶段</label>
										<div class="col-sm-10">
											<select name="stage" class="form-control">
												<option style="display: none;" checked
													value="${projectNeed.getStage() }">${projectNeed.getNeedStage() }</option>
												<option value="">请选择阶段</option>
												<option value="1">未开始</option>
												<option value="2">已计划</option>
												<option value="3">已立项</option>
												<option value="4">研发中</option>
												<option value="5">研发完毕</option>
												<option value="6">测试中</option>
												<option value="7">测试完毕</option>
												<option value="8">已验收</option>
												<option value="9">已发布</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label">指派给</label>
										<div class="col-sm-10">
											<select name="acceptid" class="form-control">
												<option style="display: none;" checked
													value="${projectNeed.getAcceptid() }">${projectNeed.getAcceptname() }</option>
												<option>请选择指派给</option>
												<c:forEach items="${listTeamMesg }" var="team">
													<option value="${team.getUserid() }">${team.getUsername() }</option>
												</c:forEach>
											</select>

										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label">预计工时</label>
										<div class="col-sm-10">
											<input name="tasktime" value="${projectNeed.getTasktime() }"
												class="form-control" placeholder="请输入数字" type="number">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label"><span>*</span>描述</label>
										<div class="col-sm-10">
											<textarea name="description" placeholder="请填写描述"
												style="height: 300px;" class="form-control">${projectNeed.getDescription() }</textarea>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label">验收标准</label>
										<div class="col-sm-10">
											<textarea name="acceptance" placeholder="需求验收标准（选填）"
												style="height: 200px;" class="form-control">${projectNeed.getAcceptance() }</textarea>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 col-sm-2 control-label">附件</label>
										<div class="col-sm-10">
											<input name="file" type="file">
										</div>
									</div>
									<div class="form-group">
										<label class="col-lg-2 col-sm-2 control-label"></label>
										<div class="col-lg-10">
											<input name="needsid" value="${projectNeed.getNeedsid() }"
												type="hidden">
											<button type="submit" class="btn btn-primary">提交保存</button>
											<!-- <input type="submit" class="btn btn-primary" value="提交保存" /> -->
										</div>
									</div>
								</form>
							</div>
						</section>
					</div>
				</div>
			</div>

			<footer>
				2016 © Admin by Lock &nbsp;&nbsp;<a href="">OPMS官网</a> · <a href="">OPMS手册</a>
			</footer>
	<input type="hidden" value="${projectid }" id="projectid">
		</div>

	</section>

	<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery.nicescroll.js"></script>
	<script src="<%=request.getContextPath()%>/js/scripts.js"></script>
	<div id="ascrail2000" class="nicescroll-rails"
		style="width: 6px; z-index: 1000; background: rgb(66, 79, 99) none repeat scroll 0% 0%; cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;">
		<div
			style="position: relative; top: 0px; float: right; width: 6px; height: 404px; background-color: rgb(101, 206, 167); border: 0px none; background-clip: padding-box; border-radius: 0px;"></div>
	</div>
	<div id="ascrail2000-hr" class="nicescroll-rails"
		style="height: 6px; z-index: 1000; background: rgb(66, 79, 99) none repeat scroll 0% 0%; position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;">
		<div
			style="position: relative; top: 0px; height: 6px; width: 1366px; background-color: rgb(101, 206, 167); border: 0px none; background-clip: padding-box; border-radius: 0px;"></div>
	</div>
	<div id="ascrail2001" class="nicescroll-rails"
		style="width: 3px; z-index: 100; background: rgb(66, 79, 99) none repeat scroll 0% 0%; cursor: default; position: fixed; top: 0px; left: 137px; height: 636px; display: none; opacity: 0;">
		<div
			style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(101, 206, 167); border: 0px none; background-clip: padding-box; border-radius: 0px;"></div>
	</div>
	<div id="ascrail2001-hr" class="nicescroll-rails"
		style="height: 3px; z-index: 100; background: rgb(66, 79, 99) none repeat scroll 0% 0%; top: 633px; left: 0px; position: fixed; cursor: default; display: none; opacity: 0;">
		<div
			style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(101, 206, 167); border: 0px none; background-clip: padding-box; border-radius: 0px; left: 0px;"></div>
	</div>
	<script src="<%=request.getContextPath()%>/js/jquery.validate.js"></script>
	<script src="<%=request.getContextPath()%>/js/opms.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery-ui-1.10.3.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/kindeditor-min.js"></script>
	<script src="<%=request.getContextPath()%>/js/zh-CN.js"></script>
	<script>
		$(function() {
			var editor = KindEditor.create(
					'textarea[name="desc"],textarea[name="acceptance"]', {
						uploadJson : "/kindeditor/upload",
						allowFileManager : true,
						filterMode : false,
						afterBlur : function() {
							this.sync();
						}
					});
		});
	</script>

</body>
</html>
