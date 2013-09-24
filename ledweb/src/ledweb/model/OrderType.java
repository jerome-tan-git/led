package ledweb.model;

import java.io.Serializable;

public class OrderType implements Serializable{
	private int orderTypeID;
	private String orderID;
	private String typeID;
	private String reserve1="";
	private String reserve2="";
	private String reserve3="";
	private Type type;
	
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
	public int getOrderTypeID() {
		return orderTypeID;
	}
	public void setOrderTypeID(int orderTypeID) {
		this.orderTypeID = orderTypeID;
	}
	public String getOrderID() {
		return orderID;
	}
	public void setOrderID(String orderID) {
		this.orderID = orderID;
	}

	public String getTypeID() {
		return typeID;
	}
	public void setTypeID(String typeID) {
		this.typeID = typeID;
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
