package ledweb.model;

import java.io.Serializable;

public class ProductSpec implements Serializable{
	
	private int productSpecID;
	private String productID;
	private String specID;
	private String specValue;
	private int isDelete;
	private String reserve1="";
	private Spec spec;
	private String reserve2="";
	private String reserve3="";
	
	public Spec getSpec() {
		return spec;
	}
	public void setSpec(Spec spec) {
		this.spec = spec;
	}
	public int getProductSpecID() {
		return productSpecID;
	}
	public void setProductSpecID(int productSpecID) {
		this.productSpecID = productSpecID;
	}


	public String getProductID() {
		return productID;
	}
	public String getSpecID() {
		return specID;
	}
	public void setSpecID(String specID) {
		this.specID = specID;
	}
	public void setProductID(String productID) {
		this.productID = productID;
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

	/**
	 * private int productSpecID;
	private String productID;
	private int specID;
	private String specValue;
	private int isDelete;
	private String reserve1="";
	private Spec spec;
	private String reserve2="";
	private String reserve3="";
	 */
	public String toString()
	{
		String result = "\n-----------------------------------------------";
		result += "\nSpec ID;  " + this.getSpecID();
		result += "\nProduct ID;  " + this.getProductID();
		result += "\nSpec Value;  " + this.getSpecValue();
		result += "\nSpec reserve1;  " + this.getReserve1();
		result += "\nSpec reserve2;  " + this.getReserve2();
		result += "\nSpec reserve3;  " + this.getReserve3();
		result += "\n-----------------------------------------------";
		return result;
	}
}
