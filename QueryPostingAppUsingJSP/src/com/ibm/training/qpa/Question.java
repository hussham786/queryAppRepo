package com.ibm.training.qpa;

import java.sql.ResultSet;
import javax.servlet.ServletContext;

import com.ibm.training.qpa.model.QueryDao;

public class Question {
	QueryDao dao = new QueryDao();

	public ResultSet fetchQuestion(int questionId, ServletContext context) {

		return dao.fetchQuestion(questionId, context);
	}
	
	public ResultSet fetchQuestionTopicWise(int questionId, int topic, ServletContext context) {
		return dao.fetchQuestionTopicWise(questionId, topic, context);
	}
}
