package ledweb.action;

import ledweb.Util;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class GlobalCss extends ActionSupport{
	private String imagePath;
	
	public String getImagePath() {
		return Util.getImageBackgroundURL(ServletActionContext.getRequest(), ServletActionContext.getResponse(), ServletActionContext.getServletContext());
	}

	@Override
    public String execute(){
		return SUCCESS;
	}
}
