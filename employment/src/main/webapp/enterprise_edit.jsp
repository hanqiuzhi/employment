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

    <title>企业修改</title>

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
            <input type="hidden" name="eid" value="${enterprise.eid}">
            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class='x-red'>*</span>企业名称
                </label>
                <div class="layui-input-block">
                    <input type="text" name="ename" autocomplete="off"
                           class="layui-input" lay-verify="required" value="${enterprise.ename}">
                </div>
            </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class='x-red'>*</span>企业密码
                    </label>
                    <div class="layui-input-block">
                        <input type="text" name="epwd" autocomplete="off"
                               class="layui-input" lay-verify="required" value="${enterprise.epwd}">
                    </div>
                </div>
            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class='x-red'>*</span>企业信息
                </label>
                <div class="layui-input-block">
                    <input type="text" name="einfo" autocomplete="off"
                           class="layui-input" lay-verify="required" value="${enterprise.einfo}">
                </div>

            </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class='x-red'>*</span>企业所属省
                    </label>
                    <div class="layui-input-block">
                        <select class="layui-input"  lay-filter="prov" id="province" name="epid.pid" lay-verify="required" autocomplete="off">
                            <option value="">请选择省</option>
                            <c:forEach items="${provinceList}" var="province">
                                <option value="${province.pid}"
                                        <c:if test="${enterprise.ecid.cpid.pid == province.pid}">
                                            selected
                                        </c:if>
                                >${province.pname}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class='x-red'>*</span>企业所属城市
                    </label>
                    <div class="layui-input-block">
                        <select class="layui-input" lay-filter="city" name="ecid.cid" id="ecid" lay-verify="required" autocomplete="off">
                            <option value="" selected>请选择城市</option>
                        </select>
                    </div>
                </div>
            <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class='x-red'>*</span>电话号码
                </label>
                <div class="layui-input-block">
                    <input type="text" name="ephone" autocomplete="off"
                           class="layui-input" lay-verify="required" value="${enterprise.ephone}">
                </div>
            </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class='x-red'>*</span>邮箱
                    </label>
                    <div class="layui-input-block">
                        <input type="text" name="eemail" autocomplete="off"
                               class="layui-input" lay-verify="required" value="${enterprise.eemail}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class='x-red'>*</span>企业状态
                    </label>
                    <div class="layui-input-block">
                        <input type="hidden" name="eflag" value="${enterprise.eflag}"/>
                        <c:if test="${enterprise.eflag == 0}">
                            未审核
                        </c:if>
                        <c:if test="${enterprise.eflag == 1}">
                            已通过
                        </c:if>
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



        form.on('select(prov)',function (data){
            var pid = data.value;
            //alert(prov);
            //alert($("#province").val());
            $.post('city/selectCityByPId',{'pid':pid},function (msg) {
                $('#ecid').empty();
                $('#ecid').append("<option>请选择城市</option>");
                alert("aaaa");
                for(var i in msg){
                    alert(msg.cid);
                    var $content = $('<option value="' + msg.cityList[i].cid + '">' + msg.cityList[i].cname + '</option>');
                    $('#ecid').append($content);

                }
                form.render('select');
            })
        })



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
                        url:"${pageContext.request.contextPath}/enterprise/updateEnterprise",
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
