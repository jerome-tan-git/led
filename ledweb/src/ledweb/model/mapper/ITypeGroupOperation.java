package ledweb.model.mapper;

import java.util.List;
import ledweb.model.Type;
import ledweb.model.TypeGroup;

public interface ITypeGroupOperation {
	public TypeGroup selectTypeGroupByID(String id);
	public List<TypeGroup> selectAllTypeGroups();
	public int addTypeGroup(TypeGroup typeGroup);
	public int updateTypeGroup(TypeGroup typeGroup);
	public int deleteTypeGroup(String id);
	public int realDeleteTypeGroup(String id);
	public List<Type> selectTypeGroups();
}
