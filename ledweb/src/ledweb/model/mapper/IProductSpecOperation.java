package ledweb.model.mapper;

import java.util.List;

import ledweb.model.Category;
import ledweb.model.Product;
import ledweb.model.ProductSpec;
import ledweb.model.User;

public interface IProductSpecOperation {
	public ProductSpec selectProductSpecByID(int id);
	public int addProductSpec(ProductSpec productSpec);
	public int updateProductSpec(ProductSpec ProductSpec);
	public int deleteProductSpec(int id);
}
