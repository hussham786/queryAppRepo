package com.ibm.training.qpa.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class FetchQuestion {
	PreparedStatement ps;
	
	
	public ResultSet fetchQuestion(Connection con) {
		
		String query = "select * from questiontable";
		
		ResultSet rs =null;
		
		try {
			
			System.out.println("FetchQuestion.fetchQuestion(1)");
			
			this.ps = con.prepareStatement(query);
			System.out.println("FetchQuestion.fetchQuestion(2)");
		rs	= ps.executeQuery(query);
		System.out.println("FetchQuestion.fetchQuestion(3)");
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("this appears means preparedstatement  is null");
			e.printStackTrace();
		}
		return rs;
		
		
		
		
	}

}
