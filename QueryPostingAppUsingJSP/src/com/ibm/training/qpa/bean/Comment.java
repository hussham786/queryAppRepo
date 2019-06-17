package com.ibm.training.qpa.bean;

import java.util.Date;

public class Comment {
	private int commentId, questionId, commentedBy, upvote;
	private Date dateCommented;
	public int getCommentId() {
		return commentId;
	}
	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}
	public int getQuestionId() {
		return questionId;
	}
	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}
	public int getCommentedBy() {
		return commentedBy;
	}
	public void setCommentedBy(int commentedBy) {
		this.commentedBy = commentedBy;
	}
	public int getUpvote() {
		return upvote;
	}
	public void setUpvote(int upvote) {
		this.upvote = upvote;
	}
	public Date getDateCommented() {
		return dateCommented;
	}
	public void setDateCommented(Date dateCommented) {
		this.dateCommented = dateCommented;
	}
}
