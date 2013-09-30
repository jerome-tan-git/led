package ledweb.action;

import java.util.List;

import ledweb.ModelSessionFactory;
import ledweb.Util;
import ledweb.model.Category;
import ledweb.model.ContactUs;
import ledweb.model.LEDbenefits;
import ledweb.model.mapper.IContactUsOperation;
import ledweb.model.mapper.ILedBenefitsOperation;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

public class LEDbenefitsAction extends ActionSupport{

	private static Logger logger = Logger.getLogger(ContactUsAction.class);
	private LEDbenefits benefits;
	private String article;
	private String isSubmit;
	private List<Category> allCategories;
	private String module = "benifits";
	
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
	public LEDbenefits getBenefits() {
		return benefits;
	}
	public void setBenefits(LEDbenefits benefits) {
		this.benefits = benefits;
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
	
	private void showLEDbenefitsContent() {
		SqlSession session = null;
		try {
			session = ModelSessionFactory.getSession().openSession();
			ILedBenefitsOperation bo = session.getMapper(ILedBenefitsOperation.class);
			this.setBenefits(bo.selectLEDbenefitsByID());
			logger.warn("Get versionID: " + this.benefits.getVersionID());
			logger.warn("Get article: " + this.benefits.getArticle());
		} catch (Exception e) {
			logger.error(e.getMessage());
		} finally {
			if (session !=null)
			session.close();
		}

	}
	private void updateLEDbenefitsInfo(){
		
		SqlSession session = null;
		try {
			session = ModelSessionFactory.getSession().openSession();
			ILedBenefitsOperation bo = session.getMapper(ILedBenefitsOperation.class);
			LEDbenefits ben = new LEDbenefits();
			ben.setArticle(this.article);
			bo.updateLEDbenefits(ben);
			session.commit();	
		} catch (Exception e) {
			logger.error(e.getMessage());
		} finally {
			if (session !=null)
			session.close();
		}
	}
	
	@Override
	public String execute() {
		this.allCategories = Util.getAllCategories();
		 if ("submit".equals(this.getIsSubmit())) {
			 this.updateLEDbenefitsInfo();
		 }
		 this.showLEDbenefitsContent();
		return SUCCESS;
		
	}
	
}
