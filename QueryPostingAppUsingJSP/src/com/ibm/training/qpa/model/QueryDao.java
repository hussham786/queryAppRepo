package com.ibm.training.qpa.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ibm.training.qpa.bean.Answer;
import com.ibm.training.qpa.bean.Content;
import com.ibm.training.qpa.bean.Question;
import com.ibm.training.qpa.bean.User;
import com.mysql.jdbc.Connection;

public class QueryDao implements QueryDaoInteface {
	PreparedStatement theStatement;
	Connection dbCon;
	ResultSet resultSet, resultSetUser, resultSetQuestion, resultSetAnswer, resultSetAllQuestion;

	@Override
	public boolean validateUser(HttpServletRequest request, HttpServletResponse response, ServletContext context,
			User user) {
		// Get db connection object from servlet context
		dbCon = (Connection) context.getAttribute("dbCon");
		HttpSession session = request.getSession();
		boolean flag = false;
		String fetchQry = "select * from profileTable where email = ? and password = ?";

		// get the prepared statement reference
		try {
			// System.out.println("in authenticate servlet" +
			// this.dbCon.prepareStatement(fetchQry));
			this.theStatement = this.dbCon.prepareStatement(fetchQry);

			// set the values for prepared statement
			this.theStatement.setString(1, user.getEmail());
			this.theStatement.setString(2, user.getPassword());

			// execute the query
			ResultSet resultSet = this.theStatement.executeQuery();

			while (resultSet.next()) {
				if (resultSet.getString("email").equals(user.getEmail())
						&& resultSet.getString("password").equals(user.getPassword())) {
					session.setAttribute("userId", resultSet.getInt("userId"));
					flag = true;
				} else {
					flag = false;
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}

	@Override
	public ResultSet showContentData(HttpServletRequest request, HttpServletResponse response, ServletContext context) {
		// Get db connection object from servlet context
		dbCon = (Connection) context.getAttribute("dbCon");

		HttpSession session = request.getSession();
		String fetchQry = "select * from questionTable q, contentTable c, answerTable a where q.questionId = c.questionId and c.answerId = a.answerId order by a.dateAnswered desc";

		try {
			this.theStatement = this.dbCon.prepareStatement(fetchQry);

			// execute the query
			ResultSet resultSet = this.theStatement.executeQuery();
			session.setAttribute("result", resultSet);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return resultSet;
	}

	@Override
	public boolean insertQuestion(HttpServletRequest request, HttpServletResponse response, ServletContext context,
			Question question) {
		// Get db connection object from servlet context
		dbCon = (Connection) context.getAttribute("dbCon");
		boolean flag = false;
		String insertQry = "insert into questionTable(postedBy, type, topic, questionDesc) " + "values(?, ?, ?, ?)";
		try {
			this.theStatement = this.dbCon.prepareStatement(insertQry);

			// set the values for prepared statement
			this.theStatement.setInt(1, question.getPostedBy());
			this.theStatement.setInt(2, question.getType());
			this.theStatement.setInt(3, question.getTopic());
			this.theStatement.setString(4, question.getQuestionDesc());
			// this.theStatement.setDate(5, sqlDate);

			// execute the query
			if (this.theStatement.executeUpdate() > 0) {
				flag = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return flag;
	}

	@Override
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

	@Override
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

	@Override
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

	@Override
	public ResultSet fetchAllQuestion(int userId, ServletContext context) {
		dbCon = (Connection) context.getAttribute("dbCon");
		String fetchQry = "SELECT DISTINCT q.* FROM questionTable q JOIN contentTable c WHERE q.postedBy = ? AND q.questionId NOT IN (SELECT questionId FROM contentTable) ORDER BY q.dateQuestioned DESC";
		// set the values for prepared statement
		try {
			this.theStatement = this.dbCon.prepareStatement(fetchQry);
			this.theStatement.setInt(1, userId);

			resultSetAllQuestion = this.theStatement.executeQuery();
			// System.out.println("result set : " + resultSetQuestion.first());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return resultSetAllQuestion;
	}

	@Override
	public ResultSet fetchQuestionTopicWise(int questionId, int topic, ServletContext context) {
		dbCon = (Connection) context.getAttribute("dbCon");
		String fetchQry = "select * from questionTable where questionId = ? and topic = ?";
		// set the values for prepared statement
		try {
			this.theStatement = this.dbCon.prepareStatement(fetchQry);

			this.theStatement.setInt(1, questionId);
			this.theStatement.setInt(2, topic);
			resultSetQuestion = this.theStatement.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return resultSetQuestion;
	}

	@Override
	public ResultSet fetchAnswerTopicWise(int questionId, ServletContext context) {
		dbCon = (Connection) context.getAttribute("dbCon");
		String fetchQry = "select * from answerTable where questionId = ?";

		try {
			this.theStatement = this.dbCon.prepareStatement(fetchQry);
			this.theStatement.setInt(1, questionId);
			resultSetAnswer = this.theStatement.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return resultSetAnswer;
	}

	@Override
	public boolean insertAnswer(HttpServletRequest request, HttpServletResponse response, ServletContext context,
			Answer answer) {
		// TODO Auto-generated method stub
		return false;
	}

}
