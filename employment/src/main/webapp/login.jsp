<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>登录</title>
<link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
    <p class="center">登录用户名为：admin，密码为admin</p>
    <p class="center">在用户名和密码错误时，点击登录按钮可以看到表单的摇晃效果。</p>
    <div id="wrapper" class="login-page">
        <div id="login_form" class="form">
            <form class="register-form">
                <input type="text" placeholder="用户名" value="admin" id="r_user_name" />
                <input type="password" placeholder="密码" id="r_password" />
                <input type="text" placeholder="电子邮件" id="r_emial" />
                <button id="create">创建账户</button>
                <p class="message">已经有了一个账户? <a href="#">立刻登录</a></p>
            </form>
            <form class="login-form">
                 <h2>管理登录</h2>
                <input type="text" placeholder="用户名" value="admin" id="user_name" />
                <input type="password" placeholder="密码" id="password" />
                <select style="width: 100%;font-size: 14px;background: #f2f2f2;border: 0;margin: 0 0 15px;
                            padding: 15px;box-sizing: border-box;outline: 0;" name="flag" required="" id="flag">
                    <option value="">请选择角色</option>
                    <option value="0">管理员</option>
                    <option value="1">企业</option>
                    <option value="2">学生</option>
                </select>
                <button id="login">登　录</button>
                <p class="message">还没有账户? <a href="#">立刻创建</a></p>
            </form>
        </div>
    </div>

<script src="js/jquery.min.js"></script>
<script type="text/javascript">
	function check_login()
	{
	 var no=$("#user_name").val();
	 var pwd=$("#password").val();
	 var flag=$("#flag").val();
        $.ajax({
            type:"POST",
            url: "login/login",
            dataType:"text",
            data:{no:no,pwd:pwd,flag:flag},
            success: function(data){
                //alert(data)
                if(data =='0'){
                    alert("成功...");
                    //window.location.href='index.jsp';
                    $(location).attr('href', 'index.jsp');
                } else if (data == '1'){
                    alert("用户未激活...");
                    //window.location.href='active.jsp';
                }else if(data == '2'){
                    alert("验证码错误...");
                }else {
                    alert("用户名或密码错误...");
                    $("#login_form").removeClass('shake_effect');
                    setTimeout(function()
                    {
                        $("#login_form").addClass('shake_effect')
                    },1);
                }
            },
            error:function (data){
                alert("错误...")
            }
        });
	}
	function check_register(){
		var name = $("#r_user_name").val();
		var pass = $("#r_password").val();
		var email = $("r_email").val();
		if(name!="" && pass=="" && email != "")
		 {
		  alert("注册成功！");
		  $("#user_name").val("");
		  $("#password").val("");
		 }
		 else
		 {
		  $("#login_form").removeClass('shake_effect');  
		  setTimeout(function()
		  {
		   $("#login_form").addClass('shake_effect')
		  },1);  
		 }
	}
	$(function(){
		$("#create").click(function(){
			check_register();
			return false;
		})
		$("#login").click(function(){
			check_login();
			return false;
		})
		$('.message a').click(function () {
		    $('form').animate({
		        height: 'toggle',
		        opacity: 'toggle'
		    }, 'slow');
		});
	})
	</script>
</body>
</html>