<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register success</title>
</head>
<body>
<h1>成功注册的用户信息如下</h1>
用户名：${user.user_id}<br/>
密码：${user.user_password}<br/>
昵称：${user.nickname}<br/>
手机号码：${user.user_phone}<br/>
</body>
</html>