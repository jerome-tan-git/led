package ledweb.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class Order {
	private String orderID;
	private String productID;
	private String userID;
	private int quantity;
	private String typeID;
	private int isDelete;
	private String message;
	private String orderDate;
	private int status;
	private String reserve1="";
	private String reserve2="";
	private String reserve3="";
	private Product product;
	private List<OrderType> orderTypes;
	private String orderNo;
	
	public String getOrderNo() {
		if (this.getOrderDate()!= null && !this.getOrderDate().trim().equals(""))
		{
			long x = Long.parseLong(this.getOrderDate());
			Date aa = new Date(x);
			SimpleDateFormat sdf=new SimpleDateFormat("yyMMddHHmmssSSS");
			return sdf.format(aa);
		}
		return "N/A";
	}
	public List<OrderType> getOrderTypes() {
		return orderTypes;
	}
	public void setOrderTypes(List<OrderType> orderTypes) {
		this.orderTypes = orderTypes;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public String getOrderID() {
		return orderID;
	}
	public void setOrderID(String orderID) {
		this.orderID = orderID;
	}
	public String getProductID() {
		return productID;
	}
	public void setProductID(String productID) {
		this.productID = productID;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getTypeID() {
		return typeID;
	}
	public void setTypeID(String typeID) {
		this.typeID = typeID;
	}
	public int getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete; 
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getReserve1() {
		return reserve1;
	}
	public void setReserve1(String reserve1) {
		this.reserve1 = reserve1;
	}
	public String getReserve2() {
		return reserve2;
	}
	public void setReserve2(String reserve2) {
		this.reserve2 = reserve2;
	}
	public String getReserve3() {
		return reserve3;
	}
	public void setReserve3(String reserve3) {
		this.reserve3 = reserve3;
	}

}
