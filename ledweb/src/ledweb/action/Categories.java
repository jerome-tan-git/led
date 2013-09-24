package ledweb.action;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import ledweb.ModelSessionFactory;
import ledweb.MyCache;
import ledweb.Util;
import ledweb.model.Category;
import ledweb.model.Product;
import ledweb.model.mapper.ICategoryOperation;
import ledweb.model.mapper.IProductOperation;

import com.opensymphony.xwork2.ActionSupport;

public class Categories extends ActionSupport {
	private List<Category> categories;
	private String categoryID;
	private Category selectedCategory;
	private List<Product> products;
	private List<Product> featuredProducts;
	private List<Category> allCategories;
	
	public List<Category> getAllCategories() {
		return allCategories;
	}
	public void setAllCategories(List<Category> allCategories) {
		this.allCategories = allCategories;
	}
	public List<Product> getFeaturedProducts() {
		return featuredProducts;
	}

	public void setFeaturedProducts(List<Product> featuredProducts) {
		this.featuredProducts = featuredProducts;
	}

	public Category getSelectedCategory() {
		return selectedCategory;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public void setSelectedCategory(Category selectedCategory) {
		this.selectedCategory = selectedCategory;
	}

	public String getCategoryID() {
		return categoryID;
	}

	public void setCategoryID(String categoryID) {
		this.categoryID = categoryID;
	}

	Logger log = Logger.getLogger(Categories.class);

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	private void init(String _categoryID) {
		SqlSession session = ModelSessionFactory.getSession().openSession();
		long start = System.currentTimeMillis();
		this.categories = Util.getAllCategories();
		if (_categoryID == null || _categoryID.trim().equals("")) {
			if (this.getCategories() != null && this.getCategories().size() > 0) {
				this.setCategoryID(this.getCategories().get(0).getCategoryID());
				this.setSelectedCategory(this.getCategories().get(0));
			}

		} else {
			for (Category category : this.categories) {
				if (category.getCategoryID().trim().equals(_categoryID)) {
					this.setSelectedCategory(category);
					break;
				}
			}
		}
		long start1 = System.currentTimeMillis();
		log.warn("part1: "+(start1-start));
		this.products = MyCache.getInstance().getProductsByCategory(this.getCategoryID());
		long start2 = System.currentTimeMillis();
		log.warn("part2: "+(start2-start1));
		this.featuredProducts = Util.getFeaturedProducts();
	}

	@Override
	public String execute() throws Exception {
		long start = System.currentTimeMillis();
		this.allCategories = Util.getAllCategories();
		long start1 = System.currentTimeMillis();
		log.warn("All category"+(start1 - start));
		this.init(this.getCategoryID());
		long start2 = System.currentTimeMillis();
		log.warn("Init category"+(start2 - start1));
		return SUCCESS;
	}
}
