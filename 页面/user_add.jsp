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
          <form id="addUser" class="layui-form">
              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>用户名
                  </label>
                  <div class="layui-input-block">
                      <input type="text" name="uname" autocomplete="off" placeholder="填写用户名"
                             class="layui-input" lay-verify="required" id="uname">
                  </div>
              </div>
              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>密码
                  </label>
                  <div class="layui-input-block">
                      <input type="text" name="upwd" autocomplete="off" placeholder="填写密码"
                             class="layui-input" lay-verify="required" id="upwd">
                  </div>
              </div>
              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>性别
                  </label>
                  <div class="layui-input-block">
                      <input type="radio" name="usex" autocomplete="off" placeholder="选择性别"
                             class="layui-input" lay-verify="required" value="男" checked>男
                      <input type="radio" name="usex" autocomplete="off" placeholder="选择性别"
                             class="layui-input" lay-verify="required" value="女">女
                  </div>
              </div>
              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>手机号
                  </label>
                  <div class="layui-input-block">
                      <input type="text" name="uphone" autocomplete="off" placeholder="填写手机号"
                             class="layui-input" lay-verify="required" id="uphone">
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
                              <option value="${prov.pid}">${prov.pname}</option>
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
                          <option value="">请选择城市</option>
                      </select>
                  </div>
              </div>
              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>选择区域
                  </label>
                  <div class="layui-input-block">
                      <select class="layui-input" name="area" id="area" lay-verify="required" autocomplete="off">
                          <option value="">请选择区域</option>
                      </select>
                  </div>
              </div>
              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>生日
                  </label>
                  <div class="layui-input-block">
                      <input type="date" name="ubirthday" autocomplete="off" placeholder="选择生日"
                             class="layui-input" lay-verify="required" id="ubirthday">
                  </div>
              </div>
              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>选择角色
                  </label>
                  <div class="layui-input-block">
                      <select class="layui-input" lay-filter="flag" name="uflag" id="uflag" lay-verify="required" autocomplete="off">
                          <option value="">请选择角色</option>
                          <option value="1">消费者</option>
                          <option value="0">管理员</option>
                      </select>
                  </div>
              </div>
              <div class="layui-form-item" style="text-align: center;">
                  <button class="layui-btn" lay-filter="add" lay-submit="">增加</button>
              </div>
          </form>
      </div>
  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script>

      $(function () {
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
              $.post('userServlet?method=city',{'prov':prov},function (msg) {
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
              $.post('userServlet?method=area',{'city':city},function (msg) {
                  $("#area").empty();
                  $('#area').append('<option value='+""+'>请选择区域</option>');
                  for(var i in msg){
                      var $content = $('<option>' + msg[i].aname + '</option>')
                      $('#area').append($content);
                  }
                  form.render('select');
              })
          })

          //监听提交
          form.on('submit(add)', function(data) {
              layer.alert("增加成功", {icon: 6}, function() {
                  var datas = $("#addUser").serialize();
                  //alert(JSON.stringify(datas));
                  $.ajax({
                      type:"POST",
                      url:"userServlet?method=add",
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