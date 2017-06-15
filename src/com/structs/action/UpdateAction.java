package com.structs.action;

import com.opensymphony.xwork2.ActionSupport;
import com.structs.dao.DAO;
import com.structs.javabean.User;

public class UpdateAction extends ActionSupport {
	private DAO dao = new DAO();
	private User user;
	private String sql;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String executeUp() {

	//	System.out.println(8);
		if (user.getUser_phone().equals("")) {
			System.out.println("更改后的手机号码不能为空！");
			return "null_error";
		} else {

			sql = "update users set " + "User_phone = " + "'" + user.getUser_phone() + "'" + " where User_id = " + "'"
					+ user.getUser_id() + "'";
			System.out.println(sql);
			if (dao.executeUpdate(sql) == 1) {
				System.out.println(user.getUser_phone());
				return "success";
			} else {
				return "update_fail";
			}
		}
	}
}
