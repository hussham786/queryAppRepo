package com.ibm.training.qpa;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletContext;

import com.mysql.jdbc.Connection;

public class UserProfile {
	Connection dbCon;
	ResultSet resultSetUser;
	PreparedStatement theStatement;
	public ResultSet fetchUser(int userId, ServletContext context) {
		dbCon = (Connection) context.getAttribute("dbCon");
		String fetchQry = "select * from profileTable where userId = ?";
		
		try {
			this.theStatement = this.dbCon.prepareStatement(fetchQry);
			
			this.theStatement.setInt(1, userId);
			resultSetUser = this.theStatement.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return resultSetUser;
	}
}
