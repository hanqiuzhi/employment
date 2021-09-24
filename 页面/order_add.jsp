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
          <form id="addOrder" class="layui-form">
              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>选择物品
                  </label>
                  <div class="layui-input-block">
                      <select class="layui-input" name="oname" id="oname" lay-verify="required" autocomplete="off">
                          <option value="">请选择物品</option>
                          <option value="文件">文件</option>
                          <option value="衣服">衣服</option>
                          <option value="电子产品">电子产品</option>
                          <option value="零食">零食</option>
                          <option value="易碎品">易碎品</option>
                      </select>
                  </div>
              </div>
              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>物品重量
                  </label>
                  <div class="layui-input-block">
                      <input type="number" name="oweight" autocomplete="off" placeholder="填写物品重量"
                             class="layui-input" lay-verify="required" id="oweight" value="1" min="1">
                  </div>
              </div>

              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>收货人
                  </label>
                  <div class="layui-input-block">
                      <input type="text" name="orname" autocomplete="off" placeholder="填写收货人"
                             class="layui-input" lay-verify="required" id="orname">
                  </div>
              </div>

              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>收货人电话
                  </label>
                  <div class="layui-input-block">
                      <input type="text" name="orphone" autocomplete="off" placeholder="填写收货电话"
                             class="layui-input" lay-verify="required" id="orphone">
                  </div>
              </div>

              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>终点省
                  </label>
                  <div class="layui-input-block">
                      <select class="layui-input" lay-filter="prov" name="prov" id="province" lay-verify="required" autocomplete="off">
                          <option value="">请选择终点省</option>
                          <c:forEach items="${provinceList}" var="prov">
                              <option value="${prov.pid}">${prov.pname}</option>
                          </c:forEach>
                      </select>
                  </div>
              </div>
              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>终点城市
                  </label>
                  <div class="layui-input-block">
                      <select class="layui-input" lay-filter="city" name="city" id="city" lay-verify="required" autocomplete="off">
                          <option value="">请选择终点城市</option>
                      </select>
                  </div>
              </div>

              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>终点区域
                  </label>
                  <div class="layui-input-block">
                      <select class="layui-input" lay-filter="area" name="area" id="area" lay-verify="required" autocomplete="off">
                          <option value="">请选择终点区域</option>
                      </select>
                  </div>
              </div>

              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>终点站点
                  </label>
                  <div class="layui-input-block">
                      <select class="layui-input" lay-filter="station" name="station" id="station" lay-verify="required" autocomplete="off">
                          <option value="">请选择终点站点</option>
                      </select>
                  </div>
              </div>

              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>备注
                  </label>
                  <div class="layui-input-block">
                      <input type="text" name="obeizhu" autocomplete="off" placeholder="备注"
                             class="layui-input" lay-verify="" id="obeizhu">
                  </div>
              </div>

              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>总价
                  </label>
                  <div class="layui-input-block">
                      <input type="text" name="oprice" autocomplete="off" placeholder="备注"
                             class="layui-input" lay-verify="" id="oprice" value="0" readonly>
                  </div>
              </div>

              <div class="layui-form-item" style="text-align: center;">
                  <button class="layui-btn" lay-filter="add" lay-submit="">下单</button>
              </div>
          </form>
      </div>
  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script>

      /*$(function () {
          $("#oname").blur(function () {
              var oanme = $(this).val();
              $.ajax({
                  type:"Post",
                  url:"orderServlet?method=checkByName",
                  data:{oname:oanme},
                  success:function (data) {
                      //alert(data);
                      if(data == 'false'){
                          alert("用户名重复，请重新输入！！！")
                          $("#uname").val("");
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

          form.on('select(prov)',function (data){
              var prov = data.value;
              //alert(prov);
              //alert($("#province").val());
              $.post('orderServlet?method=city',{'prov':prov},function (msg) {
                  $("#city").empty();
                  $('#city').append('<option value='+""+'>请选择终点城市</option>');
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
              $.post('orderServlet?method=area',{'city':city},function (msg) {
                  $("#area").empty();
                  $('#area').append('<option value='+""+'>请选择终点区域</option>');
                  for(var i in msg){
                      var $content = $('<option value="' + msg[i].aid + '">' + msg[i].aname + '</option>')
                      $('#area').append($content);
                  }
                  form.render('select');
              })
          })

          form.on('select(area)',function (data){
              var area = data.value;
              $.post('orderServlet?method=station',{'area':area},function (msg) {
                  $("#station").empty();
                  $('#station').append('<option value='+""+'>请选择终点站点</option>');
                  for(var i in msg){
                      var $content = $('<option value="' + msg[i].sid + '">' + msg[i].sname + '</option>')
                      $('#station').append($content);
                  }
                  form.render('select');
              })
          })

          form.on('select(station)',function (data){
              var datas = $("#addOrder").serialize();
              $.post('orderServlet?method=price', datas,function (msg) {
                  $("#oprice").empty();
                  $("#oprice").val(msg);
              })
          })

          //监听提交
          form.on('submit(add)', function(data) {
              layer.alert("下单成功", {icon: 6}, function() {
                  var datas = $("#addOrder").serialize();
                  //alert(JSON.stringify(datas));
                  $.ajax({
                      type:"POST",
                      url:"orderServlet?method=add",
                      dataType:"text",
                      data:datas,
                      success:function (data){
                          if(data == 'true'){
                              window.parent.location.reload();
                              var index = parent.layer.getFrameIndex(window.name);
                              //关闭当前frame
                              parent.layer.close(index);
                          }else {
                              alert("下单失败！！！");
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