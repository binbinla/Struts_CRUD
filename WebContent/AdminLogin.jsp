<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Login</title>
<style type="text/css">
        
        table{
            border: solid 1px #666;
            border-collapse: collapse;
            width: 100%;
            cursor: default;
        }
        tr{
            border: solid 1px #666;
            height: 30px;
        }
        table thead tr{
            background-color: #ccc;
        }
        td{
            border: solid 1px #666;
			text-align: center;
        }
        th{
            border: solid 1px #666;
            text-align: center;
            cursor: pointer;
        }
</style>
</head>
<body style="margin:0px;padding:0px;background-size:100%;background-attachment:fixed;">
<center>
<table style="border:1px black solid">
	<tr>
		<th>用户id</th><th>密码</th><th>昵称</th><th>手机号码</th><th>操作</th>
	</tr>
	<s:iterator value="list">
		<tr>
			<td> <s:property value="user_id"/> </td>
			<td> <s:property value="user_password"/> </td>
			<td> <s:property value="nickname"/> </td>
			<td> <s:property value="user_phone"/> </td>
		
			<td><a href="homework_structs/delete?delete_id=<s:property value='user_id'/>" onclick="return confirm('确认删除?')">删除</a></td>
		</tr>
	</s:iterator>
</table>
</center>
</body>
</html>