package ledweb.action;

import java.util.List;

import ledweb.ModelSessionFactory;
import ledweb.Util;
import ledweb.model.AboutUs;
import ledweb.model.Category;
import ledweb.model.mapper.IAboutUsOperation;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

public class AboutUsAction extends ActionSupport {
	
	private static Logger logger = Logger.getLogger(ContactUsAction.class);
	private AboutUs aboutUs;
	private String article;
	private String isSubmit;
	private List<Category> allCategories;
	private String module = "about us";
	
	public String getModule() {
		return module;
	}
	public void setModule(String module) {
		this.module = module;
	}
	public List<Category> getAllCategories() {
		return allCategories;
	}
	public void setAllCategories(List<Category> allCategories) {
		this.allCategories = allCategories;
	}
	
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
		SqlSession session = null;
		try {
			session = ModelSessionFactory.getSession().openSession();
			IAboutUsOperation co = session.getMapper(IAboutUsOperation.class);
			this.setAboutUs(co.selectAboutUs());
			logger.warn("Get aboutUs versionID: " + aboutUs.getVersionID());
			logger.warn("Get aboutUs article: " + aboutUs.getArticle());
		} catch (Exception e) {
			logger.error(e.getMessage());
		} finally {
			if (session!=null)
			{
				session.close();
			}
		}

	}
	private void updateAboutUsInfo(){
		
		SqlSession session = null;
		try {
			session = ModelSessionFactory.getSession().openSession();
			IAboutUsOperation ao = session.getMapper(IAboutUsOperation.class);
			AboutUs aon = new AboutUs();
			aon.setArticle(this.article);
			ao.updateAboutUs(aon);
			session.commit();	
		} catch (Exception e) {
			logger.error(e.getMessage());
		} finally {
			if (session !=null)
			{
				session.close();
			}
		}
	}
	
	@Override
	public String execute() {
		this.allCategories = Util.getAllCategories();
		 if ("submit".equals(this.getIsSubmit())) {
			 this.updateAboutUsInfo();
		 }
		 this.showAboutUsContent();
		return SUCCESS;
		
	}
	

}
