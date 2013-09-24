package ledweb.action;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import ledweb.ModelSessionFactory;
import ledweb.MyCache;
import ledweb.Util;
import ledweb.model.Category;
import ledweb.model.Spec;
import ledweb.model.Type;
import ledweb.model.TypeGroup;
import ledweb.model.mapper.ICategoryOperation;
import ledweb.model.mapper.ISpecOperation;
import ledweb.model.mapper.ITypeGroupOperation;
import ledweb.model.mapper.ITypeOperation;

import com.opensymphony.xwork2.ActionSupport;

public class TypeManagement extends ActionSupport {
	private String model = "type management";
	private TypeGroup selectedTypeGroup;
	private Type selectType;
	private String typeName;
	private List<TypeGroup> typeGroups;
	private String typeGroupID;
	private List<Type> selectedTypes;
	private List<Type> types;
	private String typeID;
	private String typeGroupName;
	private String submitTypeGroup;
	private String deleteTypeGroupID;
	private String submitType;
	private String selectedTypeGroupID;
	private String deleteTypeID;
	private String module = "type";
	private Logger log = Logger.getLogger(TypeManagement.class);
	public String getModule() {
		return module;
	}

	public void setModule(String module) {
		this.module = module;
	}

	public String getDeleteTypeID() {
		return deleteTypeID;
	}

	public void setDeleteTypeID(String deleteTypeID) {
		this.deleteTypeID = deleteTypeID;
	}

	public String getSelectedTypeGroupID() {
		return selectedTypeGroupID;
	}

	public void setSelectedTypeGroupID(String selectedTypeGroupID) {
		this.selectedTypeGroupID = selectedTypeGroupID;
	}

	public String getSubmitType() {
		return submitType;
	}

	public void setSubmitType(String submitType) {
		this.submitType = submitType;
	}

	public String getDeleteTypeGroupID() {
		return deleteTypeGroupID;
	}

	public void setDeleteTypeGroupID(String deleteTypeGroupID) {
		this.deleteTypeGroupID = deleteTypeGroupID;
	}

	public String getSubmitTypeGroup() {
		return submitTypeGroup;
	}

	public void setSubmitTypeGroup(String submitTypeGroup) {
		this.submitTypeGroup = submitTypeGroup;
	}

	public String getTypeGroupName() {
		return typeGroupName;
	}

	public void setTypeGroupName(String typeGroupName) {
		this.typeGroupName = typeGroupName;
	}

	public TypeGroup getSelectedTypeGroup() {
		return selectedTypeGroup;
	}

	public void setSelectedTypeGroup(TypeGroup selectedTypeGroup) {
		this.selectedTypeGroup = selectedTypeGroup;
	}

	public Type getSelectType() {
		return selectType;
	}

	public void setSelectType(Type selectType) {
		this.selectType = selectType;
	}

	public List<Type> getSelectedTypes() {
		return selectedTypes;
	}

	public void setSelectedTypes(List<Type> selectedTypes) {
		this.selectedTypes = selectedTypes;
	}

	public String getTypeGroupID() {
		return typeGroupID;
	}

	public void setTypeGroupID(String typeGroupID) {
		this.typeGroupID = typeGroupID;
	}

	private Logger logger = Logger.getLogger(TypeManagement.class);

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
		String groupID = ServletActionContext.getRequest().getParameter("typeGroupID");
		this.setTypeGroupID(groupID);
//		String groupID = 
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
			ITypeGroupOperation ITGO = slqSession
					.getMapper(ITypeGroupOperation.class);
			List<TypeGroup> typeGroups = ITGO.selectAllTypeGroups();
			this.setTypeGroups(typeGroups);

