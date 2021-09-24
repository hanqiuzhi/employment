<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
  	<meta charset="UTF-8" http-equiv="content-type" content="text/html">

    <title>My JSP 'placelist.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
    <script src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/index.js"></script>

  </head>

 <body>
<div class="x-nav">
          <span class="layui-breadcrumb">
            <a href="">首页</a>
            <a href="">订单管理</a>
            <a>
              <cite>订单列表</cite></a>
          </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
</div>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">

                    <form class="layui-form layui-col-space5">
                        <%--<div class="layui-inline layui-show-xs-block">
                            <input class="layui-input"  autocomplete="off" placeholder="开始日" name="start" id="start">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input"  autocomplete="off" placeholder="截止日" name="end" id="end">
                        </div>--%>
                       <div class="layui-input-inline layui-show-xs-block">
                            <select name="contrller">
                                <option value=""></option>
                                <option value="0"></option>
                                <option value="1"></option>
                            </select>
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                        </div>
                    </form>
                </div>

                    <div class="layui-card-header">
                        <c:if test="${sessionScope.user.uflag == 0}">
                            <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
                        </c:if>
                        <c:if test="${sessionScope.user.uflag == 1 }">
                            <button class="layui-btn" onclick="xadmin.open('下订单','${pageContext.request.contextPath}/orderServlet?method=prov',600,660)"><i class="layui-icon"></i>下订单</button>
                        </c:if>
                    </div>

                <div class="layui-card-body layui-table-body layui-table-main">
                    <table class="layui-table layui-form">
                        <thead>
                        <tr>
                            <th>
                                <input type="checkbox" lay-filter="checkall" name="ids" lay-skin="primary">
                            </th>
                            <th>
                                编号
                            </th>
                            <th>
                                货物名称
                            </th>
                            <th>
                                货物重量
                            </th>
                            <th>
                                邮寄人
                            </th>
                            <th>
                                邮寄地址
                            </th>
                            <th>
                                邮寄人电话
                            </th>
                            <th>
                                收货人
                            </th>
                            <th>
                                收货地址
                            </th>
                            <th>
                                收货人电话
                            </th>
                            <th>
                                生成时间
                            </th>
                            <th>
                                总价
                            </th>
                            <td>
                                订单状态
                            </td>
                            <td>
                                订单备注
                            </td>
                                 <th>
                                    操作
                                </th>

                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${requestScope.orderList}" var="order">
                            <tr>
                                <td>
                                    <input type="checkbox" name="id" value="${order.oid}"   lay-skin="primary">
                                </td>
                                <td>
                                    <c:out value="${order.oid}"/>
                                </td>
                                <td>
                                    <c:out value="${order.oname}"/>
                                </td>
                                <td >
                                    <c:out value="${order.oweight}"/>
                                </td>
                                <td >
                                    <c:out value="${order.obname}"/>
                                </td>
                                <td >
                                    <c:out value="${order.obaddr}"/>
                                </td>
                                <td >
                                    <c:out value="${order.obphone}"/>
                                </td>
                                <td >
                                    <c:out value="${order.orname}"/>
                                </td>
                                <td >
                                    <c:out value="${order.oraddr}"/>
                                </td>
                                <td >
                                    <c:out value="${order.orphone}"/>
                                </td>
                                <td >
                                    <c:out value="${order.otime}"/>
                                </td>
                                <td >
                                    <c:out value="${order.oprice}"/>
                                </td>
                                <td>
                                    <c:out value="${order.obeizhu}"/>
                                </td>
                                <td >
                                    <c:if test="${order.oflag==0}">
                                        <c:out value="已支付"/>
                                    </c:if>
                                    <c:if test="${order.oflag==1}">
                                        <c:out value="已接单"/>
                                    </c:if>
                                    <c:if test="${order.oflag==2}">
                                        <c:out value="已取消"/>
                                    </c:if>
                                </td>
                                <c:if test="${sessionScope.user.uflag == 0}">
                                    <td class="td-manage">
                                        <c:if test="${order.oflag == 0}">
                                        <button class="layui-btn layui-btn layui-btn-xs"
                                                onclick="xadmin.open('修改','${pageContext.request.contextPath}/orderServlet?method=byid&oid=${order.oid}',700,500)" >
                                            <i class="layui-icon">&#xe642;</i>修改</button>
                                        <button class="layui-btn-danger layui-btn layui-btn-xs"
                                                onclick="member_del(this,'${order.oid}')" href="javascript:;" >
                                            <i class="layui-icon">&#xe609;</i>接单</button>
                                        </c:if>
                                        <c:if test="${order.oflag == 1}">
                                            已接单
                                        </c:if>
                                        <c:if test="${order.oflag == 2}">
                                            已取消
                                        </c:if>
                                    </td>
                                </c:if>
                                <c:if test="${sessionScope.user.uflag == 1 }">
                                    <td class="td-manage">
                                        <c:if test="${order.oflag == 0}">
                                            <button class="layui-btn-danger layui-btn layui-btn-xs"
                                                    onclick="member_up(this,'${order.oid}')" href="javascript:;" >
                                                <i class="layui-icon">&#xe640;</i>取消</button>
                                        </c:if>
                                        <c:if test="${order.oflag == 1}">
                                            已接单
                                        </c:if>
                                        <c:if test="${order.oflag == 2}">
                                            已取消
                                        </c:if>
                                    </td>
                                </c:if>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>

                <%--<div class="layui-card-body ">
                    <div class="page">
                        <div>
                            <a class="prev" href="">&lt;&lt;</a>
                            <a class="num" href="">1</a>
                            <span class="current">2</span>
                            <a class="num" href="">3</a>
                            <a class="num" href="">489</a>
                            <a class="next" href="">&gt;&gt;</a></div>
                    </div>
                </div>--%>

            </div>
        </div>
    </div>
