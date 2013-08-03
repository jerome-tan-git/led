package ledweb.model;

public class Category {
	private String categoryID;
	private String categoryName;
	private int isDelete;
	private String reserve1="";
	private String reserve2="";
	private String reserve3="";
	

	public String getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(String categoryID) {
		this.categoryID = categoryID;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
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
	 * 	private int categoryID;
	private String categoryName;
	private int isDelete;
	private String reserve1="";
	private String reserve2="";
	private String reserve3="";
	 */
	public String toString()
	{
		String result = "\n-----------------------------------------------";
		result += "\nCategory ID;  " + this.getCategoryID();
		result += "\nCategory Name;  " + this.getCategoryName();
		result += "\nCategory Desc;  " + this.getReserve1();
		result += "\nCategory Image;  " + this.getReserve2();
		result += "\nSpec reserve3;  " + this.getReserve3();
		result += "\n-----------------------------------------------";
		return result;
	}
}
