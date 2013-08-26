package ledweb.action;

import ledweb.ModelSessionFactory;
import ledweb.model.ContactUs;
import ledweb.model.mapper.IContactUsOperation;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

public class EmailSentAction  extends ActionSupport{
	
	private static Logger logger = Logger.getLogger(CustomerAction.class);
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
	
	@Override
	public String execute() {
		this.showContactUsContent();
		return SUCCESS;
	}
	
	
	
}