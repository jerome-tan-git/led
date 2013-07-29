package ledweb.model.mapper;

import java.util.List;

import ledweb.model.Product;
import ledweb.model.User;

public interface IProductOperation {
	public Product selectProductByID(int id);
	public int addProduct(Product product);
	public int updateProduct(Product product);
	public int deleteProduct(int id);
}
