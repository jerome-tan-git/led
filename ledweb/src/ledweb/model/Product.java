package ledweb.model;

import java.util.List;

public class Product {
	private String productID;
	private int categoryID;
	private String productName;
	private String productDesc;
	private String productImage;
	private float price;

	private List<ProductType> types;
	private List<ProductSpec> specs;

	private int isDelete;
	private String reserve1="";
	private String reserve2="";
	private String reserve3="";
	
	public List<ProductSpec> getSpecs() {
		return specs;
	}
	public void setSpecs(List<ProductSpec> specs) {
		this.specs = specs;
	}
	public List<ProductType> getTypes() {
		return types;
	}
	public void setTypes(List<ProductType> types) {
		this.types = types;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getProductID() {
		return productID;
	}
	public void setProductID(String productID) {
		this.productID = productID;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	public String getProductDesc() {
		return productDesc;
	}
	public void setProductDesc(String productDesc) {
		this.productDesc = productDesc;
	}
	public String getProductImage() {
		return productImage;
	}
	public void setProductImage(String productImage) {
		this.productImage = productImage;
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
	public int getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(int categoryID) {
		this.categoryID = categoryID;
	}
	/**
	 * 	private String productID;
	private int categoryID;
	private String productName;
	private String productDesc;
	private String productImage;
	private float price;

	private List<ProductType> types;
	private List<ProductSpec> specs;

	private int isDelete;
	private String reserve1="";
	private String reserve2="";
	private String reserve3="";
	 */
	public String toString()
	{
		String result = "\n-----------------------------------------------";
		result += "\nProduct ID;  " + this.getProductID();
		result += "\nCategory ID;  " + this.getCategoryID();
		result += "\nProduct name;  " + this.getProductName();
		result += "\nProduct Desc;  " + this.getProductDesc();
		result += "\nProduct Image;  " + this.getProductImage();
		result += "\nProduct Price;  " + this.getPrice();
		result += "\nProduct reserve1;  " + this.getReserve1();
		result += "\nProduct reserve2;  " + this.getReserve2();
		result += "\nProduct reserve3;  " + this.getReserve3();
		result += "\n-----------------------------------------------";
		return result;
	}
}
