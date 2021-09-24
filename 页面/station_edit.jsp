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
   <link rel="stylesheet" href="css/font.css">
    <link rel="stylesheet" href="css/index.css">
    <script src="lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="js/index.js"></script>
  </head>
  <body>
  <div class="layui-fluid">
      <div class="layui-row">
          <form id="addStation" class="layui-form">
              <input type="hidden" name="sid" value="${requestScope.station.sid}">
              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>配送点名称
                  </label>
                  <div class="layui-input-block">
                      <input type="text" name="sname" autocomplete="off" placeholder="填写配送点名称"
                             class="layui-input" lay-verify="required" id="sname" value="${requestScope.station.sname}">
                  </div>
              </div>

              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>选择省
                  </label>
                  <div class="layui-input-block">
                      <select class="layui-input" lay-filter="prov" name="prov" id="province" lay-verify="required" autocomplete="off">
                          <option value="">请选择省</option>
                          <c:forEach items="${provinceList}" var="prov">
                              <option value="${prov.pid}"
                                <c:if test="${prov.pid == requestScope.station.said.acid.cproid.pid}">
                                    selected
                                </c:if>
                              >${prov.pname}</option>
                          </c:forEach>
                      </select>
                  </div>
              </div>
              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>选择城市
                  </label>
                  <div class="layui-input-block">
                      <select class="layui-input" lay-filter="city" name="city" id="city" lay-verify="required" autocomplete="off">
                          <option value="${requestScope.station.said.acid.cid}">${requestScope.station.said.acid.cname}</option>
                      </select>
                  </div>
              </div>
              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>选择区域
                  </label>
                  <div class="layui-input-block">
                      <select class="layui-input" name="area" id="area" lay-verify="required" autocomplete="off">
                          <option value="${station.said.aid}">${station.said.aname}</option>
                      </select>
                  </div>
              </div>

              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>配送价格
                  </label>
                  <div class="layui-input-block">
                      <input type="text" name="sprice" autocomplete="off" placeholder="填写配送价格"
                             class="layui-input" lay-verify="required" id="sprice" value="${requestScope.station.sprice}">
                  </div>
              </div>

              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>管理员
                  </label>
                  <div class="layui-input-block">
                      <select class="layui-input" lay-filter="flag" name="uflag" id="uflag" lay-verify="required" autocomplete="off">
                          <option value="">请选择管理员</option>
                          <c:forEach items="${userList}" var="user">
                              <option value="${user.uid}"
                                  <c:if test="${user.uid == requestScope.station.suid.uid}">
                                      selected
                                  </c:if>
                              >${user.uname}</option>
                          </c:forEach>
                      </select>
                  </div>
              </div>
              <div class="layui-form-item" style="text-align: center;">
                  <button class="layui-btn" lay-filter="add" lay-submit="">修改</button>
              </div>
          </form>
      </div>
  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script>

      $(function () {
          $("#sname").blur(function () {
              var sanme = $(this).val();
              $.ajax({
                  type:"Post",
                  url:"stationServlet?method=checkByName",
                  data:{sname:sanme},
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

          form.on('select(prov)',function (data){
              var prov = data.value;
              //alert(prov);
              //alert($("#province").val());
              $.post('stationServlet?method=city',{'prov':prov},function (msg) {
                  $("#city").empty();
                  $('#city').append('<option value='+""+'>请选择城市</option>');
                  for(var i in msg){
                      var $content = $('<option value="' + msg[i].cid + '">' + msg[i].cname + '</option>')
                      $('#city').append($content);
                  }
                  form.render('select');
              })
          })

          form.on('select(city)',function (data){
              var city = data.value;
              //alert(city);
              //alert($("#city").val());
              $.post('stationServlet?method=area',{'city':city},function (msg) {
                  $("#area").empty();
                  $('#area').append('<option value='+""+'>请选择区域</option>');
                  for(var i in msg){
                      var $content = $('<option value="' + msg[i].aid + '">' + msg[i].aname + '</option>')
                      $('#area').append($content);
                  }
                  form.render('select');
              })
          })

          //监听提交
          form.on('submit(add)', function(data) {
              layer.alert("修改成功", {icon: 6}, function() {
                  var datas = $("#addStation").serialize();
                  //alert(JSON.stringify(datas));
                  $.ajax({
                      type:"POST",
                      url:"stationServlet?method=update",
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
                  });
              });
              return false;
          });
      });


  </script>
</body>
</html>