package ledweb;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import ledweb.model.Category;
import ledweb.model.Product;
import ledweb.model.mapper.ICategoryOperation;
import ledweb.model.mapper.IProductOperation;

public class MyCache {
	private static MyCache cache;
	private List<Category> allCategories;
	private List<Product> featuredProducts;
	private HashMap<String, List<Product>> categoryProduct;
	private HashMap<String, Product> allProducts;
	public List<Category> getAllCategories() {
		return allCategories;
	}

	public List<Product> getFeaturedProducts() {
		return featuredProducts;
	}
	public List<Product> getProductsByCategory (String _categoryID)
	{
		return this.categoryProduct.get(_categoryID);
	}
	
	public Product getProductByID(String _productID)
	{
		return this.allProducts.get(_productID);
	}
	private MyCache() {
		SqlSession session = ModelSessionFactory.getSession().openSession();
		ICategoryOperation ICO = session.getMapper(ICategoryOperation.class);
		this.allCategories = ICO.selectAllCategories();
		IProductOperation ipo = session.getMapper(IProductOperation.class);
		this.featuredProducts = ipo.selectFeaturedProducts();
		List<Product> allProducts = ipo.selectAllProducts();
		this.categoryProduct = new HashMap<String, List<Product>>();
		this.allProducts = new HashMap<String, Product>();
		for(Product p: allProducts)
		{
			List<Product> l = new ArrayList<Product>();
			if (this.categoryProduct.containsKey(p.getCategoryID()))
			{
				l = this.categoryProduct.get(p.getCategoryID());
			}
			l.add(p);
			this.categoryProduct.put(p.getCategoryID(), l);
			this.allProducts.put(p.getProductID(), p);
		}
		
	}

	
	public static MyCache getInstance() {
		if (MyCache.cache == null) {
			MyCache.cache = new MyCache();
		}
		return MyCache.cache;
	}
	public static void refresh()
	{
		MyCache.cache = new MyCache();
	}
}
