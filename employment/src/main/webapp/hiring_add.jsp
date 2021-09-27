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
                    <span class='x-red'>*</span>招聘信息表
                </label>
                <div class="layui-input-block">
                    <input type="text" name="hname" autocomplete="off" placeholder="填写招聘名称"
                           class="layui-input" lay-verify="required" id="hname">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class='x-red'>*</span>招聘人数
                </label>
                <div class="layui-input-block">
                    <input type="text" name="hnum" autocomplete="off" placeholder="填写招聘人数"
                           class="layui-input" lay-verify="required" id="hnum">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class='x-red'>*</span>专业
                </label>
                <div class="layui-input-block">
                    <input type="text" name="hmajor" autocomplete="off" placeholder="填写需要专业"
                           class="layui-input" lay-verify="required" id="hmajor">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class='x-red'>*</span>学历
                </label>
                <div class="layui-input-block">
                    <input type="text" name="hexperience" autocomplete="off" placeholder="填写需要学历"
                           class="layui-input" lay-verify="required" id="hexperience">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class='x-red'>*</span>薪资
                </label>
                <div class="layui-input-block">
                    <input type="text" name="hprice" autocomplete="off" placeholder="薪资"
                           class="layui-input" lay-verify="required" id="hprice">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class='x-red'>*</span>截止时间
                </label>
                <div class="layui-input-block">
                    <input type="text" name="hetime" autocomplete="off" placeholder="截止时间"
                           class="layui-input" lay-verify="required" id="hetime">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class='x-red'>*</span>状态
                </label>
                <div class="layui-input-block">
                    <select class="layui-input" name="hflag" lay-verify="required" autocomplete="off">
                        <option value=0>未审核</option>
                    </select>
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class='x-red'>*</span>选择岗位
                </label>
                    <div class="layui-input-block">
                        <select class="layui-input" name="hjid.jid" lay-verify="required" autocomplete="off">
                        <option value="">请选择岗位</option>
                        <c:forEach items="${jobList}" var="job">
                            <option value="${job.jid}">${job.jname}</option>
                        </c:forEach>
                    </select>
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

    /* $(function () {
         $("#cname").blur(function () {
             var cname = $(this).val();
             $.ajax({
                 type:"Post",
                 url:"cityServlet?method=checkByName",
                 data:{cname:cname},
                 success:function (data) {
                     //alert(data);
                     if(data == 'false'){
                         alert("城市名重复，请重新输入！！！")
                         $("#cname").val("");
                     }
                 }
             })
         })
     })*/

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
                    url:"${pageContext.request.contextPath}/hiring/addHiring",
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
