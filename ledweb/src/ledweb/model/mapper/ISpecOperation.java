package ledweb.model.mapper;

import java.util.List;

import ledweb.model.Category;
import ledweb.model.Product;
import ledweb.model.Spec;
import ledweb.model.User;

public interface ISpecOperation {
	public Spec selectSpecByID(String specID);
	public int addSpec(Spec spec);
	public int updateSpec(Spec spec);
	public int deleteSpec(String specID);
	public int realDeleteSpec(String specID);
	public List<Spec> selectAllSpec();
}
