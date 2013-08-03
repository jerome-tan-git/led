package ledweb.action;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import ledweb.ModelSessionFactory;
import ledweb.model.Category;
import ledweb.model.Product;
import ledweb.model.ProductSpec;
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
	private List<Product> products;
	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	private Logger logger = Logger.getLogger(ProductList.class);
	private void init()
	{
		SqlSession sqlSession = ModelSessionFactory.getSession().openSession();
		IProductOperation ipo = sqlSession.getMapper(IProductOperation.class);
		List<Product> products =  ipo.selectAllProducts();
		this.products = products;
	}
	
	@Override
	public String execute() {
		
		this.init();
		for (Product prod : this.products)
		{
			List<ProductSpec> specs= prod.getSpecs();
			logger.warn("++++++++++++++++++++++++++++++++"+prod.getProductName());
			for (ProductSpec spec: specs)
			{
				if (spec.getSpec()!=null)
				{
					logger.warn(spec.getSpec().getSpecName());
				}
			}
			logger.warn("++++++++++++++++++++++++++++++++"+prod.getProductName());
		}
		return SUCCESS;
	}
}
