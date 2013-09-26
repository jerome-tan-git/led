package ledweb.action;

import java.util.Map;

import ledweb.Util;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class Login extends ActionSupport{
	private String username;
	private String password;
	private String login;
	private String psd;
	private Logger log = Logger.getLogger(Login.class); 
	private String bgImage;
	
	public String getBgImage() {
		return Util.getImageBackgroundURL(ServletActionContext.getRequest(), ServletActionContext.getResponse(), ServletActionContext.getServletContext());
	}

	public String getPsd() {
		return psd;
	}

	public void setPsd(String psd) {
		this.psd = psd;
	}

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
		Map session = ActionContext.getContext().getSession(); 
		
		if (this.getLogin()!=null && this.getLogin().trim().equals("1"))
		{
			if (this.getUsername()!=null && this.getUsername().trim().toLowerCase().equals("root")
					&& this.getPassword() != null && this.getPassword().trim().toLowerCase().equals(this.getPsd()))
			{
				session.put("login", true);
				return SUCCESS;
			}
		}
		else
		{
			session.remove("image");
//			log.warn("remove session");
			
		}
        return INPUT; 
    }
}
