<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 

<title>激活</title>
<link href="css/login.css" type="text/css" rel="stylesheet">

</head> 
<body>
<div class="div_top">物流系统</div>
<div class="login">
    <div class="message">
		用户激活
		<a href="login.jsp" class="back">登录</a>
	</div>
    <div id="darkbannerwrap"></div>
    
    <form action="userServlet?method=active" method="post">
		<input name="action" value="active" type="hidden">
		<hr class="hr20">
		<input name="uemail" placeholder="请输入邮箱" required="" type="text" id="uemail">
		<hr class="hr20">
		<hr class="hr20">
		<hr class="hr15">
		<input value="激活" style="width:100%;" type="submit" id="login_btn">
		<hr class="hr20">
		  <a onClick="alert('请联系管理员')" style="color: #2a83cf">忘记密码</a>
	</form>

	
</div>

<div class="copyright">版权所有@<span style="color:#f77118">&nbsp;2021&nbsp;&nbsp;</span>开发一部-韩秋智</div>
<script type="text/javascript" src="js/jquery.js"></script>
<script >
	$(function(){

	});

</script>
</body>
</html>