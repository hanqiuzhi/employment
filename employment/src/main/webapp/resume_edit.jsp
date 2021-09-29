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

    <title>简历修改</title>

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
            <%--<div class="layui-form-item">
                <label class="layui-form-label">
                    <span class='x-red'>*</span>编号
                </label>
                <div class="layui-input-block">
                    <input type="text" name="deptid" autocomplete="off" readonly="readonly"
                    class="layui-input" lay-verify="required" value="${requestScope.tDept.deptid}">
                </div>
            </div>--%>
            <input type="hidden" name="rid" value="${resume.rid}">
            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class='x-red'>*</span>期望岗位
                </label>
                <div class="layui-input-block">
                    <input type="text" name="rjobs" autocomplete="off"
                           class="layui-input" lay-verify="required" value="${resume.rjobs}">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class='x-red'>*</span>期望薪资
                </label>
                <div class="layui-input-block">
                    <input type="text" name="rprice" autocomplete="off"
                           class="layui-input" lay-verify="required" value="${resume.rprice}">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">
                <span class='x-red'>*</span>期望城市
                </label>
                <div class="layui-input-block">
                    <select name="rcid.cid" class="layui-input">
                        <option value="">填写期望城市</option>
                        <c:forEach items="${listCid}" var="city">
                            <option value="${city.cid}" class="layui-input"
                                    <c:if test="${resume.rcid.cid == city.cid}">
                                        selected
                                    </c:if>
                            >${city.cname}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class='x-red'>*</span>掌握技能
                </label>
                <div class="layui-input-block">
                    <input type="text" name="rskill" autocomplete="off"
                           class="layui-input" lay-verify="required" value="${resume.rskill}">
                </div>
            </div>

                        <input type="hidden" name="rsid.sid" value="${student.sid}" >


            <div class="layui-form-item" style="text-align: center">
                <%--<label for="L_repass" class="layui-form-label"></label>--%>
                <button class="layui-btn" lay-filter="update" lay-submit="">修改</button></div>

        </form>
    </div>
</div>
<script src="js/jquery-3.3.1.min.js"></script>
<script>


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
