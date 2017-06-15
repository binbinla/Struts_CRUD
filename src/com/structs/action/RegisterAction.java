package com.structs.action;

import com.opensymphony.xwork2.ActionSupport;
import com.structs.dao.DAO;
import com.structs.javabean.User;

public class RegisterAction extends ActionSupport {
	private DAO dao = new DAO();
	private User user;
	private String sql;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	
	public String executeRe() {
		if (user.getUser_id().equals("") || user.getUser_password().equals("") || user.getNickname().equals("")
				|| user.getUser_phone().equals("")) {
			System.out.println("注册信息中带*号内容不能为空");
			return "null_error";
		} else {
			sql = "insert into users values" + "(" + user.getUser_id() + "," + user.getUser_password() + "," + "'"
					+ user.getNickname() + "'" + "," + user.getUser_phone() + ")";
			System.out.println(sql);
			if (dao.executeUpdate(sql) == 1) {
				System.out.println("注册成功");
				return "success";
			} else {
				System.out.println("注册失败");
				return "register_fail";
			}
		}
	}
}
