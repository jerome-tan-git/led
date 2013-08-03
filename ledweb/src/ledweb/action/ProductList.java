package ledweb.action;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import ledweb.ModelSessionFactory;
import ledweb.model.Category;
import ledweb.model.Spec;
import ledweb.model.Type;
import ledweb.model.mapper.ICategoryOperation;
import ledweb.model.mapper.IProductOperation;
import ledweb.model.mapper.ISpecOperation;
import ledweb.model.mapper.ITypeOperation;

import org.apache.commons.io.FileUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class ProductList extends ActionSupport {

	private void init()
	{
		
	}
	
	@Override
	public String execute() {
		
		this.init();
		return SUCCESS;
	}
}
