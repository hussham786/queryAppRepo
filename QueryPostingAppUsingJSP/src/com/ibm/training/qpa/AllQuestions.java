package com.ibm.training.qpa;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletContext;

import com.mysql.jdbc.Connection;

public class AllQuestions {
	Connection dbCon;
	ResultSet resultSetQuestion;
	PreparedStatement theStatement;
	public ResultSet fetchQuestion(ServletContext context) {
		dbCon = (Connection) context.getAttribute("dbCon");
		String fetchQry = "select * from questionTable";
		// set the values for prepared statement
		try {
			this.theStatement = this.dbCon.prepareStatement(fetchQry);
			
			resultSetQuestion = this.theStatement.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return resultSetQuestion;
	}
}
