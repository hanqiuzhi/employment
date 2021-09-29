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

    <title>部门修改</title>

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
            <input type="hidden" name="hid" value="${requestScope.hiring.hid}">

            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class='x-red'>*</span>招聘信息表
                </label>
                <div class="layui-input-block">
                    <input type="text" name="hname" autocomplete="off" placeholder="填写招聘名称"
                           class="layui-input" lay-verify="required" id="hname" value="${hiring.hname}">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class='x-red'>*</span>招聘人数
                </label>
                <div class="layui-input-block">
                    <input type="text" name="hnum" autocomplete="off" placeholder="填写招聘人数"
                           class="layui-input" lay-verify="required" id="hnum" value="${hiring.hnum}">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class='x-red'>*</span>专业
                </label>
                <div class="layui-input-block">
                    <input type="text" name="hmajor" autocomplete="off" placeholder="填写需要专业"
                           class="layui-input" lay-verify="required" id="hmajor" value="${hiring.hmajor}">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class='x-red'>*</span>学历
                </label>
                <div class="layui-input-block">
                    <input type="text" name="hexperience" autocomplete="off" placeholder="填写需要学历"
                           class="layui-input" lay-verify="required" id="hexperience" value="${hiring.hexperience}">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class='x-red'>*</span>薪资
                </label>
                <div class="layui-input-block">
                    <input type="text" name="hprice" autocomplete="off" placeholder="薪资"
                           class="layui-input" lay-verify="required" id="hprice" value="${hiring.hprice}">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class='x-red'>*</span>截止时间
                </label>
                <div class="layui-input-block">
                    <input type="text" name="hetime" autocomplete="off" placeholder="截止时间"
                           class="layui-input" lay-verify="required" id="hetime" value="${hiring.hetime}">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class='x-red'>*</span>状态
                </label>
                <div class="layui-input-block">
                    <select class="layui-input" name="hflag" lay-verify="required" autocomplete="off">
                        <option value=0>未审核</option>
                        <option value=1>未通过</option>
                          <option value=2>进行中</option>
                      <!--   <option value=3>已结束</option>-->
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
                            <option value="${job.jid}"
                                    <c:if test="${hiring.hjid.jid == job.jid}">
                                        selected
                                    </c:if>
                            >${job.jname}
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

    $(function () {
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
    })
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
                        url:"hiring/updateHiring",
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
