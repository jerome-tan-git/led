package ledweb.model;

public class ProductSpec {
	private int productSpecID;
	private int productID;
	private int specID;
	private String specValue;
	private int isDelete;
	private String reserve1="";
	public int getProductSpecID() {
		return productSpecID;
	}
	public void setProductSpecID(int productSpecID) {
		this.productSpecID = productSpecID;
	}
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public int getSpecID() {
		return specID;
	}
	public void setSpecID(int specID) {
		this.specID = specID;
	}
	public String getSpecValue() {
		return specValue;
	}
	public void setSpecValue(String specValue) {
		this.specValue = specValue;
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
	private String reserve2="";
	private String reserve3="";
	
}