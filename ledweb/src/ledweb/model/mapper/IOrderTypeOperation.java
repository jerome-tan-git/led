package ledweb.model.mapper;

import java.util.List;

import ledweb.model.AboutUs;
import ledweb.model.OrderType;

public interface IOrderTypeOperation {
	public OrderType selectOrderTypeByID(String ID);
	public List<OrderType> selectAllOrderType();
	public List<OrderType> selectOrderTypesByOrderID(String ID);
	public int addOrderType(OrderType o);
	public int updateOrderType(OrderType o);
	public int realDeleteOrderType(String ID);
	public int batchAddOrderType(List<OrderType> os);
}
