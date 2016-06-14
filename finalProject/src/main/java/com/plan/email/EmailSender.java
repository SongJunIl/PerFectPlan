package com.plan.email;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.plan.member.MemberDTO;

@Component
public class EmailSender {
	
	public void send(MemberDTO mdto) throws Exception{
		String host = "smtp.gmail.com";
        String username = "apptor0728@gmail.com"; //지메일 인증
        String password = "final123"; //
        
        // 메일 내용
        String recipient = mdto.getEmail();
        String subject = "perfect plan 에 가입된 귀하의 정보입니다.";
        String body = "아이디는 :"+mdto.getId()+" 패스워드는 :"+ mdto.getPw()+"입니다.";
        
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

