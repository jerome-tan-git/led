package ledweb.action;

import ledweb.ModelSessionFactory;
import ledweb.model.Product;
import ledweb.model.mapper.IProductOperation;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

public class ProductDetail extends ActionSupport {
	private Product product;
	private String productID;
	
	
	Logger log = Logger.getLogger(ProductDetail.class);
	
	
	public String getProductID() {
		return productID;
	}

	public void setProductID(String productID) {
		this.productID = productID;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	private ProductDetail selectProduct()
	{
		ProductDetail product = null;
		SqlSession session = ModelSessionFactory.getSession().openSession();
		try
		{
			IProductOperation IPO = session.getMapper(IProductOperation.class);
			this.product = IPO.selectProductByID(this.getProductID());
		}
		catch(Exception e)
		{
			log.error(e.getMessage());
		}
		return product;
	}
	@Override
	public String execute() {
		if (this.getProductID()!=null && !this.getProductID().trim().equals(""))
		{
			
		}
		else
		{
			return ERROR;
		}
		return SUCCESS; 
	}
}
