package ledweb.action;

import ledweb.ModelSessionFactory;
import ledweb.model.mapper.IProductOperation;

import org.apache.ibatis.session.SqlSession;

import com.opensymphony.xwork2.ActionSupport;

public class OrderAction extends ActionSupport{
	private String module = "order management";
	
	public String getModule() {
		return module;
	}

	@Override
	public String execute() {
		
		return SUCCESS;
	}
}
