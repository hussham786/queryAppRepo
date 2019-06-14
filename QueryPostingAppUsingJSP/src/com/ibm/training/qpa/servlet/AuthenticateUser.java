package com.ibm.training.qpa.servlet;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

/**
 * Servlet implementation class AuthenticateUser
 */
@WebServlet("/user")
public class AuthenticateUser extends HttpServlet {
	PreparedStatement theStatement;
	Connection dbCon;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Get db connection object from servlet context
		dbCon = (Connection) getServletContext().getAttribute("dbCon");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String fetchQry = "select * from userTable where email = ? and password = ?";
		
		// get the prepared statement reference
		try {
			//System.out.println("in authenticate servlet" + this.dbCon.prepareStatement(fetchQry));
			this.theStatement = this.dbCon.prepareStatement(fetchQry);
			
			// set the values for prepared statement
			this.theStatement.setString(1, email);
			this.theStatement.setString(2, password);
			
			// execute the query
			ResultSet resultSet = this.theStatement.executeQuery();
			
			while (resultSet.next()) {
				if(resultSet.getString("email").equals(email) && resultSet.getString("password").equals(password)) {
					request.setAttribute("userId", resultSet.getInt("userId"));
					request.getRequestDispatcher("retrieve").forward(request, response);
				} else {
					response.getWriter().println("Invalid UserId Password");
					request.getRequestDispatcher("index.jsp").forward(request, response);
				}
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
