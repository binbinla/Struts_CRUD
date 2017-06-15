package com.structs.action;

import com.opensymphony.xwork2.ActionSupport;
import com.structs.dao.DAO;

public class DeleteAction extends ActionSupport {
	private DAO dao = new DAO();
	private String sql;
	private String delete_id;

	public String getDelete_id() {
		return delete_id;
	}

	public void setDelete_id(String delete_id) {
		this.delete_id = delete_id;
	}

	public String executeDe() {
		sql = "delete from users where User_id = " + "'" + delete_id + "'";
		if (dao.executeUpdate(sql) == 1) {
			System.out.println(delete_id);
			return "success";
		} else {
			return "delete_fail";
		}
	}
}
