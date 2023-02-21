package Mail;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Sendmail{
   static String success="";
    public static String sendMail(String to,String subject,String content)
    {

               final String username = "ivsorgg@gmail.com";
		final String password = "ivskochi";
                //String sub=subject;
                //String cont=content;
		Properties props = new Properties();

		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
                System.out.println(props.getProperty("mail.smtp.host"));
		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("ivsorgg@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
			InternetAddress.parse(to));
			message.setSubject(subject);
			message.setText(content);

			Transport.send(message);
                       success="Details Send Successfully";

		} catch (Exception e) {
			throw new RuntimeException(e);
		}

    return success;
    }

	public static void main(String[] args) {
            Sendmail send=new Sendmail();
           // System.out.println(send.sendMail("prasanthprasad@visiontux.net","hdfh","CHecking MAiling System"));

		
}}
