<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html class="x-admin-sm">
    <head>
        <meta charset="UTF-8" http-equiv="content-type" content="text/html">
        	   <title>物流管理</title>
        <meta name="renderer" content="webkit|ie-comp|ie-stand">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <meta http-equiv="Cache-Control" content="no-siteapp" />
        <link rel="stylesheet" href="css/font.css">
        <link rel="stylesheet" href="css/index.css">
        <link rel="stylesheet" href="css/iconfont.css">
        <script src="lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="js/index.js"></script>
        <style>
            .show_list{display: block !important;}
            .hide_lits{display: none;}

        </style>

    </head>
    <body class="index">
        <!-- 顶部开始 -->
        <div class="container">
            <div class="logo">
                <a href="./index.jsp">物流管理</a></div>
            <div class="left_open">
                <a><i title="展开左侧栏" class="iconfont">&#xe699;</i></a>
            </div>

            <ul class="layui-nav left fast-add" lay-filter="">
                <li class="layui-nav-item daohang" ids="#table1">
                    <a href="javascript:;">物流设置</a>
                </li>
                <c:if test="${sessionScope.user.uflag == 0}">
                    <li class="layui-nav-item daohang" ids="#table2">
                        <a href="javascript:;">系统设置</a>
                    </li>
                </c:if>
            </ul>

            <ul class="layui-nav right" lay-filter="">
                <%--
                <li class="new-nav" id="gonggao">
                    <i></i>
                    <a href="#"><i class="iconfont">&#xe6bc;</i><span class="layui-badge">4</span></a>
                    <!--<dl class="layui-nav-child">-->
                    <ul class="news" id="gonggaos" style="display: none;">
                        <li class="dropdown-header"><i class="iconfont">&#xe6bc;</i>4条公告</li>
                        <li> <a href="javascript:;" onclick="xadmin.add_tab('统计页面','notice-list.jsp')">
                            <div class="clearfix">
                                <span class="pull-left"> <i class="btn btn-pink iconfont">&#xe6bc;</i> 系统公告 </span>
                                <span class="pull-right badge badge-info">+12</span>
                            </div> </a> </li>
                        <li> <a href="javascript:;" onclick="xadmin.add_tab('统计页面','notice-list.jsp')"> <i class="btn btn-primary iconfont">&#xe6bc;</i> 场地公告 </a> </li>

                        <li> <a href="javascript:;" onclick="xadmin.add_tab('统计页面','notice-list.jsp')">查看所有公告 <i class="iconfont">&#xe69b;</i> </a> </li>
                    </ul>
                    <!--</dl>-->
                </li>
                <li class="new-nav" id="new-nav">
                    <i></i>
                    <a href="#"><i class="iconfont">&#xe713;</i><span class="layui-badge">9</span></a>
                    <!--<dl class="layui-nav-child">-->
                    <ul class="news" id="news" style="display: none;">
                        <li class="dropdown-header"><i class="iconfont">&#xe6bc;</i>8条通知</li>
                        <li> <a href="#">
                            <div class="clearfix">
                                <span class="pull-left"> <i class="btn btn-pink iconfont">&#xe69b;</i> 待审核 </span>
                                <span class="pull-right badge badge-info">+12</span>
                            </div> </a> </li>
                        <li> <a href="#"> <i class="btn btn-primary iconfont">&#xe696;</i> 切换为编辑登录.. </a> </li>
                        <li> <a href="#">
                            <div class="clearfix">
                                <span class="pull-left"> <i class="iconfont btn btn-success">&#xe723;</i> 新预约 </span>
                                <span class="pull-right badge badge-success">+8</span>
                            </div> </a> </li>
                        <li> <a href="#">
                            <div class="clearfix">
                                <span class="pull-left"> <i class="iconfont btn btn-info">&#xe6ba;</i> 粉丝 </span>
                                <span class="pull-right badge badge-info">+11</span>
                            </div> </a> </li>
                        <li> <a href="javascript:;" onclick="xadmin.add_tab('统计页面','email.jsp')"> 查看所有消息 <i class="iconfont">&#xe69b;</i> </a> </li>
                    </ul>
                    <!--</dl>-->
                </li>
                --%>
                <li class="layui-nav-item">

                    <c:if test="${sessionScope.user!=null}">
                        <a href="javascript:;">
                            <c:out value="${sessionScope.user.uname}" />
                        </a>
                    </c:if>
                    <c:if test="${sessionScope.user == null or sessionScope.user.ubeizhu == 1}">
                        <script language="JavaScript">
                            window.location.href="login.jsp";
                        </script>
                    </c:if>

                    <dl class="layui-nav-child">
                        <!-- 二级菜单 -->
                        <dd>
                            <a onclick="xadmin.open('个人信息','${pageContext.request.contextPath}/user/selectUserById/${sessionScope.userLogin.userid}',550,600)">个人信息</a>
                        </dd>
                        <dd>
                            <a id="back">退出</a>
                        </dd>
                    </dl>
                </li>

                <%--<li class="layui-nav-item to-index">
                    <a href="#">前台首页</a>
                </li>--%>
            </ul>



        </div>
        <!-- 顶部结束 -->
        <!-- 中部开始 -->
        <!-- 左侧菜单开始 -->
        <div class="left-nav show_list" id="table1">
            <div id="side-nav">
                <ul id="nav">
                    <li>
                        <a href="javascript:;" onclick="xadmin.add_tab('我的桌面','welcome.jsp')">
                            <i class="layui-icon left-nav-li" lay-tips="首页">&#xe68e;</i>
                            <cite>首页</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>

                    </li>

                    <li class="layui-nav-item">
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li icon-cuxiaoyouhui" lay-tips="线路管理"></i>
                            <cite>线路管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('可用线路列表','routineServlet?method=all&flag=0')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>可用线路列表</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('废弃线路列表','routineServlet?method=all&flag=1')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>废弃线路列表</cite></a>
                            </li>
                        </ul>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li icon-cuxiaoyouhui" lay-tips="配送点管理"></i>
                            <cite>配送点管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('可用配送点列表','stationServlet?method=all&flag=0')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>可用配送点列表</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('废弃配送点列表','stationServlet?method=all&flag=1')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>废弃配送点列表</cite></a>
                            </li>
                        </ul>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li icon-cuxiaoyouhui" lay-tips="订单管理"></i>
                            <cite>订单管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('未完成订单列表','orderServlet?method=all&flag=0')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>未完成订单列表</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('已接收订单列表','orderServlet?method=all&flag=1')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>已接收订单列表</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('历已取消订单列表','orderServlet?method=all&flag=2')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>已取消订单列表</cite></a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <!-- <div class="x-slide_left"></div> -->



        <div class="left-nav hide_lits" id="table2">
            <div id="side-nav">
                <ul id="nav">
                    <li>
                        <a href="javascript:;" onclick="xadmin.add_tab('我的桌面','welcome.jsp')">
                            <i class="layui-icon left-nav-li" lay-tips="首页">&#xe68e;</i>
                            <cite>首页</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>

                    </li>

                    <li class="layui-nav-item">
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li icon-shangpinguanli" lay-tips="城市管理"></i>
                            <cite>城市管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('省列表','provinceServlet?method=all')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>省列表</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('省列表分页','provinceServlet?method=page')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>省列表分页</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('城市列表','cityServlet?method=all')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>城市列表</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('城市列表2','cityServlet?method=all2')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>城市列表2</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('区域列表','areaServlet?method=all')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>区域列表</cite></a>
                            </li>

                        </ul>

                    </li>

                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="用户管理">&#xe726;</i>
                            <cite>用户管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('用户可用列表','userServlet?method=all&flag=0')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>用户可用列表</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('用户不可用列表','userServlet?method=all&flag=1')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>用户不可用列表</cite></a>
                            </li>

                        </ul>
                    </li>

                </ul>
            </div>
        </div>

        <!-- 左侧菜单结束 -->
        <!-- 右侧主体开始 -->
        <div class="page-content">
            <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
                <ul class="layui-tab-title">
                    <li class="home">
                        <i class="layui-icon">&#xe68e;</i>我的桌面</li></ul>
                <div class="layui-unselect layui-form-select layui-form-selected" id="tab_right">
                    <dl>
                        <dd data-type="this">关闭当前</dd>
                        <dd data-type="other">关闭其它</dd>
                        <dd data-type="all">关闭全部</dd></dl>
                </div>
                <div class="layui-tab-content">
                    <div class="layui-tab-item layui-show">
                        <iframe src='welcome.jsp' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
                    </div>
                </div>
                <div id="tab_show"></div>
            </div>
        </div>
        <div class="page-content-bg"></div>
        <style id="theme_style"></style>
        <!-- 右侧主体结束 -->
        <!-- 中部结束 -->

    </body>
    <script src="js/jquery.min.js"></script>

