package ledweb.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.Cookie;

import ledweb.ModelSessionFactory;
import ledweb.Util;
import ledweb.model.Category;
import ledweb.model.Product;
import ledweb.model.ProductSpec;
import ledweb.model.ProductType;
import ledweb.model.Type;
import ledweb.model.TypeGroup;
import ledweb.model.mapper.ICategoryOperation;
import ledweb.model.mapper.IProductOperation;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class ProductDetail extends ActionSupport {
	private Product product;
	private String productID;
	private HashMap<String, List<Type>> typeMap;
	private List<Product> featuredProducts;
	private List<Product> relatedProducts;
	private List<Category> categories;
	private String addCompare;
	private List<Product> comparedProduct = new ArrayList<Product>();

	public List<Product> getComparedProduct() {
		return comparedProduct;
	}

	public void setComparedProduct(List<Product> comparedProduct) {
		this.comparedProduct = comparedProduct;
	}

	public String getAddCompare() {
		return addCompare;
	}

	public void setAddCompare(String addCompare) {
		this.addCompare = addCompare;
	}

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	public List<Product> getRelatedProducts() {
		return relatedProducts;
	}

	public void setRelatedProducts(List<Product> relatedProducts) {
		this.relatedProducts = relatedProducts;
	}

	Logger log = Logger.getLogger(ProductDetail.class);

	public String getProductID() {
		return productID;
	}

	public HashMap<String, List<Type>> getTypeMap() {
		return typeMap;
	}

	public List<Product> getFeaturedProducts() {
		return featuredProducts;
	}

	public void setFeaturedProducts(List<Product> featuredProducts) {
		this.featuredProducts = featuredProducts;
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

	private Product selectProduct() {
		Product product = null;
		typeMap = new HashMap<String, List<Type>>();
		SqlSession session = ModelSessionFactory.getSession().openSession();
		try {
			IProductOperation IPO = session.getMapper(IProductOperation.class);
			product = IPO.selectProductByID(this.getProductID());

			// log.warn(product.getTypes().size());
			for (ProductType type : product.getTypes()) {
				List<Type> typeList = new ArrayList<Type>();
				if (this.typeMap.containsKey(type.getType().getTypeGroup()
						.getGroupName().trim())) {
					typeList = this.typeMap.get(type.getType().getTypeGroup()
							.getGroupName().trim());
				}
				typeList.add(type.getType());
				this.typeMap.put(type.getType().getTypeGroup().getGroupName()
						.trim(), typeList);
				log.warn(type.getType().getTypeGroup().getGroupName());
			}

			for (ProductSpec pspec : product.getSpecs()) {
				log.warn(pspec.getSpec().getSpecName() + " : "
						+ pspec.getSpecValue());
			}
			// get similar product

			List<Product> categoryProduct = IPO
					.selectProductsByCategoryID(product.getCategoryID());
			this.relatedProducts = new ArrayList<Product>();
			for (Product prod : categoryProduct) {
				if (!prod.getProductID().equals(product.getProductID())) {
					this.relatedProducts.add(prod);
				}
			}

			// get categories
			ICategoryOperation ICO = session
					.getMapper(ICategoryOperation.class);
			this.setCategories(ICO.selectAllCategories());

		} catch (Exception e) {
			log.error(e.getMessage());
		}
		return product;
	}

	@Override
	public String execute() {
		this.setProductID(ServletActionContext.getRequest().getParameter(
				"productID"));
		this.featuredProducts = Util.getFeaturedProducts();
		Cookie[] cookies = ServletActionContext.getRequest().getCookies();

		if (this.getProductID() != null
				&& !this.getProductID().trim().equals("")) {

			this.product = this.selectProduct();
			if (this.product == null) {
				return ERROR;
			} else {
				Set<String> tmpIDs = new HashSet<String>();
				if (cookies != null) {
					for (Cookie c : cookies) {
						String key = c.getName();
						String value = c.getValue();
						if (!tmpIDs.contains(key)) {
							if (value.trim().toLowerCase()
									.equals("compare")) {
								this.comparedProduct.add(Util
										.getProductByID(key));
								tmpIDs.add(key);
							}
						}
					}
				}
				if (ServletActionContext.getRequest()
						.getParameter("addCompare") != null
						&& !ServletActionContext.getRequest()
								.getParameter("addCompare").trim().equals("")) {
					
					if (!tmpIDs.contains(ServletActionContext.getRequest()
							.getParameter("addCompare"))) {
						this.comparedProduct.add(Util
								.getProductByID(ServletActionContext
										.getRequest()
										.getParameter("addCompare")));
					}
					Cookie addCompare = new Cookie(ServletActionContext
							.getRequest().getParameter("addCompare"), "compare");
					addCompare.setMaxAge(60 * 60 * 24 * 14);
					ServletActionContext.getResponse().addCookie(addCompare);

				}
				if (ServletActionContext.getRequest()
						.getParameter("deleteCompare") != null
						&& !ServletActionContext.getRequest()
								.getParameter("deleteCompare").trim().equals(""))
				{
					String deleteID = ServletActionContext.getRequest().getParameter("deleteCompare").trim();
					Cookie cookie = new Cookie(deleteID,null);
					cookie.setMaxAge(0);
					
					ServletActionContext.getResponse().addCookie(cookie);
					int removeIndex = -1;
					for (int i=0;i<this.getComparedProduct().size();i++)
					{
						Product x = this.getComparedProduct().get(i);
						if (x.getProductID().equals(deleteID))
						{
							removeIndex = i;
							break;
						}
					}
					if (removeIndex != -1)
					{
						this.getComparedProduct().remove(removeIndex);
					}
					log.warn("delete ID: " +  deleteID);
				}
				return SUCCESS;
			}
		} else {
			return ERROR;
		}
	}
}
