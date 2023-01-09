package com.itbank.member;

import java.sql.Date;

public class NormalMemberDTO {
	int normal_idx;
	String	normal_name, normal_email, normal_phoneNum
			, normal_gender, normal_addrs, isDeleted, authority;
	Date normal_birth;
	public int getNormal_idx() {
		return normal_idx;
	}
	public void setNormal_idx(int normal_idx) {
		this.normal_idx = normal_idx;
	}
	public String getNormal_name() {
		return normal_name;
	}
	public void setNormal_name(String normal_name) {
		this.normal_name = normal_name;
	}
	public String getNormal_email() {
		return normal_email;
	}
	public void setNormal_email(String normal_email) {
		this.normal_email = normal_email;
	}
	public String getNormal_phoneNum() {
		return normal_phoneNum;
	}
	public void setNormal_phoneNum(String normal_phoneNum) {
		this.normal_phoneNum = normal_phoneNum;
	}
	public String getNormal_gender() {
		return normal_gender;
	}
	public void setNormal_gender(String normal_gender) {
		this.normal_gender = normal_gender;
	}
	public String getNormal_addrs() {
		return normal_addrs;
	}
	public void setNormal_addrs(String normal_addrs) {
		this.normal_addrs = normal_addrs;
	}
	public String getIsDeleted() {
		return isDeleted;
	}
	public void setIsDeleted(String isDeleted) {
		this.isDeleted = isDeleted;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	public Date getNormal_birth() {
		return normal_birth;
	}
	public void setNormal_birth(Date normal_birth) {
		this.normal_birth = normal_birth;
	}
	
	
}
