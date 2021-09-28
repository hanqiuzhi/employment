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

    <title>岗位修改</title>

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
            <input type="hidden" name="jid" value="${requestScope.job.jid}">

                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class='x-red'>*</span>招聘岗位
                    </label>
                    <div class="layui-input-block">
                        <input type="text" name="jname" autocomplete="off" placeholder="填写岗位名称"
                               class="layui-input" lay-verify="required" id="jname" value="${job.jname}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class='x-red'>*</span>岗位信息
                    </label>
                    <div class="layui-input-block">
                        <input type="text" name="jinfo" autocomplete="off" placeholder="填写岗位描述"
                               class="layui-input" lay-verify="required" id="jinfo" value="${job.jinfo}">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class='x-red'>*</span>选择企业
                    </label>
                    <div class="layui-input-block">
                        <select class="layui-input" name="jeid.eid" lay-verify="required" autocomplete="off">
                            <option value="">请选择企业</option>
                            <c:forEach items="${enterpriseList}" var="qiye">
                                <option value="${qiye.eid}"
                                        <c:if test="${job.jeid.eid == qiye.eid}">
                                            selected
                                        </c:if>
                                >${qiye.ename}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
            <div class="layui-form-item" style="text-align: center">
                <%--<label for="L_repass" class="layui-form-label"></label>--%>
                <button class="layui-btn" lay-filter="update" lay-submit="">修改</button></div>
        </form>
    </div>
</div>
<script src="js/jquery-3.3.1.min.js"></script>
<script>

   /* $(function () {
        $("#jname").blur(function () {
            var cname = $(this).val();
            $.ajax({
                type:"Post",
                url:"/job/updateJob",
                data:{cname:cname},
                success:function (data) {
                    //alert(data);
                    if(data == 'false'){
                        alert("请重新输入！！！")
                        $("#cname").val("");
                    }
                }
            })
        })
    })*/
    layui.use(['form', 'layer'], function() {
        $ = layui.jquery;
        var form = layui.form,
            layer = layui.layer;


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
                        url:"job/updateJob",
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
