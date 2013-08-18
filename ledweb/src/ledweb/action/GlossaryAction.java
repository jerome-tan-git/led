package ledweb.action;

import ledweb.ModelSessionFactory;
import ledweb.model.Glossary;
import ledweb.model.mapper.IGlossaryOperation;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

public class GlossaryAction extends ActionSupport{
	
	private static Logger logger = Logger.getLogger(ContactUsAction.class);
	private Glossary glossary;
	private String article;
	private String isSubmit;
	
	public Glossary getGlossary() {
		return glossary;
	}
	public void setGlossary(Glossary glossary) {
		this.glossary = glossary;
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
	
	private void showGlossaryContent() {
		SqlSession session = ModelSessionFactory.getSession().openSession();
		try {
			IGlossaryOperation go = session.getMapper(IGlossaryOperation.class);
			this.setGlossary(go.selectGlossary());
			logger.warn("Get glossary versionID: " + this.glossary.getVersionID());
			logger.warn("Get glossary article: " + this.glossary.getArticle());
		} catch (Exception e) {
			logger.error(e.getMessage());
		} finally {
			session.close();
		}

	}
	private void updateGlossaryInfo(){
		
		SqlSession session = ModelSessionFactory.getSession().openSession();
		try {
			IGlossaryOperation go = session.getMapper(IGlossaryOperation.class);
			Glossary glossary = new Glossary();
			glossary.setArticle(this.article);
			go.updateGlossary(glossary);
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
			 this.updateGlossaryInfo();;
		 }
		 this.showGlossaryContent();;
		return SUCCESS;
		
	}

}