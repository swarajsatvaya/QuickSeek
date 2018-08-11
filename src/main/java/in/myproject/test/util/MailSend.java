/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.util;

import java.io.UnsupportedEncodingException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import org.springframework.scheduling.annotation.Async;

/**
 *
 * @author PC6
 */
public class MailSend {

    private static final String username = "saya.or.saha@gmail.com";
    private static final String password = "7059822989";

    @Async
    public static String sendEmail(String destinationAddress, String subject, String msg) /*throws Exception*/ {
        String status = "success";
        Properties props = new Properties();
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.user", username);
        props.put("mail.smtp.password", password);

        Session session = Session.getDefaultInstance(props,
                new javax.mail.Authenticator() {
//                    @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });
        try {
            // Make a new message
            MimeMessage message = new MimeMessage(session);

            // Who is this message from
            message.setFrom(new InternetAddress(username, "QckSeek Admin"));

            // Who is this message to (we could do fancier things like make a list or add CC's)
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(destinationAddress));
//            message.setRecipients(Message.RecipientType.BCC, InternetAddress.parse(bccAddress));

            // Subject and body
            message.setSubject(subject);
            // message.setText(msg);
            message.setContent(msg, "text/html; charset=ISO-8859-1");

            // We can do more here, set the date, the headers, etc.
            Transport.send(message);
            System.out.println("Mail sent!");
        } catch (UnsupportedEncodingException | MessagingException e) {
            status = "faild";
            System.out.println("MAIL SEND API 587");
            e.printStackTrace();
            Logger.getLogger(MailSend.class.getName()).log(Level.SEVERE, "MAIL SEND API 587", e);
//            throw new UtilityError("unable to send email");

        }
        return status;
    }

    public static void main(String[] args) {
        sendEmail("rohanbs8@gmail.com", "test", "Testing purpose");
    }

}
