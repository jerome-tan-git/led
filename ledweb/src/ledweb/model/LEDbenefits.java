package ledweb.model;

public class LEDbenefits {
	
	private String benefit1;
	private String benefit2;
	private String benefit3;
	private String benefit4;
	private String benefit5;
	private String Article;
	private String versionID;
	private int isActive;
	
	
	
	public String getArticle() {
		return Article;
	}
	public void setArticle(String article) {
		Article = article;
	}
	public String getBenefit1() {
		return benefit1;
	}
	public void setBenefit1(String benefit1) {
		this.benefit1 = benefit1;
	}
	public String getBenefit2() {
		return benefit2;
	}
	public void setBenefit2(String benefit2) {
		this.benefit2 = benefit2;
	}
	public String getBenefit3() {
		return benefit3;
	}
	public void setBenefit3(String benefit3) {
		this.benefit3 = benefit3;
	}
	public String getBenefit4() {
		return benefit4;
	}
	public void setBenefit4(String benefit4) {
		this.benefit4 = benefit4;
	}
	public String getBenefit5() {
		return benefit5;
	}
	public void setBenefit5(String benefit5) {
		this.benefit5 = benefit5;
	}
	public String getVersionID() {
		return versionID;
	}
	public void setVersionID(String versionID) {
		this.versionID = versionID;
	}
	public int getIsActive() {
		return isActive;
	}
	public void setIsActive(int isActive) {
		this.isActive = isActive;
	}


	public String toString(){
		return ("IsActive="+this.isActive+", VersionID="+this.versionID+", b1="+this.benefit1+", b2="+this.benefit2+", b3="
				+this.benefit3+", b4="+this.benefit4+", b5="+this.benefit5+".\nArticle----"+this.Article);
	}
	
}
