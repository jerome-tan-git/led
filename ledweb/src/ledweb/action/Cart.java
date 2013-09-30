package ledweb.action;

import java.util.List;

import javax.servlet.http.Cookie;

import ledweb.ModelSessionFactory;
import ledweb.Util;
import ledweb.model.AboutUs;
import ledweb.model.Category;
import ledweb.model.Order;
import ledweb.model.User;
import ledweb.model.mapper.IAboutUsOperation;
import ledweb.model.mapper.IOrderOperation;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class Cart extends ActionSupport {

	private static Logger logger = Logger.getLogger(ContactUsAction.class);
	private AboutUs aboutUs;
	private String article;
	private String isSubmit;
	private List<Category> allCategories;
	private String module = "about us";
	private User user;
	private List<Order> orders;
	private String deleteOrder;

	public String getDeleteOrder() {
		return deleteOrder;
	}

	public void setDeleteOrder(String deleteOrder) {
		this.deleteOrder = deleteOrder;
	}

	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

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

	private void updateAboutUsInfo() {

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
			if (session!=null)
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
		Cookie[] cs = ServletActionContext.getRequest().getCookies();
		String userIDStr = null;
		for (Cookie c : cs) {
			if (c.getName().trim().equals("userID")) {
				userIDStr = c.getValue();
			}
		}

		if (userIDStr != null) {
			if (this.getDeleteOrder() != null
					&& !this.getDeleteOrder().trim().equals("")) {
				System.out.println("delete order:" + this.getDeleteOrder());
				SqlSession session = null;
				try {
					session = ModelSessionFactory.getSession().openSession();
					IOrderOperation ioo = session
							.getMapper(IOrderOperation.class);
					ioo.deleteOrder(this.getDeleteOrder());
					session.commit();
				} catch (Exception e) {
					logger.error(e.getMessage());
				} finally {
					if (session != null) {
						session.close();
					}
				}
			}
			User _user = Util.getUserByID(userIDStr);
			if (_user != null) {
				this.setUser(_user);
				SqlSession session = ModelSessionFactory.getSession()
						.openSession();
				IOrderOperation ioo = session.getMapper(IOrderOperation.class);
				this.setOrders(ioo.selectOrderByUserID(_user.getUserID()));
			}
		}
		return SUCCESS;

	}

}
