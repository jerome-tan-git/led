package ledweb.model.mapper;

import java.util.List;

import ledweb.model.Category;
import ledweb.model.Order;
import ledweb.model.Product;
import ledweb.model.User;

public interface IOrderOperation {
	public Order selectOrderByID(int id);
	public int addOrder(Order order);
	public int updateOrder(Order order);
	public int deleteOrder(String id);
	public List<Order> selectOrderByUserID(String userID);
	
}
