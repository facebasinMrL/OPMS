<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html style="overflow: hidden;" lang="en">
<head>
    <meta charset="UTF-8">
    <title>OPMS管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="author" content="lock">
    <link rel="shortcut icon" href="img/favicon.ico" type="image/png">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet">

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
                            <a href="">libai</a>
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
                        <a href="">
                            <i class="fa fa-sign-out"></i>
                            <span>退出</span></a>
                    </li>
                </ul>
            </div>

            <ul class="nav nav-pills nav-stacked custom-nav js-left-nav">
                <li class="">
                    <a href="user_index.html">
                        <i class="fa fa-home"></i>
                        <span>我的主页</span>
                    </a>
                </li>
                <li class="">
                    <a href="project_manage.html">
                        <i class="fa fa-book"></i>
                        <span>项目管理</span>
                    </a>
                </li>
                <li>
                    <a href="checkwork_index.html">
                        <i class="fa fa-tasks"></i>
                        <span>考勤管理</span>
                    </a>
                </li>
                <li>
                    <a href="approval_index.html">
                        <i class="fa fa-suitcase"></i>
                        <span>审批管理</span>
                    </a>
                </li>
                <li>
                    <a href="knowledge_manage.html">
                        <i class="fa fa-tasks"></i>
                        <span>知识分享</span>
                    </a>
                </li>
                <li>
                    <a href="album_manage.html">
                        <i class="fa fa-plane"></i>
                        <span>员工相册</span>
                    </a>
                </li>
                <li>
                    <a href="resume_manage.html">
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
            <form class="searchform" action="" method="get">
                <select name="status" class="form-control">
                    <option value="0">状态</option>
                    <option value="1">未看</option>
                    <option value="2">已看</option>
                </select>
                <select name="type" class="form-control">
                    <option value="0">类型</option>
                    <option value="1">评论</option>
                    <option value="2">赞</option>
                    <option value="3">审批</option>
                    <option value="4">公告</option>
                </select>
                <button type="submit" class="btn btn-primary">搜索</button>
            </form>
            <div class="menu-right">
                <ul class="notification-menu">
                    <li>
                        <a href="#" class="btn btn-default dropdown-toggle info-number" data-toggle="dropdown">
                            <i class="fa fa-envelope-o"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-head pull-right">
                            <h5 class="title">你有 0 最新信息</h5>
                            <ul class="dropdown-list normal-list">
                                <li class="text-center">目前还没有最新消息</li>
                                <li class="new">
                                    <a href="message_manage.html">查看更多</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="javascript:;" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            <img src="img/96d7546cbe9cbe9e36ce11ffd9afcc95-cropper.jpg" alt="libai">
                            ${user.username }
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                            <li>
                                <a href="user_index.html">
                                    <i class="fa fa-user"></i>
                                    个人主页
                                </a>
                            </li>
                            <li>
                                <a href="user_form.html">
                                    <i class="fa fa-cog"></i>
                                    基本资料
                                </a>
                            </li>
                            <li>
                                <a href="avatar.html">
                                    <i class="fa fa-camera"></i>
                                    更换头像
                                </a>
                            </li>
                            <li>
                                <a href="profile_pwd.html">
                                    <i class="fa fa-cog"></i>
                                    更换密码
                                </a>
                            </li>
                            <li>
                                <a href="task.html">
                                    <i class="fa fa-th-list"></i>
                                    我的任务</a>
                            </li>
                            <li>
                                <a href="tologout">
                                    <i class="fa fa-sign-out"></i>
                                    退出
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <div class="page-heading">
            <h3> 消息管理 </h3>
            <ul class="breadcrumb pull-left">
                <li> <a href="user_index.html">OPMS</a> </li>
                <li> <a href="#">消息管理</a> </li>
                <li class="active"> 消息 </li>
            </ul>
        </div>
        <div class="wrapper">
            <div class="row">
                <div class="col-sm-12">
                    <section class="panel mail-box">
                        <header class="panel-heading"> 消息管理 / 总数：${count }<span class="tools pull-right"><a href="javascript:;" class="fa fa-chevron-down"></a>
              </span> </header>
                        <div class="panel-body mail-box-info">
                            <input class="checkboxbtn" type="checkbox">&nbsp;&nbsp;<a href="javascript:;" id="deleteMsg" class="btn btn-sm btn-primary">删除</a>
                            <section class="mail-list" style="margin-top: 6px;">
                                <ul class="list-group ">
                                	<c:forEach items="${listmessage }" var="message">
                                		<li class="list-group-item">
                                   		<span class="pull-left chk">
                    						<input class="checked" value="${message.msgid }" type="checkbox">
                    					</span>
                                        <a class="thumb pull-left" href=""> <img src="img/5b41faa955a4c1acdb6d7e6c116bce2f-cropper.jpg" style="width: 22px;"> </a>
                                        <a href="${message.url}">
                                            <small class="pull-right text-muted">${message.created}</small>
                                            <strong>${message.touseidusername}</strong>
                                            <span>${message.subtypetext}&nbsp;&nbsp;${message.title}</span>
                                        </a>
                                    </li>
                                	</c:forEach>
                                </ul>
                                <ul class="pagination pull-right">
                                   <c:if test="${pageInfo.pageNum==1 }">
			                		<li class="disabled"><a href="toMessageManage?pageNum=1" >首页</a></li>
			                		<c:if test="${pageInfo.hasPreviousPage  }">
			                        <li>
			                            <a href="toMessageManage?pageNum=${pageInfo.pageNum-1}" aria-label="Previous">
			                                <span aria-hidden="true">&laquo;</span>
			                            </a>
			                        </li>
				                    </c:if>
				                    <c:forEach items="${pageInfo.navigatepageNums  }" var="page">
				                        <c:if test="${page==pageInfo.pageNum }">
				                            <li class="active"><a href="toMessageManage?pageNum=${page}">${page}</a></li>
				                        </c:if>
				                        <c:if test="${page!=pageInfo.pageNum }">
				                            <li><a href="toMessageManage?pageNum=${page}">${page}</a></li>
				                        </c:if>
				                    </c:forEach>
				                    <c:if test="${pageInfo.hasNextPage }">
				                        <li>
				                            <a href="toMessageManage?pageNum=${pageInfo.pageNum+1 }" aria-label="Next">
				                                <span aria-hidden="true">&raquo;</span>
				                            </a>
				                        </li>
				                    </c:if>
				                    <li><a href="toMessageManage?pageNum=${pageInfo.pages}">尾页</a></li>
			                	</c:if>
			                	<c:if test="${pageInfo.pageNum!=1 }">
			                		<li><a href="toMessageManage?pageNum=1" >首页</a></li>
			                    	<c:if test="${pageInfo.hasPreviousPage  }">
				                        <li>
				                            <a href="toMessageManage?pageNum=${pageInfo.pageNum-1}" aria-label="Previous">
				                                <span aria-hidden="true">&laquo;</span>
				                            </a>
				                        </li>
			                    	</c:if>
				                    <c:forEach items="${pageInfo.navigatepageNums  }" var="page">
				                        <c:if test="${page==pageInfo.pageNum }">
				                            <li class="active"><a href="toMessageManage?pageNum=${page}">${page}</a></li>
				                        </c:if>
				                        <c:if test="${page!=pageInfo.pageNum }">
				                            <li><a href="toMessageManage?pageNum=${page}">${page}</a></li>
				                        </c:if>
				                    </c:forEach>
				                    <c:if test="${pageInfo.hasNextPage }">
				                        <li>
				                            <a href="toMessageManage?pageNum=${pageInfo.pageNum+1 }" aria-label="Next">
				                                <span aria-hidden="true">&raquo;</span>
				                            </a>
				                        </li>
				                    </c:if>
			                    	<li><a href="toMessageManage?pageNum=${pageInfo.pages}">尾页</a></li>
			                	</c:if>
                                </ul>
                            </section>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <footer> 2016 © Admin by Lock &nbsp;&nbsp;<a href="">OPMS官网</a> · <a href="">OPMS手册</a></footer>
    </div>
