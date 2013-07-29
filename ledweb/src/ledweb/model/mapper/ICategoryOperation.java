package ledweb.model.mapper;

import java.util.List;

import ledweb.model.Category;
import ledweb.model.Product;
import ledweb.model.User;

public interface ICategoryOperation {
	public Category selectCategoryByID(int id);
	public int addCategory(Category category);
	public int updateCategory(Category category);
	public int deleteCategory(int id);
}
