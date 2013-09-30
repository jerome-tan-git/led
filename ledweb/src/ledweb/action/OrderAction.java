package ledweb.action;

import java.util.List;

import ledweb.ModelSessionFactory;
import ledweb.model.Order;
import ledweb.model.mapper.IOrderOperation;
import ledweb.model.mapper.IProductOperation;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

public class OrderAction extends ActionSupport {
	private String module = "order management";
	private List<Order> allOrder;
	private String deleteOrder;
	private Logger logger = Logger.getLogger(OrderAction.class);

	public String getDeleteOrder() {
		return deleteOrder;
	}

	public void setDeleteOrder(String deleteOrder) {
		this.deleteOrder = deleteOrder;
	}

	public List<Order> getAllOrder() {
		return allOrder;
	}

	public void setAllOrder(List<Order> allOrder) {
		this.allOrder = allOrder;
	}

	public String getModule() {
		return module;
	}

	@Override
	public String execute() {
		if (this.getDeleteOrder() != null
				&& !this.getDeleteOrder().trim().equals("")) {
			SqlSession session = null;
			try {
				session = ModelSessionFactory.getSession().openSession();
				IOrderOperation ioo = session.getMapper(IOrderOperation.class);
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
		SqlSession session = ModelSessionFactory.getSession().openSession();
		IOrderOperation ioo = session.getMapper(IOrderOperation.class);
		this.setAllOrder(ioo.selectOrders());
		return SUCCESS;
	}
}
