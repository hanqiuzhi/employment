<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>简历详情</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" href="css/font.css">
    <link rel="stylesheet" href="css/index.css">
    <script type="text/javascript" src="lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="js/index.js"></script>
    <script src="lib/layui/layui.js" charset="utf-8"></script>

    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->

</head>

<body>
<div class="layui-fluid">
    <div class="layui-row">
        <form class="layui-form" id="update" method="post">
            <input type="hidden" name="rid" value="${resume.rid}">

            <table class="layui-table layui-form">
                <thead>
                <tr>
                    <%--<th>
                        <input type="checkbox" lay-filter="checkall" name="" lay-skin="primary">
                    </th>--%>

                    <th>
                        期望岗位
                    </th>
                    <th>
                        期望薪资
                    </th>
                    <th>
                        期望城市
                    </th>
                    <th>
                        掌握技能
                    </th>
                    <th>
                        学生姓名
                    </th>


                </tr>
                </thead>
                <tbody>
                    <tr>
                            <%--<td>
                                <input type="checkbox" name="id" value="${prov.pid}"   lay-skin="primary">
                            </td>--%>

                        <td >
                            ${resume.rjobs}
                        </td>
                        <td >
                            ${resume.rprice}
                        </td>
                        <td >
                            ${resume.rcid.cname}
                        </td>
                        <td >
                            ${resume.rskill}
                        </td>
                        <td >
                            ${resume.rsid.sname}
                        </td>

                    </tr>

                </tbody>
            </table>
            <%--<div class="layui-form-item">
                <label class="layui-form-label">
                    编号
                </label>
                <div class="layui-input-block">
                    <input type="text" name="deptid" autocomplete="off" readonly="readonly"
                    class="layui-input" lay-verify="required" value="${requestScope.tDept.deptid}">
                </div>
            </div>--%>


            <div class="layui-card-header">
                <%--<button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>--%>
                <button class="layui-btn" onclick="top.xadmin.open('添加项目经历','${pageContext.request.contextPath}/through/getTrid?trid=${resume.rid}&method=add',500,300)"><i class="layui-icon"></i>添加项目经历</button>
            </div>



                <table class="layui-table layui-form">

                    <c:if test="${throughList.size()>0}">
                    <thead>
                    <tr>
                        <%--<th>
                            <input type="checkbox" lay-filter="checkall" name="" lay-skin="primary">
                        </th>--%>
                        <th>
                            编号
                        </th>
                        <th>
                            项目名称
                        </th>
                        <th>
                            项目内容
                        </th>
                        <th>
                            项目名称
                        </th>
                        <th>
                            所属简历
                        </th>
                        <th>
                            学生姓名
                        </th>
                        <th>
                            操作
                        </th>

                    </tr>
                    </thead>
                        </c:if>
                    <tbody>
                    <c:forEach items="${throughList}" var="through">
                        <tr>
                                <%--<td>
                                    <input type="checkbox" name="id" value="${prov.pid}"   lay-skin="primary">
                                </td>--%>
                            <td>
                                <c:out value="${through.tid}"/>
                            </td>
                            <td>
                                <c:out value="${through.tname}"/>
                            </td>
                            <td >
                                <c:out value="${through.tcontent}"/>
                            </td>
                            <td >
                                <c:out value="${through.ttime}"/>
                            </td>
                            <td >
                                <c:out value="${through.trid.rjobs}"/>
                            </td>
                            <td >
                                <c:out value="${through.trid.rsid.sname}"/>
                            </td>
                            <td class="td-manage">
                                <button class="layui-btn layui-btn layui-btn-xs"
                                        onclick="top.xadmin.open('修改','${pageContext.request.contextPath}/through/selectThroughById?tid=${through.tid}',700,500)" >
                                    <i class="layui-icon">&#xe642;</i>修改</button>
                                <button class="layui-btn-danger layui-btn layui-btn-xs"
                                        onclick="member_del(this,'${through.tid}')" href="javascript:;" >
                                    <i class="layui-icon">&#xe640;</i>删除</button>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>


        </form>
    </div>
</div>
<script src="js/jquery-3.3.1.min.js"></script>
<script>
    function member_del(obj,id){
        top.layer.confirm('确认要删除吗？',{icon:3,title:'提示信息'},function(index){
            $.ajax({
                type:"POST",
                url:"${pageContext.request.contextPath}/through/delThrough",
                dataType:"text",
                data: {tid: id},
                success:function (data){
                    if(data == 'true'){
                        //发异步删除数据
                        $(obj).parents("tr").remove();
                        layer.msg('已删除!',{icon:1,time:1000});

                    }else {
                        layer.msg('删除失败!',{icon:1,time:1000});
                    }
                },
                error:function (data){
                    layer.msg('错误!',{icon:1,time:1000});
                }
            });
        });
    }


    layui.use(['form', 'layer'], function() {
        $ = layui.jquery;
        var form = layui.form,
            layer = layui.layer;

        /*
        //自定义验证规则
        form.verify({
            nikename: function(value) {
                if (value.length < 5) {
                    return '昵称至少得5个字符啊';
                }
            },
            pass: [/(.+){6,12}$/, '密码必须6到12位'],
            repass: function(value) {
                if ($('#L_pass').val() != $('#L_repass').val()) {
                    return '两次密码不一致';
                }
            }
        });*/

        //监听提交
        form.on('submit(update)', function(data) {
            var datas = $("#update").serialize();

            //alert(JSON.stringify(datas));
            console.log(data);
            layer.alert("修改成功", {
                    icon: 6
                },
                function() {
                    $.ajax({
                        type:"POST",
                        url:"${pageContext.request.contextPath}/resume/updateResume",
                        dataType:"text",
                        data:datas,
                        success:function (data){
                            if(data == 'true'){
                                window.parent.location.reload();
                                var index = parent.layer.getFrameIndex(window.name);
                                //关闭当前frame
                                parent.layer.close(index);
                            }else {
                                alert("修改失败！！！");
                            }
                        },
                        error:function (data){
                            alert("错误！！！");
                        }
                    })
                });
            return false;
        });
    });
</script>



<script>var _hmt = _hmt || []; (function() {
    var hm = document.createElement("script");
    hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
})();</script>

</body>
</html>
