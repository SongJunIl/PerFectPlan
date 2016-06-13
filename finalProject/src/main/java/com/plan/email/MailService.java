package com.plan.email;

import java.io.Serializable;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Service;


@Service
public class MailService {
	   public void sendMail(String getId, String getPw,String userEmail){
	      
	      Properties p = new Properties();
	      p.put("mail.smtp.user", "rtqw123@naver.com");
	      p.put("mail.smtp.host", "dsmtp.naver.com");  //네이버용 호스트
	      //p.put("mail.smtp.host", "ASPMX.L.GOOGLE.COM");   //구글용 호스트(확실하지않음)
	      p.put("mail.smtp.port", "465");
	      p.put("mail.smtp.starttls.enable", "true");
	      p.put("mail.smtp.auth", "true");

	      p.put("mail.smtp.debug", "true");
	      p.put("mail.smtp.socketFactory.port", "465");
	      p.put("mail.smtp.socketFactory.fallback", "false");

	      try {
	         Authenticator auth = new SMTPAuthenticator();
	         Session session = Session.getInstance(p, auth);
	         session.setDebug(true);
	         MimeMessage msg = new MimeMessage(session);
	         String message="";
	         String message1="";
	          message = " 귀하의 아이디는 [ "+getId+" ] 입니다.";
	          msg.setSubject("[발송용/회신x]'축제놀이터' ID/비밀번호 찾기 메일입니다. ");
	          message1 = " 귀하의 비밀번호는 [ "+getPw+" ] 입니다.";
	          msg.setSubject("[발송용/회신x]'축제놀이터' ID/비밀번호 찾기 메일입니다. ");
	         
	         // 보내는 사람의 메일주소
	         Address fromAddr = new InternetAddress("rtqw123@naver.com");
	         msg.setFrom(fromAddr);
	         // 받는 사람의 메일주소
	         Address toAddr = new InternetAddress(userEmail);
	         msg.addRecipient(Message.RecipientType.TO, toAddr);
	         msg.setContent(message, "text/plain;charset=UTF-8");
	         msg.setContent(message1, "text/plain;charset=UTF-8");

	         // 메세지 전송
	         Transport.send(msg);
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	   }
	   
	   private class SMTPAuthenticator extends javax.mail.Authenticator {

	      public PasswordAuthentication getPasswordAuthentication() {
	         return new PasswordAuthentication("개발자이메일주소(네이버)", "개발자비밀번호"); 
	      }
	   }
	}
