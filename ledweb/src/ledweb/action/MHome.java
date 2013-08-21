package ledweb.action;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class MHome extends ActionSupport{
	@Override
	public String execute() {
		HttpServletResponse resp = ServletActionContext.getResponse();
		resp.setHeader("Pragma","No-cache");  
		resp.setHeader("Cache-Control","No-cache");  
		resp.setDateHeader("Expires", -1);  
		resp.setHeader("Cache-Control", "No-store");  
		return SUCCESS;
	}
}
