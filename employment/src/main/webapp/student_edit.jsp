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

    <title>学生信息修改</title>

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
            <input type="hidden" name="sid" value="${requestScope.student.sid}">
            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class='x-red'>*</span>学生名字
                </label>
                <div class="layui-input-block">
                    <input type="text" name="sname" autocomplete="off" id="sname"
                           class="layui-input" lay-verify="required" value="${requestScope.student.sname}">
                </div>
            </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class='x-red'>*</span>学生学号
                    </label>
                    <div class="layui-input-block">
                        <input type="text" name="sno" autocomplete="off" id="sno"
                               class="layui-input" lay-verify="required" value="${requestScope.student.sno}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class='x-red'>*</span>身份证号
                    </label>
                    <div class="layui-input-block">
                        <input type="text" name="sidcard" autocomplete="off" id="sidcard"
                               class="layui-input" lay-verify="required" value="${requestScope.student.sidcard}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class='x-red'>*</span>年龄
                    </label>
                    <div class="layui-input-block">
                        <input type="text" name="sage" autocomplete="off" id="sage"
                               class="layui-input" lay-verify="required" value="${requestScope.student.sage}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class='x-red'>*</span>性别
                    </label>
                    <div class="layui-input-block">
                        <input type="text" name="ssex" autocomplete="off" id="ssex"
                               class="layui-input" lay-verify="required" value="${requestScope.student.ssex}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class='x-red'>*</span>联系方式
                    </label>
                    <div class="layui-input-block">
                        <input type="text" name="sphone" autocomplete="off" id="sphone"
                               class="layui-input" lay-verify="required" value="${requestScope.student.sphone}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class='x-red'>*</span>邮箱
                    </label>
                    <div class="layui-input-block">
                        <input type="text" name="semail" autocomplete="off" id="semail"
                               class="layui-input" lay-verify="required" value="${requestScope.student.semail}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class='x-red'>*</span>密码
                    </label>
                    <div class="layui-input-block">
                        <input type="text" name="spwd" autocomplete="off" id="spwd"
                               class="layui-input" lay-verify="required" value="${requestScope.student.spwd}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class='x-red'>*</span>专业
                    </label>
                    <div class="layui-input-block">
                        <select class="layui-input" name="smid.mid" lay-verify="required" autocomplete="off">
                            <option value="">请选择专业</option>
                            <c:forEach items="${majorList1}" var="major">
                                <option value="${major.mid}"
                                        <c:if test="${student.smid.mid == major.mid}">
                                            selected
                                        </c:if>
                                >${major.mname}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class='x-red'>*</span>入学年份
                    </label>
                    <div class="layui-input-block">
                        <input type="text" name="sbgdate" autocomplete="off" id="sbgdate"
                               class="layui-input" lay-verify="required" value="${requestScope.student.sbgdate}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class='x-red'>*</span>学历
                    </label>
                    <div class="layui-input-block">
                        <input type="text" name="seducation" autocomplete="off" id="seducation"
                               class="layui-input" lay-verify="required" value="${requestScope.student.seducation}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class='x-red'>*</span>就业状态
                    </label>
                    <div class="layui-input-block">
                        <select class="layui-input" name="sflag" lay-verify="required" autocomplete="off" id="sflag" class="layui-input" lay-verify="required" >
                            <option value=0>未就业</option>
                            <option value=1>求职中</option>
                            <option value=2>已就业</option>
                            <option value=3>离职</option>
                            <option value=4>再次就业</option>
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
        $("#pname").blur(function () {
            var pname = $(this).val();
            $.ajax({
                type:"Post",
                url:"provinceServlet?method=checkByName",
                data:{pname:pname},
                success:function (data) {
                    //alert(data);
                    if(data == 'false'){
                        alert("省名重复，请重新输入！！！")
                        $("#pname").val("");
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
                        url:"student/studentUpdate",
                        <%--url:"${pageContext.request.contextPath}/student/studentUpdate",--%>
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