</section>

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<div id="ascrail2000" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(66, 79, 99) none repeat scroll 0% 0%; cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;">
    <div style="position: relative; top: 0px; float: right; width: 6px; height: 308px; background-color: rgb(101, 206, 167); border: 0px none; background-clip: padding-box; border-radius: 0px;"></div>
</div>
<div id="ascrail2000-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(66, 79, 99) none repeat scroll 0% 0%; position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;">
    <div style="position: relative; top: 0px; height: 6px; width: 1215px; background-color: rgb(101, 206, 167); border: 0px none; background-clip: padding-box; border-radius: 0px;"></div>
</div>
<div id="ascrail2001" class="nicescroll-rails" style="width: 3px; z-index: 100; background: rgb(66, 79, 99) none repeat scroll 0% 0%; cursor: default; position: fixed; top: 0px; left: 137px; height: 555px; display: none; opacity: 0;">
    <div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(101, 206, 167); border: 0px none; background-clip: padding-box; border-radius: 0px;"></div>
</div>
<div id="ascrail2001-hr" class="nicescroll-rails" style="height: 3px; z-index: 100; background: rgb(66, 79, 99) none repeat scroll 0% 0%; top: 552px; left: 0px; position: fixed; cursor: default; display: none; opacity: 0;">
    <div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(101, 206, 167); border: 0px none; background-clip: padding-box; border-radius: 0px; left: 0px;"></div>
</div>
<script src="js/jquery.validate.js"></script>
<script src="js/opms.js"></script>
<script>
    $(function(){
        $('.checkboxbtn').click(function(){
            $(this).parent().find("input[type='checkbox']").prop('checked', $(this).is(':checked'));
        });
        $('#deleteMsg').on('click', function(){
            var ck = $('.checked:checked');
            if(ck.length <= 0) { dialogInfo('至少选择一个复选框'); return false; }
            var str = '';
            $.each(ck, function(i, n){
                str += n['value']+',';
            });
            str = str.substring(0, str.length - 1)
            $.post('/message/ajax/delete', {ids:str},function(data){
                dialogInfo(data.message)
                if (data.code) {
                    setTimeout(function(){ window.location.reload(); }, 2000);
                } else {
                    setTimeout(function(){ $('#dialogInfo').modal('hide'); }, 1000);
                }
            },'json');
        });
    })
</script>
</body>
</html>