</div>
</body>
<script>
    layui.use(['laydate','form'], function(){
        var laydate = layui.laydate;
        var  form = layui.form;


        // 监听全选
        form.on('checkbox(checkall)', function(data){

            if(data.elem.checked){
                $('tbody input').prop('checked',true);
            }else{
                $('tbody input').prop('checked',false);
            }
            form.render('checkbox');
        });

        //执行一个laydate实例
        laydate.render({
            elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
            elem: '#end' //指定元素
        });


    });


    /*用户-删除*/
    function  member_del(obj,id){
        layer.confirm('确认要接单吗？',{icon:3,title:'提示信息'},function(index){
            $.ajax({
                type:"POST",
                url:"orderServlet?method=del",
                dataType:"text",
                data: {id: id},
                success:function (data){
                    if(data == 'true'){
                        //发异步删除数据
                        $(obj).parents("tr").remove();
                        layer.msg('已接单!',{icon:1,time:1000});
                    }else {
                        layer.msg('接单失败!',{icon:1,time:1000});
                    }
                },
                error:function (data){
                    layer.msg('错误!',{icon:1,time:1000});
                }
            });
        });
    }

    function member_up(obj,id){
        layer.confirm('确认要取消吗？',{icon:3,title:'提示信息'},function(index){
            $.ajax({
                type:"POST",
                url:"orderServlet?method=up",
                dataType:"text",
                data: {id: id},
                success:function (data){
                    if(data == 'true'){
                        //发异步删除数据
                        $(obj).parents("tr").remove();
                        layer.msg('已取消!',{icon:1,time:1000});
                    }else {
                        layer.msg('取消失败!',{icon:1,time:1000});
                    }
                },
                error:function (data){
                    layer.msg('错误!',{icon:1,time:1000});
                }
            });
        });
    }


    function delAll (argument) {
        var ids = [];

        // 获取选中的id
        $('tbody input').each(function(index, el) {
            if($(this).prop('checked')){
                ids.push($(this).val())
            }
        });

        layer.confirm('确认要删除吗？'+ids.toString(),{icon:3,title:'提示信息'},function(index){
            //捉到所有被选中的，发异步进行删除
            $.ajax({
                type:"POST",
                url:"orderServlet?method=delAll",
                dataType:"text",
                data: {ids: ids},
                success:function (data){
                    if(data == 'true'){
                        //发异步删除数据
                        layer.msg('接单成功', {icon: 1});
                        $(".layui-form-checked").not('.header').parents('tr').remove();
                    }else {
                        layer.msg('接单失败', {icon: 1});
                    }
                },
                error:function (data){
                    layer.msg('错误!',{icon:1,time:1000});
                }
            });
        });
    }
</script>
</html>