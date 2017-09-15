package org.p2p.utlis;



import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Calendar;
import java.util.Properties;

/**   
* @Title: EmailUtils.java 
* @Package com.qf.utils 
* @author Xing Sir   
* @date 2017年7月28日 下午5:23:39 
* @version V1.0   
* @Description: 实现邮件发送
*/
public class EmailUtils {

	private static String fromEmail="FaTiaoZhangTP@163.com";//发件邮箱
	private static String sqm="fatiao123";//授权码
	private static String host="smtp.163.com";//服务器地址
	
	/**
	 * 参数说明：
	 * 1、接收人的邮箱
	 * 2、接收人姓名
	 * 3、激活码
	 * @throws MessagingException 
	 * @throws UnsupportedEncodingException 
	 * @throws UnknownHostException */
	public static void sendEmail(String toEmail,String title,String content)  {
		Properties properties=new Properties();
		properties.setProperty("mail.transport.protocol", "smtp");//设置邮箱协议
		properties.setProperty("mail.smtp.host", host);//设置邮箱的服务器地址
		properties.setProperty("mail.smtp.auth", "true");//设置是否请求认证
		//获取会话对象---连接邮箱服务器
		Session session=Session.getInstance(properties);
		session.setDebug(true);//开启调试信息
		//创建消息对象
		
		try {
			MimeMessage message=new MimeMessage(session);
			//设置消息信息
			message.setFrom(new InternetAddress(fromEmail, "","UTF-8"));//设置发件人信息
			message.setRecipient(MimeMessage.RecipientType.TO, 
					new InternetAddress(toEmail, "utf-8"));
			message.setSubject(title);
			String ip=InetAddress.getLocalHost().getHostAddress();
		//	String url="http://"+ip+":8080/SSH_BookStore/user.op?type=active&code="+code+"&email="+toEmail;
			message.setContent(content,"text/html;charset=utf-8");
			message.setSentDate(Calendar.getInstance().getTime());//设置发送时间
			//获取传输对象
			Transport transport=session.getTransport();
			//登录
			transport.connect(fromEmail, sqm);
			//发送邮件
			transport.sendMessage(message,message.getAllRecipients());
			//关闭
			transport.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
}
