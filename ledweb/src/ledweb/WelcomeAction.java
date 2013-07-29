package ledweb;

import com.opensymphony.xwork2.ActionSupport;

public class WelcomeAction extends ActionSupport{
	private static final long    serialVersionUID    = -6256745897215180249L;

    private String                username;

    public String getUsername()
    {
        return username;
    }

    public void setUsername(String username)
    {
        this.username = username;
    }

    @Override
    public String execute()
    {
        return SUCCESS;
    }
}
