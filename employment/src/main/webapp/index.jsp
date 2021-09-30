<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html class="x-admin-sm">
    <head>
        <meta charset="UTF-8" http-equiv="content-type" content="text/html">
        	   <title>高校毕业生就业信息管理系统</title>
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
                <a href="./index.jsp">高校毕业生就业信息</a></div>
            <div class="left_open">
                <a><i title="展开左侧栏" class="iconfont">&#xe699;</i></a>
            </div>

            <ul class="layui-nav left fast-add" lay-filter="">
                <c:if test="${sessionScope.university != null || sessionScope.student != null}">
                    <li class="layui-nav-item daohang" ids="#table1">
                        <a href="javascript:;">学生管理</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.university != null || sessionScope.enterprise != null}">
                    <li class="layui-nav-item daohang" ids="#table2">
                        <a href="javascript:;">企业管理</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.university != null}">
                    <li class="layui-nav-item daohang" ids="#table3">
                        <a href="javascript:;">系统管理</a>
                    </li>
                </c:if>
            </ul>

            <ul class="layui-nav right" lay-filter="">
                <li class="layui-nav-item">
                    <c:if test="${sessionScope.university != null}">
                        <a href="javascript:;">
                            <c:out value="${sessionScope.university.uname}" />
                        </a>
                    </c:if>
                    <c:if test="${sessionScope.enterprise != null}">
                        <a href="javascript:;">
                            <c:out value="${sessionScope.enterprise.ename}" />
                        </a>
                    </c:if>
                    <c:if test="${sessionScope.student != null}">
                        <a href="javascript:;">
                            <c:out value="${sessionScope.student.sname}" />
                        </a>
                    </c:if>
                    <c:if test="${sessionScope.university == null &&
                                sessionScope.enterprise == null &&
                                sessionScope.student == null}">
                        <script language="JavaScript">
                            window.location.href="login.jsp";
                        </script>
                    </c:if>

                    <dl class="layui-nav-child">
                        <!-- 二级菜单 -->
                        <dd>
                            <c:if test="${sessionScope.university != null}">
                                <a onclick="xadmin.open('个人信息','${pageContext.request.contextPath}/university/selectUniversityById/${sessionScope.university.uid}',550,600)">个人信息</a>
                            </c:if>
                            <c:if test="${sessionScope.enterprise != null}">
                                <a onclick="xadmin.open('个人信息','${pageContext.request.contextPath}/enterprise/selectEnterpriseById/${sessionScope.enterprise.eid}',550,600)">个人信息</a>
                            </c:if>
                            <c:if test="${sessionScope.student != null}">
                                <a onclick="xadmin.open('个人信息','${pageContext.request.contextPath}/student/selectStudentById1/${sessionScope.student.sid}',550,600)">个人信息</a>
                            </c:if>

                        </dd>
                        <dd>
                            <a id="back">退出</a>
                        </dd>
                    </dl>
                </li>
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
                            <cite>学生信息管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <c:if test="${sessionScope.university != null || sessionScope.enterprise != null}">
                            <li>
                                <a onclick="xadmin.add_tab('个人信息管理','student/selectStudentAll')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>学生信息管理</cite></a>
                            </li>
                            </c:if>
                            <c:if test="${sessionScope.student != null}">
                            <li>

                            </li></c:if>
                            <li>
                                <a onclick="xadmin.add_tab('简历信息管理','resume/selectResumeAll')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>简历信息管理</cite></a>
                            </li>
                            <%--<li>
                                <a onclick="xadmin.add_tab('项目经历管理','through/selectThroughAll')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>项目经历管理</cite></a>
                            </li>--%>
                            <li>
                                <a onclick="xadmin.add_tab('就业信息管理','obtain/selectObtainAll')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>就业信息管理</cite></a>
                            </li>
                        </ul>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li icon-cuxiaoyouhui" lay-tips="配送点管理"></i>
                            <cite>求职管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('招聘信息管理','hiring/selectHiringAll1')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>招聘信息管理</cite></a>
                            </li>

                            <li>
                                <a onclick="xadmin.add_tab('招聘信息列表','note/selectNoteAll')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>招聘列表管理</cite></a>
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
                            <cite>企业信息管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('企业信息管理','enterprise/selectEnterpriseAll')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>企业信息管理</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('企业岗位管理','job/selectJobAllbyeid')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>企业岗位管理</cite></a>
                            </li>

                        </ul>

                    </li>

                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="招聘信息管理">&#xe726;</i>
                            <cite>招聘信息管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('招聘信息管理','hiring/selectHiringAllbyeid')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>招聘信息管理</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('招聘记录管理','note/selectNoteAll')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>招聘记录管理</cite></a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>

        <div class="left-nav hide_lits" id="table3">
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
                            <cite>省份城市管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('省份管理','province/selectProvinceAll')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>省份管理</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('城市管理','city/selectCityAll')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>城市管理</cite></a>
                            </li>
                        </ul>

                    </li>

                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="院系专业管理">&#xe726;</i>
                            <cite>院系专业管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('学校管理','university/selectUniversityAll')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>学校管理</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('院系管理','faculty/selectFacultyAll')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>院系管理</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('专业管理','major/selectMajorAll')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>专业管理</cite></a>
                            </li>
                        </ul>
                    </li>

                    <li class="layui-nav-item">
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li icon-cuxiaoyouhui" lay-tips="订单管理"></i>
                            <cite>审核管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('企业认证审核','enterprise/selectEnterpriseByFlag')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>企业认证审核</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('招聘信息审核','orderServlet?method=all&flag=1')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>招聘信息审核</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('学生就业信息审核','')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>学生就业信息审核</cite></a>
                            </li>
                        </ul>
                    </li>

                    <li class="layui-nav-item">
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li icon-cuxiaoyouhui" lay-tips="订单管理"></i>
                            <cite>企业信息查看</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <%--<li>--%>
                                <%--<a onclick="xadmin.add_tab('企业岗位查看','job/selectJobAll')">--%>
                                    <%--<i class="iconfont">&#xe6a7;</i>--%>
                                    <%--<cite>企业岗位查看</cite></a>--%>
                            <%--</li>--%>
                            <li>
                                <a onclick="xadmin.add_tab('招聘信息查看','hiring/selectHiringAll')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>招聘信息查看</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('招聘记录管理','note/selectNoteAll')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>招聘记录管理</cite></a>
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
                url:"login/back",
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

