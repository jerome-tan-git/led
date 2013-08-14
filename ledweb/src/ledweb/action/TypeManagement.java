package ledweb.action;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import ledweb.ModelSessionFactory;
import ledweb.model.Category;
import ledweb.model.Spec;
import ledweb.model.Type;
import ledweb.model.TypeGroup;
import ledweb.model.mapper.ICategoryOperation;
import ledweb.model.mapper.ISpecOperation;
import ledweb.model.mapper.ITypeGroupOperation;
import ledweb.model.mapper.ITypeOperation;

import com.opensymphony.xwork2.ActionSupport;

public class TypeManagement extends ActionSupport{	
	private String model ="type management";

	private List<Type> types;
	private String typeID;
	private String typeName;
	private List<TypeGroup> typeGroups;
	private String typeGroupID;
	public String getTypeGroupID() {
		return typeGroupID;
	}

	public void setTypeGroupID(String typeGroupID) {
		this.typeGroupID = typeGroupID;
	}


	private Logger logger = Logger.getLogger(SystemMan.class);
	
	public List<Type> getTypes() {
		return types;
	}

	public void setTypes(List<Type> types) {
		this.types = types;
	}

	public String getTypeID() {
		return typeID;
	}

	public void setTypeID(String typeID) {
		this.typeID = typeID;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	
	public List<TypeGroup> getTypeGroups() {
		return typeGroups;
	}

	public void setTypeGroups(List<TypeGroup> typeGroups) {
		this.typeGroups = typeGroups;
	}

	private void init() {
		SqlSession slqSession = ModelSessionFactory.getSession().openSession();
		try {
						// get types
			ITypeOperation ito = slqSession.getMapper(ITypeOperation.class);
			List<Type> types = ito.selectAllTypes();
			if (this.typeID != null) {
				for (Type type : types) {
					if (type.getTypeID().trim().equals(this.getTypeID())) {
						this.setTypeName(type.getTypeName());
						break;
					}
				}
			}
			this.setTypes(types);
			
			
			// get type groups
			ITypeGroupOperation ITGO = slqSession.getMapper(ITypeGroupOperation.class);
			List<TypeGroup> typeGroups = ITGO.selectAllTypeGroups();
			this.setTypeGroups(typeGroups);
			logger.warn(typeGroups);
			
			
		} catch (Exception e) {
			logger.error(e.getMessage());
		} finally {
			slqSession.close();

		}
	}
	
	
	@Override
	public String execute() {
		this.init();
		return SUCCESS;
	}
}
