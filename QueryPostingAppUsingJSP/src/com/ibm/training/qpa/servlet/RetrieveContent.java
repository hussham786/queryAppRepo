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
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;

/**
 * Servlet implementation class RetrieveContent
 */
@WebServlet("/retrieve")
public class RetrieveContent extends HttpServlet {
	PreparedStatement theStatement;
	Connection dbCon;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Get db connection object from servlet context
		dbCon = (Connection) getServletContext().getAttribute("dbCon");
		HttpSession session = request.getSession();
		//String userId = (String) request.getAttribute("userId");
		String fetchQry = "select * from contentTable";
		
		try {
			this.theStatement = this.dbCon.prepareStatement(fetchQry);
			
			// execute the query
			ResultSet resultSet = this.theStatement.executeQuery();
			session.setAttribute("result", resultSet);
			session.setAttribute("userId", request.getAttribute("userId"));
			//request.getRequestDispatcher("home.jsp").forward(request, response);
			response.sendRedirect("home.jsp");
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
