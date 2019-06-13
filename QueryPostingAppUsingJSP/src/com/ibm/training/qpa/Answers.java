package com.ibm.training.qpa;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletContext;

import com.mysql.jdbc.Connection;

public class Answers {
	Connection dbCon;
	ResultSet resultSetAnswer;
	PreparedStatement theStatement;
	
	public ResultSet fetchAnswer(int answerId, ServletContext context) {
		dbCon = (Connection) context.getAttribute("dbCon");
		String fetchQry = "select * from answerTable where answerId = ?";
		
		try {
			this.theStatement = this.dbCon.prepareStatement(fetchQry);
			this.theStatement.setInt(1, answerId);
			resultSetAnswer = this.theStatement.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return resultSetAnswer;
		
	}

}
