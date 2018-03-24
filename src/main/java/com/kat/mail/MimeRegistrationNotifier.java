package com.kat.mail;

import javax.mail.Message.RecipientType;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;

public class MimeRegistrationNotifier {

	@Autowired
	private JavaMailSender mailSender;

	public void sendConfirmMail(String sendCode, String email) {
		MimeMessage message = mailSender.createMimeMessage();
		try {
			message.setSubject("온테이블 회원 가입 안내", "utf-8");

			/*
			 * String sendUrl = "http://localhost:8080/mynolgo" + "/member/"+
			 * aes256Util.decrypt(member.getUserid()) +
			 * "/confirm_verification/"+member.getSendcode();
			 */

			String htmlContent = "<strong>안녕하세요</strong>, 반갑습니다." + "<br>" + "인증을 위해 아래 인증번호를 확인하세요.<br>" + "인증번호 :"
					+ sendCode;

			message.setText(htmlContent, "utf-8", "html");
			message.setFrom(new InternetAddress("a0322166@gmail.com"));
			message.addRecipient(RecipientType.TO, new InternetAddress(email));
			mailSender.send(message);
		} catch (Exception e) {
			// 실제로 익셉션 발생 내지 로그 남김
			e.printStackTrace();
		}
	}
	
	public void sendFindMail(String sendCode,String email) {

		  MimeMessage message = mailSender.createMimeMessage();

		  try {

		   message.setSubject("온테이블 아이디 찾기 안내", "utf-8");



		   String htmlContent = "<strong>안녕하세요</strong>. 반갑습니다.<br> 온테이블 아이디찾기 안내입니다."

		     + "<br>"

		     + "아래 아이디를 확인해주세요.<br>"

		     + "아이디 :"+sendCode;

		     

		     

		   message.setText(htmlContent, "utf-8", "html");

		   message.setFrom(new InternetAddress("a0322166@gmail.com"));

		   message.addRecipient(

		     RecipientType.TO,

		     new InternetAddress(email));

		   mailSender.send(message);

		  } catch (Exception e) {

		   // 실제로 익셉션 발생 내지 로그 남김

		   e.printStackTrace();

		  }

		 }
	
	public void sendpwFindMail(String sendCode,String email) {

		  MimeMessage message = mailSender.createMimeMessage();

		  try {

		   message.setSubject("온테이블 비밀번호 찾기 안내", "utf-8");



		   String htmlContent = "<strong>안녕하세요</strong>. 반갑습니다.<br> 온테이블 비밀번호 찾기 안내입니다."

		     + "<br>"

		     + "아래 비밀번호를 확인해주세요.<br>"

		     + "비밀번호 :"+sendCode;

		     

		     

		   message.setText(htmlContent, "utf-8", "html");

		   message.setFrom(new InternetAddress("a0322166@gmail.com"));

		   message.addRecipient(

		     RecipientType.TO,

		     new InternetAddress(email));

		   mailSender.send(message);

		  } catch (Exception e) {

		   // 실제로 익셉션 발생 내지 로그 남김

		   e.printStackTrace();

		  }

		 }

	
}
