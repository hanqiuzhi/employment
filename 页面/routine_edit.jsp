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
          <form id="update" class="layui-form">
              <input type="hidden" value="${routine.rid}" name="rid">
              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>路线名称
                  </label>
                  <div class="layui-input-block">
                      <input type="text" name="rname" autocomplete="off" placeholder="填写路线名称"
                             class="layui-input" lay-verify="required" id="rname" value="${routine.rname}">
                  </div>
              </div>

              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>起点省
                  </label>
                  <div class="layui-input-block">
                      <select class="layui-input" lay-filter="prov" name="cproid" id="province" lay-verify="required" autocomplete="off">
                          <option value="">请选择起点省</option>
                          <c:forEach items="${provinceList}" var="prov">
                              <option value="${prov.pid}"
                                  <c:if test="${prov.pid == requestScope.routine.rbegincid.cproid.pid}">
                                      selected
                                  </c:if>
                              >${prov.pname}</option>
                          </c:forEach>
                      </select>
                  </div>
              </div>
              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>起点城市
                  </label>
                  <div class="layui-input-block">
                      <select class="layui-input" lay-filter="city" name="acid" id="acid" lay-verify="required" autocomplete="off">
                          <option value="${requestScope.routine.rbegincid.cid}">${requestScope.routine.rbegincid.cname}</option>
                      </select>
                  </div>
              </div>

              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>终点省
                  </label>
                  <div class="layui-input-block">
                      <select class="layui-input" lay-filter="prov1" name="cproid1" id="province1" lay-verify="required" autocomplete="off">
                          <option value="">请选择终点省</option>
                          <c:forEach items="${provinceList}" var="prov">
                              <option value="${prov.pid}"
                                  <c:if test="${prov.pid == requestScope.routine.rendcid.cproid.pid}">
                                      selected
                                  </c:if>
                              >${prov.pname}</option>
                          </c:forEach>
                      </select>
                  </div>
              </div>
              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>终点城市
                  </label>
                  <div class="layui-input-block">
                      <select class="layui-input" lay-filter="city1" name="acid1" id="acid1" lay-verify="required" autocomplete="off">
                          <option value="${requestScope.routine.rendcid.cid}">${requestScope.routine.rendcid.cname}</option>
                      </select>
                  </div>
              </div>

              <div class="layui-form-item">
                  <label class="layui-form-label">
                      <span class='x-red'>*</span>价格
                  </label>
                  <div class="layui-input-block">
                      <input type="text" name="rprice" autocomplete="off" placeholder="填写价格"
                             class="layui-input" lay-verify="required" id="rprice" value="${requestScope.routine.rprice}">
                  </div>
              </div>



              <div class="layui-form-item" style="text-align: center;">
                  <button class="layui-btn" lay-filter="update" lay-submit="">修改</button>
              </div>
          </form>
      </div>
  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script>

      $(function () {
          $("#rname").blur(function () {
              var rname = $(this).val();
              $.ajax({
                  type:"Post",
                  url:"routineServlet?method=checkByName",
                  data:{rname:rname},
                  success:function (data) {
                      //alert(data);
                      if(data == 'false'){
                          alert("路线名重复，请重新输入！！！")
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
              $.post('routineServlet?method=city',{'pid':prov},function (msg) {
                  $("#acid").empty();
                  $('#acid').append("<option>选择起始城市</option>");
                  for(var i in msg){
                      var $content = $('<option value="' + msg[i].cid + '">' + msg[i].cname + '</option>')
                      $('#acid').append($content);
                  }
                  form.render('select');
              })
          })

          form.on('select(prov1)',function (data){
              var prov = data.value;
              //alert(prov);
              //alert($("#province").val());
              $.post('routineServlet?method=city',{'pid':prov},function (msg) {
                  $("#acid1").empty();
                  $('#acid1').append("<option>选择结束城市</option>");
                  for(var i in msg){
                      var $content = $('<option value="' + msg[i].cid + '">' + msg[i].cname + '</option>')
                      $('#acid1').append($content);
                  }
                  form.render('select');
              })
          })

          //监听提交
          form.on('submit(update)', function(data) {
              layer.alert("修改成功", {icon: 6}, function() {
                  var datas = $("#update").serialize();
                  //alert(JSON.stringify(datas));
                  $.ajax({
                      type:"POST",
                      url:"routineServlet?method=update",
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