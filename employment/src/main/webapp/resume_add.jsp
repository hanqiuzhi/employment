<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>My JSP 'places-add.jsp' starting page</title>
    <meta charset="UTF-8" http-equiv="content-type" content="text/html">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
    <script src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/index.js"></script>

</head>
<body>
<div class="layui-fluid">
    <div class="layui-row">
        <form id="addsite" class="layui-form">
            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class='x-red'>*</span>学生姓名
                </label>
                <div class="layui-input-block">
                    <input type="hidden" name="rsid.sid" value="${student.sid}" >

                    <input type="text" class="layui-input" lay-verify="required" value="${sessionScope.student.sname}">

                    <%-- <select name="rsid.sid" class="layui-input">
                            <option value="">填写学生姓名</option>
                            <c:forEach items="${listSid}" var="student">
                                <option value="${student.sid}" class="layui-input" >${student.sname}</option>
                            </c:forEach>
                        </select>--%>

                </div>

            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class='x-red'>*</span>期望岗位
                </label>
                <div class="layui-input-block">
                    <input type="text" name="rjobs" autocomplete="off" placeholder="填写期望岗位"
                           class="layui-input" lay-verify="required" >
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class='x-red'>*</span>期望薪资
                </label>
                <div class="layui-input-block">
                    <input type="text" name="rprice" autocomplete="off" placeholder="填写期望薪资"
                           class="layui-input" lay-verify="required">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class='x-red'>*</span>期望城市
                </label>
                <div class="layui-input-block">
                    <select name="rcid.cid" class="layui-input">
                        <option value="">填写期望城市</option>
                        <c:forEach items="${listCid}" var="cid">
                            <option value="${cid.cid}" class="layui-input" >${cid.cname}</option>
                        </c:forEach>

                    </select>
                   <%-- <input type="text" name="rcid" autocomplete="off" placeholder="填写期望城市"
                           class="layui-input" lay-verify="required">--%>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class='x-red'>*</span>掌握技能
                </label>
                <div class="layui-input-block">
                    <input type="text" name="rskill" autocomplete="off" placeholder="填写掌握技能"
                           class="layui-input" lay-verify="required">
                </div>
            </div>

            <div class="layui-form-item" style="text-align: center;">
                <button class="layui-btn" lay-filter="add" lay-submit="">增加</button>
            </div>
        </form>
    </div>
</div>

<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
<script>


    layui.use(['laydate','form', 'layer'], function() {
        $ = layui.jquery;
        var form = layui.form,
            layer = layui.layer;
        var laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
            elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
            elem: '#end' //指定元素
        });

        //监听提交
        form.on('submit(add)', function(data) {
            layer.alert("增加成功", {icon: 6}, function() {
                var datas = $("#addsite").serialize();
                //alert(JSON.stringify(datas));
                $.ajax({
                    type:"POST",
                    url:"${pageContext.request.contextPath}/resume/addResume",
                    dataType:"text",
                    data:datas,
                    success:function (data){
                        if(data == 'true'){
                            window.parent.location.reload();
                            var index = parent.layer.getFrameIndex(window.name);
                            //关闭当前frame
                            parent.layer.close(index);
                        }else {
                            alert("添加失败！！！");
                        }
                    },
                    error:function (data){
                        alert("错误！！！");
                    }
                });
            });
            return false;
        });
    });
</script>
</body>
</html>
