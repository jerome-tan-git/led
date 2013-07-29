package ledweb.action;

import com.opensymphony.xwork2.ActionSupport;

public class Action1 extends ActionSupport {
	private String username = "111111";

	public String getUsername() {
		return username;
	}

	@Override
	public String execute() {	
		if(getUsername().equals("1"))
		{
			this.username = "a";
		}
		return SUCCESS;
	}

	public void setUsername(String username) {

		this.username = username;
	}
}
