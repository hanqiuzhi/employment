<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/8/27
  Time: 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Register</title>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script>
        $(function (){
            $("#province").change(function (){
               var prov = $(this).val();
               //alert(val);
               $.ajax({
                   type:"POST",
                   url:"userServlet?method=city",
                   data:{prov:prov},
                   success:function (data) {
                       $("#city").empty();
                       $("#city").append("<option>请选择城市</option>");
                       for(var i=0;i<data.length;i++){
                            $("#city").append("<option value='"+data[i].cid+"'>"+data[i].cname+"</option>");
                       }
                   }
               })
            });

            $("#city").change(function () {
                var city = $(this).val();
                $.ajax({
                    type: "POST",
                    url: "userServlet?method=area",
                    data: {city:city},
                    success:function (data) {
                        $("#area").empty();
                        $("#area").append("<option>请选择区域</option>");
                        for(var i = 0;i<data.length;i++){
                            $("#area").append("<option>"+data[i].aname+"</option>");
                        }
                    }
                })
            })

            $("#uname").blur(function () {
                var uanme = $(this).val();
                $.ajax({
                    type:"Post",
                    url:"userServlet?method=checkByName",
                    data:{uname:uanme},
                    success:function (data) {
                        //alert(data);
                        if(data == 'false'){
                            alert("用户名重复，请重新输入！！！")
                            $("#uname").val("");
                        }
                    }
                })
            })
        })
    </script>
    <link href="css/login.css" type="text/css" rel="stylesheet">
</head>
<body>

<div class="div_top" style="padding: 0;margin: 35px auto 0 auto;">物流系统</div>
<div class="login" style="padding: 10px 40px 10px 40px;margin-top: 10px;">
    <div class="message" style="padding: 10px 10px 10px 60px;">
        用户注册
        <a href="login.jsp" class="back">登录</a>
    </div>
    <div id="darkbannerwrap" style="margin-bottom: 5px;"></div>
    <form action="userServlet?method=register&flag=1" method="post">
        <input name="action" value="login" type="hidden">
        <input name="uname" placeholder="用户名" required="" type="text" id="uname">
        <hr class="hr15">
        <input name="upwd" placeholder="密码" required="" type="password" id="upwd">
        <hr class="hr15">
        <select name="usex">
            <option value="">请选择性别</option>
            <option value="男">男</option>
            <option value="女">女</option>
        </select>
        <hr class="hr15">
        <input name="uphone" placeholder="手机号" required="" type="text" id="uphone">
        <hr class="hr15">
        <select id="province" name="uprovince">
            <option value="">请选择省</option>
            <c:forEach items="${provinceList}" var="province">
                <option value="${province.pid}">${province.pname}</option>
            </c:forEach>
        </select>
        <hr class="hr15">
        <select id="city" name="ucity">
            <option value="">请选择城市</option>
        </select>
        <hr class="hr15">
        <select id="area" name="uarea">
            <option value="">请选择区域</option>
        </select>
        <hr class="hr15">
        <input type="date" placeholder="生日" required="" name="ubirthday">
        <hr class="hr15">
        <input type="hidden" name="uflag" value="1"/>
        <input value="注册" style="width:100%;" type="submit">
        <hr class="hr20">
    </form>


</div>

<div class="copyright">版权所有@<span style="color:#f77118">&nbsp;2021&nbsp;&nbsp;</span>开发一部-韩秋智</div>

</body>
</html>
