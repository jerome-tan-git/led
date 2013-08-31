package ledweb.action;

import java.util.Map;

import org.apache.log4j.Logger;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class UsrLoginInterceptor extends AbstractInterceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Logger log = Logger.getLogger(UsrLoginInterceptor.class);
	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		if (Login.class == arg0.getAction().getClass())
			return arg0.invoke();
		Map<String, Object> map = arg0.getInvocationContext().getSession();
		log.warn(map);
		if (!map.containsKey("login"))
		{
			return Action.LOGIN;
		}
		else if (!(Boolean)map.get("login"))
		{
			return Action.LOGIN;
		}
		return arg0.invoke();
	}

}
