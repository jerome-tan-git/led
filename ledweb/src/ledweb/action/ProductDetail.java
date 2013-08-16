package ledweb.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import ledweb.ModelSessionFactory;
import ledweb.model.Product;
import ledweb.model.ProductSpec;
import ledweb.model.ProductType;
import ledweb.model.Type;
import ledweb.model.TypeGroup;
import ledweb.model.mapper.IProductOperation;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class ProductDetail extends ActionSupport {
	private Product product;
	private String productID;
	private HashMap<String, List<Type>> typeMap;
	Logger log = Logger.getLogger(ProductDetail.class);
	
	
	public String getProductID() {
		return productID;
	}

	public HashMap<String, List<Type>> getTypeMap() {
		return typeMap;
	}

	public void setTypeMap(HashMap<String, List<Type>> typeMap) {
		this.typeMap = typeMap;
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

	private Product selectProduct()
	{
		Product product = null;
		typeMap= new HashMap<String, List<Type>>();
		SqlSession session = ModelSessionFactory.getSession().openSession();
		try
		{
			IProductOperation IPO = session.getMapper(IProductOperation.class);
			product = IPO.selectProductByID(this.getProductID());
			
			//log.warn(product.getTypes().size());
			for(ProductType type: product.getTypes())
			{
				List<Type> typeList = new ArrayList<Type>();
				if (this.typeMap.containsKey(type.getType().getTypeGroup().getGroupName().trim()))
				{
					typeList = this.typeMap.get(type.getType().getTypeGroup().getGroupName().trim());
				}
				typeList.add(type.getType());
				this.typeMap.put(type.getType().getTypeGroup().getGroupName().trim(), typeList);
				log.warn(type.getType().getTypeGroup().getGroupName());
			}
			
			for (ProductSpec pspec : product.getSpecs())
			{
				log.warn(pspec.getSpec().getSpecName()+" : " + pspec.getSpecValue());  
			}
		}
		catch(Exception e)
		{
			log.error(e.getMessage());
		}
		return product;
	}
	@Override
	public String execute() { 
		this.setProductID(ServletActionContext.getRequest().getParameter("productID"));
		if (this.getProductID()!=null && !this.getProductID().trim().equals(""))
		{
			
			this.product = this.selectProduct();
			if(this.product ==null)
			{
				return ERROR;
			}
			else
			{
				return SUCCESS;
			}
		}
		else
		{
			return ERROR;
		}
	}
}
