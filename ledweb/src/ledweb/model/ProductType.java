package ledweb.model;

public class ProductType {
	private int productTypeID;
	private String productID;
	private String typeID;
	private int isDelete;
	private String reserve1="";
	private Type type;
	private float price;
	private String reserve2="";
	private String reserve3="";
	
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
	public int getProductTypeID() {
		return productTypeID;
	}
	public void setProductTypeID(int productTypeID) {
		this.productTypeID = productTypeID;
	}

	public String getProductID() {
		return productID;
	}
	public void setProductID(String productID) {
		this.productID = productID;
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
	
	/**
	 * private int productTypeID;
	private String productID;
	private int typeID;
	private int isDelete;
	private String reserve1="";
	private Type type;
	private float price;
	private String reserve2="";
	private String reserve3="";
	 */
	
	public String toString()
	{
		String result = "\n-----------------------------------------------";
		result += "\nProductType ID;  " + this.getProductTypeID();
		result += "\nProduct ID;  " + this.getProductID();
		result += "\nType ID;  " + this.getTypeID();
		result += "\nProduct price;  " + this.getPrice();
		result += "\nSpec reserve1;  " + this.getReserve1();
		result += "\nSpec reserve2;  " + this.getReserve2();
		result += "\nSpec reserve3;  " + this.getReserve3();
		result += "\n-----------------------------------------------";
		return result;
	}
}
