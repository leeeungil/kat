package com.kat.mail;

import java.text.SimpleDateFormat;

import javax.mail.Message.RecipientType;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;

import com.kat.seat.model.UserReInfo;

public class ReservationMail {

	@Autowired
	private JavaMailSender mailSender;

	public void sendMail(UserReInfo userReInfo , String user_email) {
		
		MimeMessage message = mailSender.createMimeMessage();
		
		SimpleDateFormat re_time = new SimpleDateFormat("yyyy년 MM월 dd일 hh시 mm분");
		
		try {
			message.setSubject("[kat] 예약 내역 안내", "utf-8");
			String htmlContent = "<h1>안녕하세요. [ <span style='color:#16bab4;'>{user_id}</span> ]님</h1>"
					+ "<h1> [ <span style='color: #16bab4;'> {shop_name} </span> ] 매장에 예약하셨습니다.</h1>"
					+ "<h1> [ <span style='color: #16bab4;'> {seat_num} </span> ] 명 좌석에 </h1>"
					+ "<h1> [ <span style='color: #16bab4;'> {shop_re_time} </span> ] 에 예약하셨습니다. 매장 전화번호는 [ <span style='color:#16bab4;'> {shop_phone} </span> ] 입니다. </h1>"
					+ "<h3> 감사합니다.<h3>"
					+ "<a href='http://kat.net'>사이트 방문하기</a>";
			
			htmlContent = htmlContent.replace("{user_id}", userReInfo.getUser_id());
			htmlContent = htmlContent.replace("{shop_name}", userReInfo.getShop_name());
			htmlContent = htmlContent.replace("{seat_num}", userReInfo.getFile_seat()+"");
			htmlContent = htmlContent.replace("{shop_re_time}", re_time.format(userReInfo.getShop_re_time())+"");
			htmlContent = htmlContent.replace("{shop_phone}", userReInfo.getShop_phone());
			
			message.setText(htmlContent, "utf-8", "html");
			message.setFrom(new InternetAddress("a0322166@gmail.com"));
			message.addRecipient(RecipientType.TO, new InternetAddress(user_email));
			mailSender.send(message);
			
		} catch (Exception e) {
			// 실제로 익셉션 발생 내지 로그 남김
			e.printStackTrace();
		}
	}

}
