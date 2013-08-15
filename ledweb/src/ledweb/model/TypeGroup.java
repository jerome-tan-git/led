package ledweb.model;

public class TypeGroup {
	private String groupID;
	private String groupName;
	private String Reserve1="";
	private String Reserve2="";
	private String Reserve3="";
	private int isDelete;
	public String getGroupID() {
		return groupID;
	}
	public int getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
	}
	public void setGroupID(String groupID) {
		this.groupID = groupID;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	public String getReserve1() {
		return Reserve1;
	}
	public void setReserve1(String reserve1) {
		Reserve1 = reserve1;
	}
	public String getReserve2() {
		return Reserve2;
	}
	public void setReserve2(String reserve2) {
		Reserve2 = reserve2;
	}
	public String getReserve3() {
		return Reserve3;
	}
	public void setReserve3(String reserve3) {
		Reserve3 = reserve3;
	}
	
}
