package ledweb.model;

import ledweb.Email;

import com.opensymphony.xwork2.ActionSupport;

public class Customer   {
	
	private String name;
	private String phone;
	private String email;
	private String enquiry;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEnquiry() {
		return enquiry;
	}
	public void setEnquiry(String enquiry) {
		this.enquiry = enquiry;
	}
	
	
	public String toString(){
		return ("\n Customer name="+this.name+", \n phone="+this.phone+", \n email="+this.email+
				", \n enquiry="+this.enquiry);
	}
	

	
}
