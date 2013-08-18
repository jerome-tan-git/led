package ledweb.model.mapper;

import java.util.List;

import ledweb.model.Product;
import ledweb.model.User;

public interface IProductOperation {
	public Product selectProductByID(String id);
	public List<Product> selectProductsByCategoryID(String id);
	public int addProduct(Product product);
	public int updateProduct(Product product);
	public int realDeleteProduct(String id);
	public List<Product> selectAllProducts();
}
