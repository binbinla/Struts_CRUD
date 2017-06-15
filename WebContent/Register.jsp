<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register here</title>
<style>
input{
	height:20px;
	width:150px;
}
</style>
</head>
<body style="margin:0px;padding:0px;background-size:100%;background-attachment:fixed;">
<div style="height:150px">
</div>

<div style="margin:0 auto;width:800px;height:600px;">
<div style="height:130px">
	<h1 style="text-align:center;">注册用户</h1>
	<h4 style="text-align:center;color:red">带*号信息必须填写</h4>
</div>
<div style="height:50px"></div>
	<div style="margin:0 auto;width:260px;height:300px">
		<form action="register" method="post">
		<center>
		<table style="border-collapse:separate;border-spacing:10px;">
		<tr>
			<th>用户id<a style="color:red;font-size:14">*</a></th><th><input style="height:25px" type="text" name="user.User_id"  value=""></th>
		</tr>
		<tr>
			<th>密码<a style="color:red;font-size:14">*</a></th><th><input style="height:25px" type="password" name="user.User_password" value=""></th>
		</tr>
		
		<tr>
			<th>昵称<a style="color:red;font-size:14">*</a></th><th><input style="height:25px" type="text" name="user.nickname"  value=""></th>
		</tr>
		<tr>
			<th>手机号码<a style="color:red;font-size:14">*</a></th><th><input style="height:25px" type="text" name="user.User_phone"  value=""></th>
		</tr>
		
		</table>
		<input type="submit" value="注册" name="submit" style="height:25px;width:50px">
		</center>
		</form>
	</div>
</div>
<h4 style="text-align:center;">3114006173软件工程1班陈锡滨</h4>
</body>
</html>