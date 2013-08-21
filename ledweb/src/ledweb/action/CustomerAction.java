package ledweb.action;


import ledweb.Email;
import ledweb.ModelSessionFactory;
import ledweb.model.ContactUs;
import ledweb.model.Customer;
import ledweb.model.mapper.IContactUsOperation;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

public class CustomerAction extends ActionSupport{

	private static Logger logger = Logger.getLogger(CustomerAction.class);
	private ContactUs contactUs;
	private String article;
	private String isSubmit;
	
	private String name;
	private String phone;
	private String email;
	private String enquiry;
	

	public ContactUs getContactUs() {
		return contactUs;
	}
	public void setContactUs(ContactUs contactUs) {
		this.contactUs = contactUs;
	}
	public String getArticle() {
		return article;
	}
	public void setArticle(String article) {
		this.article = article;
	}
	
	public String getIsSubmit() {
		return isSubmit;
	}
	public void setIsSubmit(String isSubmit) {
		this.isSubmit = isSubmit;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEnquiry() {
		return enquiry;
	}
	public void setEnquiry(String enquiry) {
		this.enquiry = enquiry;
	}
	
	public String toString(){
		return ("\n Customer name="+this.name+", \n phone="+this.phone+", \n email="+this.email+
				", \n enquiry="+this.enquiry);
	}

	private void showContactUsContent() {
		SqlSession session = ModelSessionFactory.getSession().openSession();
		try {
			IContactUsOperation co = session.getMapper(IContactUsOperation.class);
			this.setContactUs(co.selectContactUs());
			logger.warn("Get contactUs versionID: " + contactUs.getVersionID());
			logger.warn("Get contactUs article: " + contactUs.getArticle());
		} catch (Exception e) {
			logger.error(e.getMessage());
		} finally {
			session.close();
		}

	}
	
	private void getUserInfo(){
		System.out.println("GET USER INFO----");
		System.out.println("	USER NAME----"+this.name);
		System.out.println("    USER NUMB----"+this.phone);
		System.out.println("    USER MAIL----"+this.email);
		System.out.println("    USER QUES----"+this.enquiry);
		
	}
	private void sendMessage(){
		Email mail = new Email(this.name, this.phone, this.email);
		mail.SendMail(this.enquiry);
	}
	

	
	@Override
	public String execute() {

		 if ("submit".equals(this.getIsSubmit())) {
			 this.getUserInfo();
			 this.sendMessage();
//			 this.showContactUsContent();
			 return INPUT;
		 }
		 this.showContactUsContent();
		return SUCCESS;
		
	}
	
}
