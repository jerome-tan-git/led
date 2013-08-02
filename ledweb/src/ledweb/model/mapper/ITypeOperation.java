package ledweb.model.mapper;

import java.util.List;

import ledweb.model.Category;
import ledweb.model.Product;
import ledweb.model.Type;
import ledweb.model.User;

public interface ITypeOperation {
	public Type selectTypeByID(int id);
	public int addType(Type type);
	public int updateType(Type type);
	public int deleteType(int id);
	public List<Type> selectAllTypes();
}