</html>

<script>

    $(function () {
        $("#back").click(function () {
            $.ajax({
                type:"POST",
                url:"userServlet?method=exit",
                dataType:"text",
                success:function (data){
                    if(data == 'true'){
                        window.location.href="${pageContext.request.contextPath}/login.jsp";
                    }else {
                        alert("错误！！！");
                    }
                },
                error:function (){
                    alert("出现错误！！！");
                }
            });
        });
    });


    $(".daohang").click(function(){
        var table = $(this).attr("ids");
        var ids = $(".show_list").attr("id");
        $("#"+ids+"").addClass("hide_lits");
        $("#"+ids+"").removeClass("show_list");
        $(""+table+"").removeClass("hide_lits");
        $(""+table+"").addClass("show_list");
    })


    /*window.onload=function () {
        var click=document.getElementById('new-nav');
        var news=document.getElementById('news');
        click.addEventListener('mousemove',function () {
            news.style.display='block';
        });
        click.addEventListener('mouseout',function () {
            news.style.display='none';
        });

        var gonggao=document.getElementById('gonggao');
        var gonggaos=document.getElementById('gonggaos');
        gonggao.addEventListener('mousemove',function () {
            gonggaos.style.display='block';
        });
        gonggao.addEventListener('mouseout',function () {
            gonggaos.style.display='none';
        });
    }*/




</script>

