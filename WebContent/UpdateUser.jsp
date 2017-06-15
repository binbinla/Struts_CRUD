<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Update User</title>
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
	<h1 style="text-align:center;">修改User个人信息</h1>
	<h4 style="text-align:center;color:red">只允许修改带*号信息</h4>
</div>
<div style="height:50px"></div>
	<div style="margin:0 auto;width:260px;height:290px">
		<form action="update" method="post">
		<center>
		<table style="border-collapse:separate;border-spacing:8px;">
		<tr>
			<th>用户名</th><th><input type="text" name="user.user_id"  value="${user.user_id}" readonly="true"></th>
		</tr>
		<tr>
			<th>密码</th><th><input type="password" name="user.user_password" value="${user.user_password}"></th>
		</tr>
		
		<tr>
			<th>昵称</th><th><input type="text" name="user.nickname"  value="${user.nickname}" readonly="true"></th>
		</tr>
		
		<tr>
			<th>手机号码<a style="color:red;font-size:14">*</a></th><th><input type="text" name="user.user_phone"  value="${user.user_phone}"></th>
		</tr>
		
		
		</table>
		<input type="submit" value="修改" name="submit" style="height:25px;width:50px">
		</center>
		</form>
	</div>
</div>

<h4 style="text-align:center;">3114006173软件工程1班陈锡滨</h4>
</body>
</html>