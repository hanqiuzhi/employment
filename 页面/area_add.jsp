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
          <form id="addsite" class="layui-form">
              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>选择省
                  </label>
                  <div class="layui-input-block">
                      <select class="layui-input" lay-filter="prov" name="cproid" id="province" lay-verify="required" autocomplete="off">
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
                      <select class="layui-input" lay-filter="city" name="acid" id="acid" lay-verify="required" autocomplete="off">
                          <option value="">请选择城市</option>
                      </select>
                  </div>
              </div>
              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>区域名称
                  </label>
                  <div class="layui-input-block">
                      <input type="text" name="aname" autocomplete="off" placeholder="填写区域名称"
                             class="layui-input" lay-verify="required" id="aname">
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
          $("#aname").blur(function () {
              var aname = $(this).val();
              $.ajax({
                  type:"Post",
                  url:"areaServlet?method=checkByName",
                  data:{aname:aname},
                  success:function (data) {
                      //alert(data);
                      if(data == 'false'){
                          alert("城市名重复，请重新输入！！！")
                          $("#aname").val("");
                      }
                  }
              })
          })
      });


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
              $.post('areaServlet?method=city',{'pid':prov},function (msg) {
                  $("#acid").empty();
                  $('#acid').append("<option>请选择城市</option>");
                  for(var i in msg){
                      var $content = $('<option value="' + msg[i].cid + '">' + msg[i].cname + '</option>')
                      $('#acid').append($content);
                  }
                  form.render('select');
              })
          })

          //监听提交
          form.on('submit(add)', function(data) {
              layer.alert("增加成功", {icon: 6}, function() {
                  var datas = $("#addsite").serialize();
                  //alert(JSON.stringify(datas));
                  $.ajax({
                      type:"POST",
                      url:"areaServlet?method=add",
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