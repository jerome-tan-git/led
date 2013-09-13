package ledweb.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse; 

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class MobileDetector  extends AbstractInterceptor {
	Logger logger = Logger.getLogger(MobileDetector.class);
	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		HttpServletRequest req = ServletActionContext.getRequest();
		HttpServletResponse resp = ServletActionContext.getResponse();
		String userAgent= "user agent:" + req.getHeader("User-Agent");
		if (userAgent.toLowerCase().indexOf("iphone")!=-1 || userAgent.toLowerCase().indexOf("android")!=-1)  
		{
			String servletPath = req.getServletPath();
			resp.sendRedirect(req.getContextPath()+"/m"+servletPath);
//			if(req.getRequestURI());   
		}
		return arg0.invoke();
	}

}
