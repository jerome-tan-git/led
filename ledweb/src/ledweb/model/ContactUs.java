package ledweb.model;

public class ContactUs {

	private String article;
	private String versionID;
	private int isDelete;
	
	public String getArticle() {
		return article;
	}
	public void setArticle(String article) {
		this.article = article;
	}
	public String getVersionID() {
		return versionID;
	}
	public void setVersionID(String versionID) {
		this.versionID = versionID;
	}
	
	public int getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
	}
	
	public String toString(){
		return "\nContactUS\nVersionID="+this.versionID+",\tisDelete="+this.isDelete+",\nArticle="+this.article;
	}
	
}
