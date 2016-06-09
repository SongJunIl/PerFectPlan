package com.plan.email;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class EmailSender {
	
	public void send() throws Exception{
		String host = "smtp.gmail.com";
        String username = "apptor0728@gmail.com"; //지메일 인증
        String password = "final123"; //
        
        // 메일 내용
        String recipient = "받는사람이메일";
        String subject = "지메일을 사용한 발송 테스트입니다.";
        String body = "내용 무";
        
        //properties 설정
        Properties props = new Properties();
        props.put("mail.smtps.auth", "true");
        // 메일 세션
        Session session = Session.getDefaultInstance(props);
        MimeMessage msg = new MimeMessage(session);

        // 메일 관련
        msg.setSubject(subject);
        msg.setText(body);
        msg.setFrom(new InternetAddress(username));
        msg.addRecipient(Message.RecipientType.TO,
       new InternetAddress(recipient));

        // 발송 처리
        Transport transport = session.getTransport("smtps");
        transport.connect(host, username, password);
        transport.sendMessage( msg, msg.getAllRecipients());
        transport.close();

		
		
	}

	
	
	
	
	
	
	
	
	
}

