<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 

<title>登录</title>
<link href="css/login.css" type="text/css" rel="stylesheet">

</head> 
<body>
<div class="div_top">物流系统</div>
<div class="login">
    <div class="message">
		用户登录
		<a href="userServlet?method=prov&flag=1" class="back">注册</a>
	</div>
    <div id="darkbannerwrap"></div>
    
    <form id="login" method="post">
		<input name="username" placeholder="用户名" required="" type="text" id="user">
		<hr class="hr15">
		<input name="password" placeholder="密码" required="" type="password" id="pass">
		<hr class="hr15">
		<select name="flag" required="" id="flag">
			<option value="">请选择角色</option>
			<option value="0">管理员</option>
			<option value="1">用户</option>
		</select>
		<hr class="hr15">
		<input type="text" name="yzm" placeholder="验证码" required id="yzm">
		<img src="checkCodeServlet">
		<hr class="hr15">
		<input value="登录" style="width:100%;" type="submit" id="login_btn">

		<hr class="hr20">
		  <a onClick="alert('请联系管理员')" style="color: #2a83cf">忘记密码</a>
	</form>

	
</div>

<div class="copyright">版权所有@<span style="color:#f77118">&nbsp;2021&nbsp;&nbsp;</span>开发一部-韩秋智</div>
<script type="text/javascript" src="js/jquery.js"></script>
<script >
	$(function(){
		$("#login_btn").click(function(){

			var selectuser = $("#user").val();
			var pword = $("#pass").val();
			var flag = $("#flag").val();
			var yzm = $("#yzm").val();

			if (selectuser == "" || selectuser.length <= 1) {
				alert("用户名不能为空");
				$("#user").focus();
				return false;
			}
			if (pword == "" || pword.length < 1) {
				alert("密码不能为空");
				$("#pass").focus();
				return false;
			}
			if (flag == "" || flag.length < 1) {
				alert("角色不能为空");
				$("#flag").focus();
				return false;
			}
			if (yzm == "" || yzm.length < 1) {
				alert("验证码不能为空");
				$("#yzm").focus();
				return false;
			}

			getUserDep(selectuser,pword,flag,yzm);
		});

		function getUserDep(v1,v2,v3,v4){
			$.ajax({
				type:"POST",
				url: "userServlet?method=login",
				dataType:"text",
				data:{uname:v1,upwd:v2,uflag:v3,yzm:v4},
				success: function(data){
					//alert(data)
					if(data =='0'){
						//alert("成功...");
						window.location.href='index.jsp';
					} else if (data == '1'){
						alert("用户未激活...");
						window.location.href='active.jsp';
					}else if(data == '2'){
						alert("验证码错误...");
					}else {
						alert("用户名或密码错误...")
					}
				},
				error:function (data){
					alert("错误...")
				}
			});
		}
	});

</script>
</body>
</html>