package ledweb.action;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import ledweb.ModelSessionFactory;
import ledweb.MyCache;
import ledweb.model.Category;
import ledweb.model.Spec;
import ledweb.model.Type;
import ledweb.model.mapper.ICategoryOperation;
import ledweb.model.mapper.IProductOperation;
import ledweb.model.mapper.IProductSpecOperation;
import ledweb.model.mapper.IProductTypeOperation;
import ledweb.model.mapper.ISpecOperation;
import ledweb.model.mapper.ITypeOperation;

import org.apache.commons.io.FileUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class SystemMan extends ActionSupport {

	private static final long serialVersionUID = 7594136658917087204L;
	private String module = "system management";
	
	public String getModule() {
		return module;
	}

	private File categoryImage;
	private String categoryImageContentType;
	private String categoryImageFileName;
	private String categoryName;
	private String categoryDesc;
	private String submitCategory;
	private String categoryID;
	private String savePath;
	private List<Category> categories;
	private List<Spec> specs;
	private List<Type> types;
	private String orgCategoryImagePath;
	private String specName;
	private String specID;
	private String typeID;
	private String deleteCategoryID;
	private String deleteSpecID;
	private String deleteTypeID;
	private String typeSubmit;
	private String specSubmit;
	private String typeName;

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

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

	public void setTypeSubmit(String typeSubmit) {
		this.typeSubmit = typeSubmit;
	}

	public void setSpecSubmit(String specSubmit) {
		this.specSubmit = specSubmit;
	}

	public List<Spec> getSpecs() {
		return specs;
	}

	public void setSpecs(List<Spec> specs) {
		this.specs = specs;
	}

	public String getSpecID() {
		return specID;
	}

	public void setSpecID(String specID) {
		this.specID = specID;
	}

	public String getSpecName() {
		return specName;
	}

	public void setSpecName(String specName) {
		this.specName = specName;
	}

	public String getOrgCategoryImagePath() {
		return orgCategoryImagePath;
	}

	public String getSavePath() {
		return savePath;
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

	public void setOrgCategoryImagePath(String orgCategoryImagePath) {
		this.orgCategoryImagePath = orgCategoryImagePath;
	}

	public String getRealSavePath() {
		return ServletActionContext.getServletContext().getRealPath(savePath);
	}

	private Logger logger = Logger.getLogger(SystemMan.class);

	public File getCategoryImage() {
		return categoryImage;
	}

	public void setSubmitCategory(String submitCategory) {
		this.submitCategory = submitCategory;
	}

	public void setCategoryImage(File categoryImage) {
		this.categoryImage = categoryImage;
	}

	public String getCategoryImageContentType() {
		return categoryImageContentType;
	}

	public void setCategoryImageContentType(String categoryImageContentType) {
		this.categoryImageContentType = categoryImageContentType;
	}

	public String getCategoryImageFileName() {
		return categoryImageFileName;
	}

	public void setCategoryImageFileName(String categoryImageFileName) {
		this.categoryImageFileName = categoryImageFileName;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getCategoryDesc() {
		return categoryDesc;
	}

	public void setCategoryDesc(String categoryDesc) {
		this.categoryDesc = categoryDesc;
	}

	public String getCategoryID() {
		return categoryID;
	}

	public void setCategoryID(String categoryID) {
		this.categoryID = categoryID;
	}

	private void init() {
		SqlSession slqSession = ModelSessionFactory.getSession().openSession();
		try {
			ICategoryOperation ico = slqSession
					.getMapper(ICategoryOperation.class);
			List<Category> categories = ico.selectAllCategories();
			this.setCategories(categories);
			if (this.categoryID != null) {
				for (Category cat : categories) {
					if ((cat.getCategoryID() + "").equals(this.getCategoryID()
							.trim())) {
						this.categoryName = cat.getCategoryName();
						this.categoryID = cat.getCategoryID() + "";
						this.categoryDesc = cat.getReserve1();
						this.orgCategoryImagePath = cat.getReserve2();
						logger.warn(cat);
						break;
					}
				}
			}
			// get specs
			ISpecOperation iso = slqSession.getMapper(ISpecOperation.class);
			List<Spec> specs = iso.selectAllSpec();
			if (this.specID != null) {
				for (Spec spec : specs) {
					if (spec.getSpecID().trim().equals(this.getSpecID())) {
						this.setSpecName(spec.getSpecName());
						break;
					}
				}
			}
			this.setSpecs(specs);

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
		} catch (Exception e) {
			logger.error(e.getMessage());
		} finally {
			slqSession.close();

		}
	}

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	private void editCategory(String categoryID) {
		Category cat = new Category();
		cat.setCategoryID(categoryID);
		cat.setCategoryName(this.categoryName);
		cat.setReserve1(this.categoryDesc);
		String newFileName = "";
		if (this.getCategoryImage() != null) {
			newFileName = System.currentTimeMillis() + "_"
					+ this.getCategoryImageFileName();
			File savefile = new File(new File(this.getRealSavePath()),
					newFileName);
			if (!savefile.getParentFile().exists()) {
				savefile.getParentFile().mkdirs();
			}
			try {
				FileUtils.copyFile(this.getCategoryImage(), savefile);
				logger.warn(this.getSavePath() + "/" + newFileName);
			} catch (IOException e) {
				logger.error(e.getMessage());
			}
		}
		if (this.getCategoryImage() != null) {
			if (new File(this.getRealSavePath() + File.separator + newFileName)
					.exists()) {
				cat.setReserve2(this.getSavePath() + "/" + newFileName);
			}
		} else if (this.getOrgCategoryImagePath() != null) {
			cat.setReserve2(this.getOrgCategoryImagePath());
		}

		SqlSession sqlSession = ModelSessionFactory.getSession().openSession();
		try {
			ICategoryOperation ico = sqlSession
					.getMapper(ICategoryOperation.class);
			ico.realDeleteCategory(categoryID);
			ico.addCategory(cat);
			sqlSession.commit();
		} catch (Exception e) {
			logger.error(e.getMessage());
		} finally {
			sqlSession.close();
		}
	}

	private void editSpec(String _specID) {
		Spec spec = new Spec();
		spec.setSpecID(_specID);
		spec.setSpecName(this.specName);
		SqlSession sqlSession = ModelSessionFactory.getSession().openSession();
		try {
			ISpecOperation iso = sqlSession.getMapper(ISpecOperation.class);
			iso.realDeleteSpec(_specID);
			iso.addSpec(spec);
			sqlSession.commit();
		} catch (Exception e) {
			logger.error(e.getMessage());
		} finally {
			sqlSession.close();
		}

	}

	private void editType(String _typeID) {
		Type type = new Type();
		type.setTypeID(_typeID);
		type.setTypeName(this.typeName);
		SqlSession sqlSession = ModelSessionFactory.getSession().openSession();
		try {
			ITypeOperation ito = sqlSession.getMapper(ITypeOperation.class);
			ito.realDeleteType(_typeID);
			ito.addType(type);
			sqlSession.commit();
		} catch (Exception e) {
			logger.error(e.getMessage());
		} finally {
			sqlSession.close();
		}
	}

	public String getDeleteCategoryID() {
		return deleteCategoryID;
	}

	public void setDeleteCategoryID(String deleteCategoryID) {
		this.deleteCategoryID = deleteCategoryID;
	}

	public String getDeleteSpecID() {
		return deleteSpecID;
	}

	public void setDeleteSpecID(String deleteSpecID) {
		this.deleteSpecID = deleteSpecID;
	}

	public String getDeleteTypeID() {
		return deleteTypeID;
	}

	public void setDeleteTypeID(String deleteTypeID) {
		this.deleteTypeID = deleteTypeID;
	}

	@Override
	public String execute() {
		if (this.submitCategory != null && "1".equals(this.submitCategory)) {
			if (this.categoryID == null || "".equals(this.categoryID.trim())) {
				this.categoryID = UUID.randomUUID().toString();
			}
			logger.warn(this.categoryName);
			this.editCategory(this.categoryID);
		} else if (this.specSubmit != null
				&& this.specSubmit.trim().equals("1")) {
			if (this.specID == null || "".equals(this.specID.trim())) {
				this.specID = UUID.randomUUID().toString();
			}
			this.editSpec(this.specID);
		} else if (this.typeSubmit != null
				&& this.typeSubmit.trim().equals("1")) {
			if (this.typeID == null || "".equals(this.typeID.trim())) {
				this.typeID = UUID.randomUUID().toString();
			}
			this.editType(this.typeID);
					
		} else if (this.deleteCategoryID != null
				&& !this.deleteCategoryID.trim().equals("")) {
			SqlSession sqlSession = ModelSessionFactory.getSession().openSession();
			logger.warn("delete category ID:" + this.deleteCategoryID);
			try
			{
				ICategoryOperation ico = sqlSession.getMapper(ICategoryOperation.class);
				ico.realDeleteCategory(this.deleteCategoryID);
				sqlSession.commit();
			} catch (Exception e) {
				logger.error(e.getMessage());
			} finally {
				sqlSession.close();
			}
		}else if (this.deleteSpecID != null
				&& !this.deleteSpecID.trim().equals("")) {
			SqlSession sqlSession = ModelSessionFactory.getSession().openSession();
			try
			{
				ISpecOperation iso = sqlSession.getMapper(ISpecOperation.class);
				iso.realDeleteSpec(deleteSpecID);
				IProductSpecOperation ipso = sqlSession.getMapper(IProductSpecOperation.class);
				ipso.deleteProductSpecBySpecID(deleteSpecID);
				sqlSession.commit();
			} catch (Exception e) {
				logger.error(e.getMessage());
			} finally {
				sqlSession.close();
			}
		}else if (this.deleteTypeID != null
				&& !this.deleteTypeID.trim().equals("")) {
			SqlSession sqlSession = ModelSessionFactory.getSession().openSession();
			try
			{
				ITypeOperation ito = sqlSession.getMapper(ITypeOperation.class);
				ito.realDeleteType(deleteTypeID);
				IProductTypeOperation ipto = sqlSession.getMapper(IProductTypeOperation.class);
				ipto.deleteProductTypeByTypeID(deleteTypeID);
				sqlSession.commit();
			} catch (Exception e) {
				logger.error(e.getMessage());
			} finally {
				sqlSession.close();
			}
		}

		this.init();
		MyCache.refresh();
		return SUCCESS;
	}
}
