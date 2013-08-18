package ledweb.action;


import ledweb.ModelSessionFactory;
import ledweb.model.ContactUs;
import ledweb.model.mapper.IContactUsOperation;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

public class ContactUsAction  extends ActionSupport {

	private static Logger logger = Logger.getLogger(ContactUsAction.class);
	private ContactUs contactUs;
	private String article;
	private String isSubmit;
	
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
	private void updateContactUsInfo(){
		
		SqlSession session = ModelSessionFactory.getSession().openSession();
		try {
			IContactUsOperation co = session.getMapper(IContactUsOperation.class);
			ContactUs con = new ContactUs();
			con.setArticle(this.article);
			co.updateContactUs(con);
			session.commit();	
		} catch (Exception e) {
			logger.error(e.getMessage());
		} finally {
			session.close();
		}
	}
	
	@Override
	public String execute() {

		 if ("submit".equals(this.getIsSubmit())) {
			 this.updateContactUsInfo();
		 }
		 this.showContactUsContent();
		return SUCCESS;
		
	}
	
}