package cn.ch.util;

import java.security.GeneralSecurityException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.sun.mail.util.MailSSLSocketFactory;

public class MailUtil {
	public static void sendMessage(String title, String toMail, String message) {
		 Properties props = new Properties();
   	 
       // 开启debug调试
       props.setProperty("mail.debug", "true");
       // 发送服务器需要身份验证
       props.setProperty("mail.smtp.auth", "true");
       // 设置邮件服务器主机名
       props.setProperty("mail.host", "smtp.qq.com");
       // 发送邮件协议名称
       props.setProperty("mail.transport.protocol", "smtp");

       MailSSLSocketFactory sf;
		try {
			sf = new MailSSLSocketFactory();
			sf.setTrustAllHosts(true);
			props.put("mail.smtp.ssl.enable", "true");
	        props.put("mail.smtp.ssl.socketFactory", sf);
		} catch (GeneralSecurityException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
      
       
       Date date = new Date();
       SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd hh:mm:ss");
       Session session = Session.getInstance(props);

       Message msg = new MimeMessage(session);
       try {
			msg.setSubject(title);
			
			StringBuilder builder = new StringBuilder();
	        builder.append(message);
	        //builder.append("\nHelloWorld");
	        builder.append("\n当前时间 " + ft.format(date));
	        msg.setText(builder.toString());
	        msg.setContent(builder.toString(), "text/html;charset=gb2312");
	        msg.setFrom(new InternetAddress("991136904@qq.com"));
	 
	        Transport transport = session.getTransport();
	        transport.connect("smtp.qq.com", "991136904@qq.com", "jmjqrgnewiwlbbda");//POP3
	 
	        transport.sendMessage(msg, new Address[] { new InternetAddress(toMail) });
	        transport.close();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       
	}
}
