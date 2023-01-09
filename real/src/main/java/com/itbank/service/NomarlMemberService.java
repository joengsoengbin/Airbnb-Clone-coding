package com.itbank.service;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Properties;
import java.util.Scanner;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;

import com.itbank.member.NormalMemberDAO;
import com.itbank.member.NormalMemberDTO;

@Service
public class NomarlMemberService {
	
	// servletContext().getRealPath("경로") 형식을 대신하여 파일 자원을 불러올 수 있다
	@Value("classpath:account.txt")
	private Resource account;
			

	@Autowired private NormalMemberDAO nmDAO;

	public NormalMemberDTO login(NormalMemberDTO dto) {
		NormalMemberDTO login = nmDAO.login(dto);
		return login;
	}

	 public int telCheck(String param) {
	      return nmDAO.selectnormal_phomenum(param);
	   }
	
	
	public int insert(NormalMemberDTO dto) {
		return nmDAO.insert(dto);
	}

	public int dupCheck(HashMap<String, String> param) {
		String normal_email = param.get("normal_email");
		return nmDAO.selectnormal_email(normal_email);
	}

	public int sendMail2(HashMap<String, String> param2, HttpSession session) throws IOException, MessagingException  
	
	
	{
		
		File f = account.getFile();
		Scanner sc = new Scanner(f);
		String data = null;
		while(sc.hasNextLine()) {
			data = sc.nextLine();
		}
		sc.close();
		
		String host = "smtp.naver.com";
		int port = 465;
		final String username = data.split("/")[0];
		final String password = data.split("/")[1];
		
		Properties props = System.getProperties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.ssl.trust", host);
		
		Session mailSession = Session.getDefaultInstance(props, new Authenticator() {
			String un = username;
			String pw = password;
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(un, pw);
			}
		});
		mailSession.setDebug(true);
		
		InternetAddress from = new InternetAddress("nackgee01@naver.com");
		InternetAddress to = new InternetAddress(param2.get("normal_email"));
		
		
		double r1 = Math.round(Math.random() * 9);
		double r2 = Math.round(Math.random() * 9);
		double r3 = Math.round(Math.random() * 9);
		double r4 = Math.round(Math.random() * 9);
		double r5 = Math.round(Math.random() * 9);
		double r6 = Math.round(Math.random() * 9);
		
		int R1 = (int) r1;
		int R2 = (int) r2;
		int R3 = (int) r3;
		int R4 = (int) r4;
		int R5 = (int) r5;
		int R6 = (int) r6;
		
		
		String Ran1 =Integer.toString(R1);
		String Ran2 =Integer.toString(R2);
		String Ran3 =Integer.toString(R3);
		String Ran4 =Integer.toString(R4);
		String Ran5 =Integer.toString(R5);
		String Ran6 =Integer.toString(R6);
		
		
		String Rn = Ran1 + Ran2 + Ran3 + Ran4 + Ran5 + Ran6;
		
		session.setAttribute("Rn", Rn);
		
		
		
		Message mimeMessage = new MimeMessage(mailSession);
		mimeMessage.setFrom(from);
		mimeMessage.setRecipient(Message.RecipientType.TO, to);
		mimeMessage.setSubject("인증번호 입니다");
		mimeMessage.setText(Rn);
//		mimeMessage.setContent(param2.get("Rn"), "text/html;charset=utf-8");
		// 내용에 랜덤한 인증코드 6자리 혹은 8자리를 만들어서 전달 가능
		Transport.send(mimeMessage);
		
		
		return 1;
	}

	public int inzung(HashMap<String, String> param2, HttpSession session) {
		int row = 0;
		if(param2.get("authNumber").equals(session.getAttribute("Rn"))) {
			row = 1;
		}
		
		return row;
	}

	public int modify_normal(NormalMemberDTO dto) {
		System.out.println(dto.getNormal_name());
		System.out.println(dto.getNormal_phoneNum());
		return nmDAO.modify_normal(dto);
	}

	public NormalMemberDTO modilogin(NormalMemberDTO dto) {
		return nmDAO.modilogin(dto);
	}

	public NormalMemberDTO find(NormalMemberDTO dto) {
		return nmDAO.find(dto);
	}

	public int selectEmail(NormalMemberDTO dto) {
		return nmDAO.selectnormal_email(dto.getNormal_email());
	}

}



























