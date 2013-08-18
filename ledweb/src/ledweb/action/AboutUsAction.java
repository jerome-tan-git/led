package ledweb.action;

import ledweb.ModelSessionFactory;
import ledweb.model.AboutUs;
import ledweb.model.mapper.IAboutUsOperation;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

public class AboutUsAction extends ActionSupport {
	
	private static Logger logger = Logger.getLogger(ContactUsAction.class);
	private AboutUs aboutUs;
	private String article;
	private String isSubmit;
	
	
	public AboutUs getAboutUs() {
		return aboutUs;
	}
	public void setAboutUs(AboutUs aboutUs) {
		this.aboutUs = aboutUs;
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

	private void showAboutUsContent() {
		SqlSession session = ModelSessionFactory.getSession().openSession();
		try {
			IAboutUsOperation co = session.getMapper(IAboutUsOperation.class);
			this.setAboutUs(co.selectAboutUs());
			logger.warn("Get aboutUs versionID: " + aboutUs.getVersionID());
			logger.warn("Get aboutUs article: " + aboutUs.getArticle());
		} catch (Exception e) {
			logger.error(e.getMessage());
		} finally {
			session.close();
		}

	}
	private void updateAboutUsInfo(){
		
		SqlSession session = ModelSessionFactory.getSession().openSession();
		try {
			IAboutUsOperation ao = session.getMapper(IAboutUsOperation.class);
			AboutUs aon = new AboutUs();
			aon.setArticle(this.article);
			ao.updateAboutUs(aon);
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
			 this.updateAboutUsInfo();
		 }
		 this.showAboutUsContent();
		return SUCCESS;
		
	}
	

}
