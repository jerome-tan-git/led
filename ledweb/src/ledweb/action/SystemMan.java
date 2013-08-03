package ledweb.action;

import java.io.File;
import java.util.List;

import ledweb.ModelSessionFactory;
import ledweb.model.Category;
import ledweb.model.mapper.ICategoryOperation;
import ledweb.model.mapper.IProductOperation;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

public class SystemMan extends ActionSupport {

	private static final long serialVersionUID = 7594136658917087204L;

	private File categoryImage;
	private String categoryImageContentType;
	private String categoryImageFileName;
	private String categoryName;
	private String categoryDesc;
	private String submitCategory;
	private String categoryID;
	private List<Category> categories;
	private String orgCategoryImagePath;


	public String getOrgCategoryImagePath() {
		return orgCategoryImagePath;
	}

	public void setOrgCategoryImagePath(String orgCategoryImagePath) {
		this.orgCategoryImagePath = orgCategoryImagePath;
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
			ICategoryOperation ico = slqSession.getMapper(ICategoryOperation.class);
			List<Category> categories = ico.selectAllCategories();
			this.setCategories(categories);
			if(this.categoryID!=null)
			{
				for (Category cat: categories)
				{
					if ((cat.getCategoryID()+"").equals(this.getCategoryID().trim()))
					{
						this.categoryName = cat.getCategoryName();
						this.categoryID = cat.getCategoryID()+"";
						this.categoryDesc = cat.getReserve1();
						this.orgCategoryImagePath = cat.getReserve2();
						logger.warn("Image path: " + cat.getReserve2());
						break;
					}
				}
			}
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

	private void editCategory() {

	}

	@Override
	public String execute() {
		this.init();
		logger.warn("submit: " + this.submitCategory);
		if (this.submitCategory != null && "1".equals(this.submitCategory)) {
			this.editCategory();
		}
		return SUCCESS;
	}
}
