<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	function check(obj) {
		if (obj.id == 'checkbox1' && obj.checked == true) {
			document.getElementById('checkbox2').checked = false;
			document.getElementById('form1').action = "userlogin";
			document.getElementById('input1').name = "user.user_id";
			document.getElementById('input2').name = "user.user_password";
		} else if (obj.id == 'checkbox2' && obj.checked == true) {
			document.getElementById('checkbox1').checked = false;
			document.getElementById('form1').action = "adminlogin";
			document.getElementById('input1').name = "admin.admin_id";
			document.getElementById('input2').name = "admin.admin_password";
		}
	}
</script>
<title>初始登录页面</title>
</head>
<body
	style="margin: 0px; padding: 0px; background-size: 100%; background-attachment: fixed;">
	<div style="height: 150px"></div>

	<div style="margin: 0 auto; width: 800px; height: 600px;">
		<div style="height: 130px">
			<h1 style="text-align: center; font-size: 50">欢迎登录</h1>
		</div>
		<div style="height: 315px;">
			<div style="height: 100px"></div>
			<center>
				<form id="form1" action="userlogin" method="get">
					<table style="border-collapse: separate; border-spacing: 15px;">
						<tr>
							<th>用户名</th>
							<th><input id="input1" type="text" name="user.user_id"
								value="" style="width: 150px; height: 30px;"></th>
						</tr>
						<tr>
							<th>密码</th>
							<th><input id="input2" type="password"
								name="user.user_password" value=""
								style="width: 150px; height: 30px;"></th>
						</tr>
					</table>
					普通用户<input type="checkbox" name="users" id='checkbox1'
						checked='true' onclick='check(this)'> &nbsp&nbsp管理员<input
						type="checkbox" name="adminlogin" id='checkbox2' onclick='check(this)'>
					<br /></br> <input type="submit" value="登录" name="submit"
						style="height: 30px; width: 50px">
				</form>
			</center>
		</div>
		<br />
		<div style="text-align: center; mwidth: 130px">
			<a href="/homework_structs/Register.jsp">新用户点此注册</a>
		</div>
	</div>
	<h4 style="text-align: center;">3114006173软件工程1班陈锡滨</h4>
</body>
</html>