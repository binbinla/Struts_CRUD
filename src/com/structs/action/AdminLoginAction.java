package com.structs.action;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.structs.dao.DAO;
import com.structs.javabean.Admin;
import com.structs.javabean.User;

public class AdminLoginAction extends ActionSupport {
	private DAO dao = new DAO();
	private Admin admin;
	private String sql;
	private List<User> userlist = new ArrayList<User>();

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public String adminlogin() {
		// System.out.println(8);
		ResultSet rs = null;

		String admin_password;
		sql = "select * from admin where Admin_id = " + "'" + admin.getAdmin_id() + "'";
		rs = dao.executeQuery(sql);
		try {
			if (rs.next()) {
				String userssql;
				admin_password = rs.getString(2);
				if (admin.getAdmin_password().equals(admin_password)) {
					System.out.println(admin.getAdmin_id());
					admin.setAdmin_name(rs.getString(3));
					admin.setAdmin_phone(rs.getString(4));
					userssql = "select * from users";
					rs = dao.executeQuery(userssql);
					System.out.println(userssql);
					while (rs.next()) {
						User user = new User();
						System.out.println(rs.getString(1));
						user.setUser_id(rs.getString(1));
						user.setUser_password(rs.getString(2));
						user.setNickname(rs.getString(3));
						user.setUser_phone(rs.getString(4));
						userlist.add(user);
					}
					ActionContext.getContext().put("list", userlist);
				//	System.out.println(10);
					return "success";
				} else {
					System.out.println("管理员密码输入错误，请检验后重新输入！");
					return "Admin_password_error";
				}
			} else {
				System.out.println("输入的管理员ID不存在");
				return "Admin_id_error";
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "error";
		}
	}
}
