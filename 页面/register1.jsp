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
                       for(var i=0;i<data.cityList.length;i++){
                            $("#city").append("<option value='"+data.cityList[i].cid+"'>"+data.cityList[i].cname+"</option>");
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
                        for(var i = 0;i<data.areaList.length;i++){
                            $("#area").append("<option>"+data.areaList[i].aname+"</option>");
                        }
                    }
                })
            })
        })
    </script>
</head>
<body>

<h2>注册...</h2>
<form action="userServlet?method=register" method="post">
    用户名：<input type="text" name="uname"/><br>
    密码：<input type="text" name="upwd"/><br>
    省：<select id="province">
            <option value="">请选择省</option>
            <c:forEach items="${provinceList}" var="province">
                <option value="${province.pid}">${province.pname}</option>
            </c:forEach>
        </select>
    城市：<select id="city">
            <option value="">请选择城市</option>
        </select>
    地区：<select id="area">
            <option value="">请选择区域</option>
        </select>

    <input type="submit" value="注册">

</form>

</body>
</html>
