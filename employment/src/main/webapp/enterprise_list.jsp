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
            <a href="">企业信息管理</a>
            <a>
              <cite>企业信息管理</cite></a>
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
                    <button class="layui-btn" onclick="xadmin.open('添加企业','${pageContext.request.contextPath}/enterprise_add.jsp',500,300)"><i class="layui-icon"></i>添加</button>
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
                                企业名称
                            </th>
                            <th>
                                企业编号
                            </th>
                            <th>
                                企业密码
                            </th>
                            <th>
                                营业执照
                            </th>
                            <th>
                                企业信息
                            </th>
                            <th>
                                所在城市
                            </th>
                            <th>
                                企业电话
                            </th>
                            <th>
                                企业邮箱
                            </th>
                            <th>
                                企业状态
                            </th>
                             <th>
                                操作
                             </th>
                
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${enterpriseList}" var="enterprise">
                            <tr>
                                <%--<td>
                                    <input type="checkbox" name="id" value="${prov.pid}"   lay-skin="primary">
                                </td>--%>
                                <td>
                                    <c:out value="${enterprise.eid}"/>
                                </td>
                                <td>
                                    <c:out value="${enterprise.ename}"/>
                                </td>
                                <td>
                                    <c:out value="${enterprise.eno}"/>
                                </td>
                                <td>
                                    <c:out value="${enterprise.epwd}"/>
                                </td>
                                <td>
                                    <img src="${pageContext.request.contextPath}/img/${enterprise.elicense}">
                                </td>
                                <td>
                                    <c:out value="${enterprise.einfo}"/>
                                </td>
                                <td>
                                    <c:out value="${enterprise.ecid.cname}"/>
                                </td>
                                <td >
                                    <c:out value="${enterprise.ephone}"/>
                                </td>
                                <td >
                                    <c:out value="${enterprise.eemail}"/>
                                </td>
                                <td >
                                    <c:if test="${enterprise.eflag == 0}">
                                        未审核
                                    </c:if>
                                    <c:if test="${enterprise.eflag == 1}">
                                        已通过
                                    </c:if>
                                    <c:if test="${enterprise.eflag == 2}">
                                        未通过
                                    </c:if>
                                </td>
                                    <td class="td-manage">
                                        <c:if test="${sessionScope.enterprise != null}">
                                            <button class="layui-btn layui-btn layui-btn-xs"
                                                    onclick="xadmin.open('修改','${pageContext.request.contextPath}/enterprise/selectEnterpriseById?eid=${enterprise.eid}',700,500)" >
                                                <i class="layui-icon">&#xe642;</i>修改</button>
                                        </c:if>
                                        <c:if test="${sessionScope.university != null}">
                                            <button class="layui-btn-warm layui-btn layui-btn-xs"
                                                    onclick="member_agree(this,'${enterprise.eid}')" href="javascript:;" >
                                                <i class="layui-icon">&#xe672;</i>审核</button>
                                        </c:if>
                                        <c:if test="${sessionScope.university != null}">
                                        <button class="layui-btn-danger layui-btn layui-btn-xs"
                                                onclick="member_del(this,'${enterprise.eid}')" href="javascript:;" >
                                            <i class="layui-icon">&#xe640;</i>删除</button>
                                        </c:if>
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
                url:"${pageContext.request.contextPath}/enterprise/delEnterprise",
                dataType:"text",
                data: {eid: id},
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

    function member_agree(obj,id){
        layer.confirm('确认要通过审核吗吗？',{icon:3,title:'提示信息'},function(index){
            $.ajax({
                type:"POST",
                url:"${pageContext.request.contextPath}/enterprise/activeEnterprise",
                dataType:"text",
                data: {eid: id},
                success:function (data){
                    if(data == 'true'){
                        $(obj).parents("tr").remove();
                        layer.msg('已通过!',{icon:1,time:1000});
                    }else {
                        layer.msg('审核失败!',{icon:1,time:1000});
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