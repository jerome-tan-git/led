package ledweb.action;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import ledweb.ModelSessionFactory;
import ledweb.MyCache;
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
	/**
	 * 
	 */
	private static final long serialVersionUID = 1815169853969021808L;
	private List<Product> products;
	public String getModule() {
		return module;
	}

	private String deleteProduct;
	
	private String module="product management";
	
	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	private Logger logger = Logger.getLogger(ProductList.class);

	private void init() {
		SqlSession sqlSession = ModelSessionFactory.getSession().openSession();
		IProductOperation ipo = sqlSession.getMapper(IProductOperation.class);
		List<Product> products = ipo.selectAllProducts();
		this.products = products;
	}

	public String getDeleteProduct() {
		return deleteProduct;
	}

	public void setDeleteProduct(String deleteProduct) {
		this.deleteProduct = deleteProduct;
	}

	@Override
	public String execute() {

		if (this.deleteProduct != null && !this.deleteProduct.trim().equals("")) {
			SqlSession sqlSession = ModelSessionFactory.getSession()
					.openSession();
			try {
				IProductOperation ipo = sqlSession
						.getMapper(IProductOperation.class);
				ipo.realDeleteProduct(this.deleteProduct);
				sqlSession.commit();
			} catch (Exception e) {
				logger.error(e.getMessage());
			} finally {
				sqlSession.close();

			}
		}
		this.init();
		MyCache.refresh();
		return SUCCESS;
	}
}
