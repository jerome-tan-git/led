package ledweb.model.mapper;

import java.util.List;

import ledweb.model.Category;
import ledweb.model.Product;
import ledweb.model.Type;
import ledweb.model.User;

public interface ITypeOperation {
	public Type selectTypeByID(String id);
	public int addType(Type type);
	public int updateType(Type type);
	public int deleteType(String id);
	public int realDeleteType(String id);
	public List<Type> selectAllTypes();
}
