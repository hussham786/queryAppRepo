package com.ibm.training.qpa.controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ibm.training.qpa.model.InsertAnswerInDB;


@WebServlet("/afteranswerservlet")
public class AfterAnswerServlet extends HttpServlet implements Servlet {

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Connection  con = (Connection) getServletContext().getAttribute("dbCon");
		HttpSession session = request.getSession();
		
	int questionId =(int) session.getAttribute("questionId");
	String answerDesc = request.getParameter("user_answer");
	
		/* int answeredById = (int) session.getAttribute("user_id"); */
	int answeredById = 130;
	int postedById = (int) session.getAttribute("postedById");
	java.sql.Date date = (java.sql.Date)session.getAttribute("dateQuestioned");
	
	InsertAnswerInDB aas = new InsertAnswerInDB();
	int insertIntoAnswerTable = aas.insertAnswerInfo(con,questionId,answeredById,postedById,answerDesc,date);
	
	RequestDispatcher dispatch = request.getRequestDispatcher("AfterAnswerJsp.jsp");
	dispatch.include(request, response);
		
	
	
	}
	
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		doGet(request, response);
	}

}
