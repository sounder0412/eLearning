package P;

import DTO.Faculty_Registration_DTO;
import DTO.Student_Registration_DTO;
import java.util.List;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import org.hibernate.Query;
import org.hibernate.Session;

public class Email_DTO_DAO 
{
    public static boolean searchEmail(String uname, String email)
    {
        Session s = ConnectionDB.getSession();
        Query q = s.createQuery("from Student_Registration_DTO as s where s.username=? and s.email=?");
        q.setString(0, uname);
        q.setString(1, email);
        List<Student_Registration_DTO> al = q.list();
        s.close();
        if(al.isEmpty())
            return false;
        return true;
    }
    public static void sendEmail(String username, String email, String msg)
    {
        final String uname = "soundarrajan04121995@gmail.com";
        final String pwd = "4127231995";
        
        Properties p = new Properties();
        p.put("mail.smtp.host", "smtp.gmail.com");
        p.put("mail.smtp.port", "465");
        p.put("mail.smtp.socketFactory.port", "465");
        p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        p.put("mail.smtp.auth", "true");
        p.put("mail.smtp.startssl.enable", "true");
        
        javax.mail.Session sess = javax.mail.Session.getInstance(p, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(uname, pwd);
            }
        });
        
        try
        {
            Message m = new MimeMessage(sess);
            m.setFrom(new InternetAddress(uname));
            m.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            m.setSubject("OTP");
            m.setText("Hello "+username+" !! Your OTP to reset password is : "+msg);
            Transport.send(m);
            System.out.println("Mail Sent");
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
}