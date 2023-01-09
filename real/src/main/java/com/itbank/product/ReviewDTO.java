package com.itbank.product;

import java.sql.Date;

public class ReviewDTO {
	private int review_idx, product_idx, normal_idx, review_score;
	private String review_coment, review_writer;
	private Date review_writedate;
	public int getReview_idx() {
		return review_idx;
	}
	public void setReview_idx(int review_idx) {
		this.review_idx = review_idx;
	}
	public int getProduct_idx() {
		return product_idx;
	}
	public void setProduct_idx(int product_idx) {
		this.product_idx = product_idx;
	}
	public int getNormal_idx() {
		return normal_idx;
	}
	public void setNormal_idx(int normal_idx) {
		this.normal_idx = normal_idx;
	}
	public int getReview_score() {
		return review_score;
	}
	public void setReview_score(int review_score) {
		this.review_score = review_score;
	}
	public String getReview_coment() {
		return review_coment;
	}
	public void setReview_coment(String review_coment) {
		this.review_coment = review_coment;
	}
	public String getReview_writer() {
		return review_writer;
	}
	public void setReview_writer(String review_writer) {
		this.review_writer = review_writer;
	}
	public Date getReview_writedate() {
		return review_writedate;
	}
	public void setReview_writedate(Date review_writedate) {
		this.review_writedate = review_writedate;
	}

}
