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
            <a href="">学生信息管理</a>
            <a>
              <cite>简历信息管理</cite></a>
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
                        <%--<button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>--%>
                        <button class="layui-btn" onclick="xadmin.open('添加简历','${pageContext.request.contextPath}/province_add.jsp',500,300)"><i class="layui-icon"></i>添加</button>
                    </div>
                <div class="layui-card-body layui-table-body layui-table-main">
                    <table class="layui-table layui-form">
                        <thead>
                        <tr>
                            <%--<th>
                                <input type="checkbox" lay-filter="checkall" name="" lay-skin="primary">
                            </th>--%>
                            <th>
                                编号
                            </th>
                            <th>
                                期望岗位
                            </th>
                            <th>
                                期望薪资
                            </th>
                            <th>
                                期望城市
                            </th>
                            <th>
                                掌握技能
                            </th>
                            <th>
                                学生姓名
                            </th>
                             <th>
                                操作
                             </th>
                
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${resumeList}" var="resume">
                            <tr>
                                <%--<td>
                                    <input type="checkbox" name="id" value="${prov.pid}"   lay-skin="primary">
                                </td>--%>
                                <td>
                                    <c:out value="${resume.rid}"/>
                                </td>
                                <td >
                                    <c:out value="${resume.rjobs}"/>
                                </td>
                                <td >
                                    <c:out value="${resume.rprice}"/>
                                </td>
                                <td >
                                    <c:out value="${resume.rcid.cname}"/>
                                </td>
                                <td >
                                    <c:out value="${resume.rskill}"/>
                                </td>
                                <td >
                                    <c:out value="${resume.rsid.sname}"/>
                                </td>
                                    <td class="td-manage">
                                        <button class="layui-btn layui-btn layui-btn-xs"
                                                onclick="xadmin.open('修改','${pageContext.request.contextPath}/provinceServlet?method=byid&pid=${prov.pid}',700,500)" >
                                            <i class="layui-icon">&#xe642;</i>修改</button>
                                        <button class="layui-btn-danger layui-btn layui-btn-xs"
                                                onclick="member_del(this,'${prov.pid}')" href="javascript:;" >
                                            <i class="layui-icon">&#xe640;</i>删除</button>
                                    </td>
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
    function member_del(obj,id){
        layer.confirm('确认要删除吗？',{icon:3,title:'提示信息'},function(index){
            $.ajax({
                type:"POST",
                url:"provinceServlet?method=del",
                dataType:"text",
                data: {id: id},
                success:function (data){
                    if(data == 'true'){
                        //发异步删除数据
                        $(obj).parents("tr").remove();
                        layer.msg('已删除!',{icon:1,time:1000});

                    }else {
                        layer.msg('删除失败!',{icon:1,time:1000});
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
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
    }
</script>
</html>