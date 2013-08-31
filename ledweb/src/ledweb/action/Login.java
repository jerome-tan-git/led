package ledweb.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class Login extends ActionSupport{
	private String username;
	private String password;
	private String login;
	public String getUsername() {
		return username;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
    public String execute()
    {
		if (this.getLogin()!=null && this.getLogin().trim().equals("1"))
		{
			if (this.getUsername()!=null && this.getUsername().trim().toLowerCase().equals("root")
					&& this.getPassword() != null && this.getPassword().trim().toLowerCase().equals("123456"))
			{
				Map session = ActionContext.getContext().getSession();
				session.put("login", true);
				return SUCCESS;
			}
		}
        return INPUT;
    }
}
