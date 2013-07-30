package ledweb.model.mapper;

import java.util.List;

import ledweb.model.Category;
import ledweb.model.Product;
import ledweb.model.Spec;
import ledweb.model.User;

public interface ISpecOperation {
	public Spec selectSpecByID(int id);
	public int addSpec(Spec spec);
	public int updateSpec(Spec spec);
	public int deleteSpec(int id);
	public List<Spec> selectAllSpec();
}
