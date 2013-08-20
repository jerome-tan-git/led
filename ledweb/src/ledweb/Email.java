package ledweb;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class Email {
	
	String host = "smtp.163.com";
	
	String to = "674604820@qq.com";
	String customerName;
	String customerPhone;
	String customerMail;
	
	String from = "13918120617@163.com";
	String username = "13918120617"; 
	String password = "066088"; 
	Properties props = null;

	public Email(String _cName, String _cPhone, String _cEmail){
    	
		props = System.getProperties();

		props.put("mail.smtp.host", host);
		props.put("mail.smtp.user", username);
		props.put("mail.smtp.password", password);
		props.put("mail.smtp.port", "25");
		props.put("mail.smtp.auth", "true");
		props.put("mail.Transport.protocol", "smtp");
		props.setProperty("mail.pop3.disabletop", "true");
	
		this.customerName = _cName;
		this.customerPhone = _cPhone;
		this.customerMail = _cEmail;
				
		
	}
		
    public void SendMail(String _content) {    			
		
		// For the test
		PasswordAuthentication pa = new PasswordAuthentication(username, password);
		System.out.println("PasswordAuthentication===>" + pa.getUserName()
		      +"|"+pa.getPassword()+"|"+pa.toString()+ "...");

        
		Session sendMailSession = Session.getInstance(props,new Authenticator() {
			@Override
			public PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
            }
        });
		
        try {
            MimeMessage message = new MimeMessage(sendMailSession);
            message.setFrom(new InternetAddress(from));
            message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(to));
            
            sendMailSession.setDebug(true);

            System.out.println("!Writing the mail content...");            
                               

            if(_content.equals(""))
            	_content = "Ops, xiaoPei, empty email content!";
            message.setText(_content+"\n NOTE: this mail is from customer: "+this.customerName+", Phone: "
            		+this.customerPhone+", Email: "+this.customerMail+"\n");
            message.setSubject("Customer Email");
            message.saveChanges();
              
            
            System.out.println("!Begin to send the message...");                                     
            Transport transport = null;
            try {
            	transport = sendMailSession.getTransport("smtp");
            	transport.connect(username, password);
            	transport.sendMessage(message, message.getAllRecipients());
            } finally {
            	transport.close();
            }System.out.println("SendMail Process Over!");

		}catch(MessagingException e){
		      e.printStackTrace();
		}
	}
    

    
    public static void main(String[] args){
    	Email mm = new Email("Julia","667788","abc@ert.com");
    	mm.SendMail("hey, are you ok? hjflhudiahubkvhblqebj");
    }

}
