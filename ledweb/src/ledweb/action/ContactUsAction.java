package ledweb.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;

import ledweb.ModelSessionFactory;
import ledweb.model.ContactUs;
import ledweb.model.ProductSpec;
import ledweb.model.ProductType;
import ledweb.model.mapper.ICategoryOperation;
import ledweb.model.mapper.IContactUsOperation;
import ledweb.model.mapper.IProductOperation;
import ledweb.model.mapper.ISpecOperation;
import ledweb.model.mapper.ITypeOperation;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

public class ContactUsAction  extends ActionSupport {
	
	private static Logger logger = Logger.getLogger(ContactUsAction.class);
	private ContactUs contactUs;
	private String isSubmit;
	private String display;
	
	
	public String getDisplay() {
		return display;
	}
	public void setDisplay(String display) {
		this.display = display;
	}
	public ContactUs getContactUs() {
		return contactUs;
	}
	public void setContactUs(ContactUs contactUs) {
		this.contactUs = contactUs;
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
			this.contactUs=co.selectContactUs();
			
			logger.warn("Get contactUs versionID: " + this.contactUs.getVersionID());
			logger.warn("Get contactUs article: " + this.contactUs.getArticle());
			
			System.out.println("Get contactUs versionID: " + this.contactUs.getVersionID());
			System.out.println("Get contactUs article: " + this.contactUs.getArticle());

		} catch (Exception e) {
			logger.error(e.getMessage());
		} finally {
			session.close();

		}

	}
	@Override
	public String execute() {

//		if (this.display.trim().equals("1")) {
//			this.showContactUsContent();
//		}
//		if ("submit".equals(this.getIsSubmit())) {
////			logger.warn("product title: " + this.productName);
////			if (this.productID == null || "".equals(this.productID.trim())) {
////				this.productID = UUID.randomUUID().toString();
////			}
////			this.newProduct(this.productID);
//		}
////		this.init();
		this.showContactUsContent();
		return SUCCESS;
		
	}

	private void init() {
		SqlSession session = ModelSessionFactory.getSession().openSession();
		try {
//			ISpecOperation iso = session.getMapper(ISpecOperation.class);
//			this.setAllSpecs(iso.selectAllSpec());
//			ITypeOperation ito = session.getMapper(ITypeOperation.class);
//			this.setAllTypes(ito.selectAllTypes());
//			ICategoryOperation ico = session
//					.getMapper(ICategoryOperation.class);
//			this.setAllCategories(ico.selectAllCategories());
		} catch (Exception e) {
			logger.error("Add product init: " + e.getMessage());
		} finally {
			session.close();
		}
	}
}
