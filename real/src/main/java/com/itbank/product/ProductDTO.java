package com.itbank.product;

import java.sql.Date;

public class ProductDTO {
	private String product_hostname, product_title, product_addrs, product_category, product_mtitle, product_mstory, product_story, product_img, product_checkin, product_checkout, product_pet;
	public String getProduct_checkin() {
		return product_checkin;
	}
	public void setProduct_checkin(String product_checkin) {
		this.product_checkin = product_checkin;
	}
	public String getProduct_checkout() {
		return product_checkout;
	}
	public void setProduct_checkout(String product_checkout) {
		this.product_checkout = product_checkout;
	}
	private int product_idx, host_idx, product_price, product_score, product_reviewcnt, product_maxpeople, product_bedroom, product_bed, product_bathroom;
	private double product_longitude, product_latitude;
	private Date product_cantbuy;
	public String getProduct_hostname() {
		return product_hostname;
	}
	public void setProduct_hostname(String product_hostname) {
		this.product_hostname = product_hostname;
	}
	public String getProduct_title() {
		return product_title;
	}
	public String getProduct_pet() {
		return product_pet;
	}
	public void setProduct_pet(String product_pet) {
		this.product_pet = product_pet;
	}
	public void setProduct_title(String product_title) {
		this.product_title = product_title;
	}
	public String getProduct_addrs() {
		return product_addrs;
	}
	public void setProduct_addrs(String product_addrs) {
		this.product_addrs = product_addrs;
	}
	public String getProduct_category() {
		return product_category;
	}
	public void setProduct_category(String product_category) {
		this.product_category = product_category;
	}
	public String getProduct_mtitle() {
		return product_mtitle;
	}
	public void setProduct_mtitle(String product_mtitle) {
		this.product_mtitle = product_mtitle;
	}
	public String getProduct_mstory() {
		return product_mstory;
	}
	public void setProduct_mstory(String product_mstory) {
		this.product_mstory = product_mstory;
	}
	public String getProduct_story() {
		return product_story;
	}
	public void setProduct_story(String product_story) {
		this.product_story = product_story;
	}
	public String getProduct_img() {
		return product_img;
	}
	public void setProduct_img(String product_img) {
		this.product_img = product_img;
	}
	public int getProduct_idx() {
		return product_idx;
	}
	public void setProduct_idx(int product_idx) {
		this.product_idx = product_idx;
	}
	public int getHost_idx() {
		return host_idx;
	}
	public void setHost_idx(int host_idx) {
		this.host_idx = host_idx;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public int getProduct_score() {
		return product_score;
	}
	public void setProduct_score(int product_score) {
		this.product_score = product_score;
	}
	public int getProduct_reviewcnt() {
		return product_reviewcnt;
	}
	public void setProduct_reviewcnt(int product_reviewcnt) {
		this.product_reviewcnt = product_reviewcnt;
	}
	public int getProduct_maxpeople() {
		return product_maxpeople;
	}
	public void setProduct_maxpeople(int product_maxpeople) {
		this.product_maxpeople = product_maxpeople;
	}
	public int getProduct_bedroom() {
		return product_bedroom;
	}
	public void setProduct_bedroom(int product_bedroom) {
		this.product_bedroom = product_bedroom;
	}
	public int getProduct_bed() {
		return product_bed;
	}
	public void setProduct_bed(int product_bed) {
		this.product_bed = product_bed;
	}
	public int getProduct_bathroom() {
		return product_bathroom;
	}
	public void setProduct_bathroom(int product_bathroom) {
		this.product_bathroom = product_bathroom;
	}
	public double getProduct_longitude() {
		return product_longitude;
	}
	public void setProduct_longitude(double product_longitude) {
		this.product_longitude = product_longitude;
	}
	public double getProduct_latitude() {
		return product_latitude;
	}
	public void setProduct_latitude(double product_latitude) {
		this.product_latitude = product_latitude;
	}
	public Date getProduct_cantbuy() {
		return product_cantbuy;
	}
	public void setProduct_cantbuy(Date product_cantbuy) {
		this.product_cantbuy = product_cantbuy;
	}
	
	
	
}
