package com.ibm.training.qpa;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletContext;

import com.mysql.jdbc.Connection;

public class Question {
	Connection dbCon;
	ResultSet resultSetQuestion;
	PreparedStatement theStatement;
	public ResultSet fetchQuestion(int questionId, ServletContext context) {
		dbCon = (Connection) context.getAttribute("dbCon");
		String fetchQry = "select * from questionTable where questionId = ?";
		// set the values for prepared statement
		try {
			this.theStatement = this.dbCon.prepareStatement(fetchQry);
			
			this.theStatement.setInt(1, questionId);
			resultSetQuestion = this.theStatement.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return resultSetQuestion;
	}
}
