package com.itbank.member;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

//create table hostMember(     -- 호스트 회원 테이블
//	    host_idx             number            default hMember_seq.nextval primary key,            -- 호스트 회원 번호
//
//	    host_name            varchar2(20)        not null,                                  	   -- 전체 회원 이름
//	    host_email           varchar2(50)        unique not null,                                  -- 전체 회원 이메일
//	    host_phoneNum        varchar2(25)        unique not null,                                  -- 전체 회원 전화번호
//	    host_gender          varchar2(10)        check(host_gender in('남', '여')) not null,        -- 전체 회원 성별
//	    host_birth           date                not null,                                         -- 전체 회원 생일
//	    host_addrs           varchar2(150),                                                        -- 전체 회원 주소
//	    host_intro           varchar2(1000)      default '',                                       -- 호스트 회원 자기소개
//	    host_img             varchar2(255)       default 'profil',                                 -- 호스트 회원 이미지
//	    
//	    authority              char(1)             default 'h'                                     -- 호스트 회원 권한 상태  
//	);

public class HostMemberDTO {
	private int host_idx;
	private String host_name, host_email, host_phoneNum, host_gender, 
	host_addrs, host_intro, host_img, authority;
	private Date host_birth;
	private MultipartFile host_upload;
	
	public int getHost_idx() {
		return host_idx;
	}
	public void setHost_idx(int host_idx) {
		this.host_idx = host_idx;
	}
	public String getHost_name() {
		return host_name;
	}
	public void setHost_name(String host_name) {
		this.host_name = host_name;
	}
	public String getHost_email() {
		return host_email;
	}
	public void setHost_email(String host_email) {
		this.host_email = host_email;
	}
	public String getHost_phoneNum() {
		return host_phoneNum;
	}
	public void setHost_phoneNum(String host_phoneNum) {
		this.host_phoneNum = host_phoneNum;
	}
	public String getHost_gender() {
		return host_gender;
	}
	public void setHost_gender(String host_gender) {
		this.host_gender = host_gender;
	}
	public String getHost_addrs() {
		return host_addrs;
	}
	public void setHost_addrs(String host_addrs) {
		this.host_addrs = host_addrs;
	}
	public String getHost_intro() {
		return host_intro;
	}
	public void setHost_intro(String host_intro) {
		this.host_intro = host_intro;
	}
	public String getHost_img() {
		return host_img;
	}
	public void setHost_img(String host_img) {
		this.host_img = host_img;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	public Date getHost_birth() {
		return host_birth;
	}
	public void setHost_birth(Date host_birth) {
		this.host_birth = host_birth;
	}
	public MultipartFile getHost_upload() {
		return host_upload;
	}
	public void setHost_upload(MultipartFile host_upload) {
		this.host_upload = host_upload;
	}
}
