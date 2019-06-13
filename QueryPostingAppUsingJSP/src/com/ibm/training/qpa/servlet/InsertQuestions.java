package com.ibm.training.qpa.servlet;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;

/**
 * Servlet implementation class InsertQuestions
 */
@WebServlet("/insert")
public class InsertQuestions extends HttpServlet {
	PreparedStatement theStatement;
	Connection dbCon;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Get db connection object from servlet context
		dbCon = (Connection) getServletContext().getAttribute("dbCon");
		HttpSession session = request.getSession();
		java.util.Date utilDate = new java.util.Date();
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		String insertQry = "insert into questionTable(postedBy, type, topic, questionDesc, dateQuestioned) "
				+ "values(?, ?, ?, ?, ?)";
		
		// get a reference to the prepared statement
		try {
			this.theStatement = this.dbCon.prepareStatement(insertQry);
			
			// set the values for prepared statement
			this.theStatement.setInt(1, Integer.parseInt(String.valueOf(session.getAttribute("userId"))));
			this.theStatement.setString(2, request.getParameter("type"));
			this.theStatement.setString(3, request.getParameter("topic"));
			this.theStatement.setString(4, request.getParameter("question"));
			this.theStatement.setDate(5, sqlDate);
			
			// execute the query
			if (this.theStatement.executeUpdate() > 0) {
				//request.getRequestDispatcher("retrieve").forward(request, response);
				response.sendRedirect("home.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
