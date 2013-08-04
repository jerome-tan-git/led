package ledweb.model.mapper;

import java.util.List;

import ledweb.model.Category;
import ledweb.model.Product;
import ledweb.model.ProductType;
import ledweb.model.User;

public interface IProductTypeOperation {

	public ProductType selectProductTypeByID(int id);
	public int addProductType(ProductType productType);
	public int updateProductType(ProductType productType);
	public int deleteProductType(String id);
	public int deleteAllProductType(String productID);
	public List<ProductType> selectProductTypeByProductID(String productID);
	public int batchAddProductType(List<ProductType> specs); 
}
