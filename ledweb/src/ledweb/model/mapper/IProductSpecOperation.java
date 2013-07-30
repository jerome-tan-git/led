package ledweb.model.mapper;

import java.util.List;

import ledweb.model.Category;
import ledweb.model.Product;
import ledweb.model.ProductSpec;
import ledweb.model.ProductType;
import ledweb.model.User;

public interface IProductSpecOperation {
	public List<ProductSpec> selectProductSpecByProductID(int productID);
	public ProductSpec selectProductSpecByID(int productID);
	public int addProductSpec(ProductSpec productSpec);
	public int updateProductSpec(ProductSpec ProductSpec);
	public int deleteProductSpec(int productID);
	public int deleteAllProductSpec(int productID);
	public int batchAddProductSpec(List<ProductSpec> specs); 
	
	
}
