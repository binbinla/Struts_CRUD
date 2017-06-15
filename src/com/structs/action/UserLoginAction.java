package com.structs.action;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;
import com.structs.dao.DAO;
import com.structs.javabean.User;

public class UserLoginAction extends ActionSupport {
	private DAO dao = new DAO();
	private String sql;
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String userlogin() {
		ResultSet rs = null;
		String user_password = null;
		sql = "select * from users where User_id = " + "'" + user.getUser_id() + "'";
		System.out.println(user.getUser_id());
		rs = dao.executeQuery(sql);
		try {
			if (rs.next()) {
				user_password = rs.getString(2);
				if (user.getUser_password().equals(user_password)) {
					System.out.println(user.getUser_id());
					user.setNickname(rs.getString(3));
					user.setUser_phone(rs.getString(4));
					return "success";
				} else {
					System.out.println("用户密码输入错误，请检验后重新输入！");
					return "User_password_error";
				}
			} else {
				System.out.println("输入的用户ID不存在");
				return "User_id_error";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "error";
		}
	}
}