			// get selected types
			
			
			if (this.getTypeGroupID() != null
					&& !this.getTypeGroupID().trim().equals("")) {
				ITypeOperation ito_1 = slqSession
						.getMapper(ITypeOperation.class);
				this.selectedTypes = ito_1.selectTypesByTypeGroup(this
						.getTypeGroupID());
				for (TypeGroup typeGroup : this.getTypeGroups()) {
					if (typeGroup.getGroupID().equals(this.getTypeGroupID())) {
						this.selectedTypeGroup = typeGroup;
						break;
					}

				}
				if (this.getTypeID() != null
						&& !this.getTypeID().trim().equals("")) {

					for (Type type : this.getTypes()) {
						if (type.getTypeID().equals(this.getTypeID())) {
							logger.warn("this1.getTypeID:" + this.selectType);
							this.selectType = type;
							break;
						}
					}
				}
			}

			// get selected type

			// get select typegroup

		} catch (Exception e) {
			// e.printStackTrace();
			logger.error(e.getMessage());
		} finally {
			slqSession.close();

		}
	}

	private void typeGroupModify() {
		if (this.getTypeGroupID() == null
				|| this.getTypeGroupID().trim().equals("")) {
			this.setTypeGroupID(Util.getUUID());
		}
		TypeGroup typeGroup = new TypeGroup();
		typeGroup.setGroupID(this.getTypeGroupID());
		typeGroup.setGroupName(this.getTypeGroupName());
		typeGroup.setIsDelete(0);
		typeGroup.setReserve1("");
		typeGroup.setReserve2("");
		typeGroup.setReserve3("");
		logger.warn(this.getTypeGroupID());
		SqlSession sqlSession = ModelSessionFactory.getSession().openSession();
		try {
			ITypeGroupOperation ITGO = sqlSession
					.getMapper(ITypeGroupOperation.class);
			ITGO.updateTypeGroup(typeGroup);
			sqlSession.commit();
		} catch (Exception e) {
			logger.warn(e.getMessage());
		}

	}

	private void typeModify() {
		if (this.getTypeID() == null
				|| this.getTypeID().trim().equals("")) {
			this.setTypeID(Util.getUUID());
		}
		Type type = new Type();
		type.setTypeID(this.getTypeID());
		type.setTypeName(this.getTypeName());
		type.setReserve1(this.getSelectedTypeGroupID());
		type.setReserve2("");
		type.setReserve3("");
		logger.warn(this.getTypeID());
		SqlSession sqlSession = ModelSessionFactory.getSession().openSession();
		try {
			ITypeOperation ITO = sqlSession
					.getMapper(ITypeOperation.class);
			ITO.updateType(type);
			sqlSession.commit();
		} catch (Exception e) {
			logger.warn(e.getMessage());
		}

	}

	private void deleteTypeGroup() {
		SqlSession sqlSession = ModelSessionFactory.getSession().openSession();
		try {
			ITypeGroupOperation ITGO = sqlSession
					.getMapper(ITypeGroupOperation.class);
			ITGO.realDeleteTypeGroup(this.getDeleteTypeGroupID());
			sqlSession.commit();
		} catch (Exception e) {
			logger.warn(e.getMessage());
		}
	}

	
	private void deleteType()
	{
		SqlSession sqlSession = ModelSessionFactory.getSession().openSession();
		try {
			ITypeOperation ITO = sqlSession
					.getMapper(ITypeOperation.class);
			ITO.realDeleteType(this.getDeleteTypeID());
			sqlSession.commit();
		} catch (Exception e) {
			logger.warn(e.getMessage());
		}
	}
	
	
	@Override
	public String execute() {
		if (this.getSubmitTypeGroup() != null
				&& this.getSubmitTypeGroup().trim().equals("1")) {
			this.typeGroupModify();
		} else if (this.getDeleteTypeGroupID() != null
				&& !this.getDeleteTypeGroupID().trim().equals("")) {
			this.deleteTypeGroup();
		} else if (this.getSubmitType() != null
				&& !this.getSubmitType().trim().equals("")) {
			this.typeModify();
		} else if (this.getDeleteTypeID()!=null && !this.getDeleteTypeID().trim().equals(""))
		{
			this.deleteType();
		}
		this.init();
		MyCache.refresh();
		return SUCCESS;
	}
}
