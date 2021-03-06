package ledweb.action;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import ledweb.ModelSessionFactory;
import ledweb.MyCache;
import ledweb.model.Category;
import ledweb.model.Product;
import ledweb.model.ProductSpec;
import ledweb.model.ProductType;
import ledweb.model.Spec;
import ledweb.model.Type;
import ledweb.model.TypeGroup;
import ledweb.model.mapper.ICategoryOperation;
import ledweb.model.mapper.IProductOperation;
import ledweb.model.mapper.IProductSpecOperation;
import ledweb.model.mapper.IProductTypeOperation;
import ledweb.model.mapper.ISpecOperation;
import ledweb.model.mapper.ITypeGroupOperation;
import ledweb.model.mapper.ITypeOperation;

import org.apache.commons.io.FileUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class AddProduct extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 4573207127956494966L;
	private static Logger logger = Logger.getLogger(AddProduct.class);
	private Product product;
	private List<Spec> specs;
	private List<Type> types;
	private String isSubmit;
	private List<Spec> allSpecs;
	private List<Type> allTypes;
	private List<Category> allCategories;
	private String productDesc;
	private List<String> specIDs;
	private List<String> specValues;
	private String module = "product management";
	private String oldImage;
	private String productPrice;
	private String featuredProduct;
	private Map<String, String> specValueMap;
	private List<TypeGroup> allTypeGroups;
	private List<String> selectedTypes;
	private List<String> testSelectTypes;
	private String productID;
	private File newImage;
	private String productName;
	private String newImageContentType;
	private String newImageFileName;
	private String imageFileName;
	private String savePath;
	private String fileType;
	private String selectedCategory;

	public String getFeaturedProduct() {
		return featuredProduct;
	}

	public void setFeaturedProduct(String featuredProduct) {
		this.featuredProduct = featuredProduct;
	}

	public String getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}

	public List<TypeGroup> getAllTypeGroups() {
		return allTypeGroups;
	}

	public void setAllTypeGroups(List<TypeGroup> allTypeGroups) {
		this.allTypeGroups = allTypeGroups;
	}

	public String getModule() {
		return module;
	}

	public String getProductDesc() {
		return productDesc;
	}

	public void setProductDesc(String productDesc) {
		this.productDesc = productDesc;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public List<String> getTestSelectTypes() {
		return testSelectTypes;
	}

	public void setTestSelectTypes(List<String> testSelectTypes) {
		this.testSelectTypes = testSelectTypes;
	}

	public String getOldImage() {
		return oldImage;
	}

	public void setOldImage(String oldImage) {
		this.oldImage = oldImage;
	}

	public List<Category> getAllCategories() {
		return allCategories;
	}

	public List<String> getSelectedTypes() {
		return selectedTypes;
	}

	public String getSelectedCategory() {
		return selectedCategory;
	}

	public void setSelectedCategory(String selectedCategory) {
		this.selectedCategory = selectedCategory;
	}

	public void setSelectedTypes(List<String> selectedTypes) {
		this.selectedTypes = selectedTypes;
	}

	public Map<String, String> getSpecValueMap() {
		return specValueMap;
	}

	public List<String> getSpecValues() {
		return specValues;
	}

	public void setSpecValues(List<String> specValues) {
		this.specValues = specValues;
	}

	public List<String> getSpecIDs() {
		return specIDs;
	}

	public void setSpecIDs(List<String> specIDs) {
		this.specIDs = specIDs;
	}

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	public String getRealSavePath() {
		return ServletActionContext.getServletContext().getRealPath(savePath);
	}

	public String getSavePath() {
		return savePath;
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

	public File getNewImage() {
		return newImage;
	}

	public void setNewImage(File newImage) {
		this.newImage = newImage;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public Product getProduct() {
		return product;
	}

	public String getProductID() {
		return productID;
	}

	public void setProductID(String productID) {
		this.productID = productID;
	}

	public List<Spec> getAllSpecs() {
		return allSpecs;
	}

	public String getNewImageContentType() {
		return newImageContentType;
	}

	public void setNewImageContentType(String newImageContentType) {
		this.newImageContentType = newImageContentType;
	}

	public String getNewImageFileName() {
		return newImageFileName;
	}

	public void setNewImageFileName(String newImageFileName) {
		this.newImageFileName = newImageFileName;
	}

	public void setAllSpecs(List<Spec> allSpecs) {
		this.allSpecs = allSpecs;
	}

	public List<Type> getAllTypes() {
		return allTypes;
	}

	public void setAllTypes(List<Type> allTypes) {
		this.allTypes = allTypes;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public List<Spec> getSpecs() {
		return specs;
	}

	public void setSpecs(List<Spec> specs) {
		this.specs = specs;
	}

	public List<Type> getTypes() {
		return types;
	}

	public void setTypes(List<Type> types) {
		this.types = types;
	}

	@Override
	public void validate() {
		if ("submit".equals(this.getIsSubmit())) {
			if (this.getNewImage() != null) {
				if (this.getFileType().toLowerCase()
						.indexOf(this.getNewImageContentType().toLowerCase()) == -1) {
					System.out.println(this.getFileType().toLowerCase());
					System.out.println(this.getNewImageContentType()
							.toLowerCase());
					this.addFieldError("newImage", this.getText(
							"struts.messages.error.content.type.not.allowed",
							new String[] { this.getNewImageFileName() }));
				}
			}
			if (this.getProductName() == null
					|| "".equals(this.getProductName())) {
				this.addFieldError("product.productName", this.getText(
						"struts.messages.error.field.is.empty",
						new String[] { "product name" }));
			}

		}
	}

	private void showProduct() {
		SqlSession session = null;
		try {
			session = ModelSessionFactory.getSession().openSession();
			IProductOperation po = session.getMapper(IProductOperation.class);
			this.setProduct(po.selectProductByID(this.productID));
			// logger.warn("Get product ID: " + this.productID);
			// logger.warn("Get product: " + this.getProduct());

			this.specValueMap = new HashMap<String, String>();

			for (ProductSpec spec : this.product.getSpecs()) {
				this.specValueMap.put(spec.getSpecID(), spec.getSpecValue());
			}
			this.selectedTypes = new ArrayList<String>();
			if (this.testSelectTypes == null) {
				this.testSelectTypes = new ArrayList<String>();
			}
			for (ProductType type : this.product.getTypes()) {
				this.selectedTypes.add(type.getTypeID() + "");

				// logger.warn("add type: " + type.getTypeID());
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
		} finally {
			if (session !=null)
			{
			session.close();
			}	
		}

	}

	private void newProduct(String _newProductID) {
		this.product = new Product();
		this.product.setProductDesc(this.getProductDesc());
		this.product.setProductName(this.getProductName());
		if (this.getFeaturedProduct() == null) {
			this.product.setReserve1("0");
		} else {
			this.product.setReserve1("1");
		}
		try {
			this.product.setPrice(Float.parseFloat(this.getProductPrice()));
		} catch (Exception e) {
			this.product.setPrice(0f);
		}
		if (this.specIDs != null) {
			this.specValueMap = new HashMap<String, String>();
			for (int i = 0; i < this.getSpecIDs().size(); i++) {
				this.specValueMap.put(this.getSpecIDs().get(i), this
						.getSpecValues().get(i));
			}

			System.out.println("Spec size: " + this.getSpecIDs().size());
			System.out.println("Spec value size: "
					+ this.getSpecValues().size());
		}

		String newFileName = "";
		if (this.getNewImage() != null) {
			newFileName = System.currentTimeMillis() + "_"
					+ this.getNewImageFileName();
			File savefile = new File(new File(this.getRealSavePath()),
					newFileName);
			if (!savefile.getParentFile().exists()) {
				savefile.getParentFile().mkdirs();
			}
			try {
				FileUtils.copyFile(this.getNewImage(), savefile);
				logger.warn("Image path: " + savefile.getAbsolutePath());
			} catch (IOException e) {
				logger.error(e.getMessage());
			}
		}

		// logger.warn("Test selected types: " + this.testSelectTypes.size());

		this.getProduct().setProductID(_newProductID);
		this.getProduct().setCategoryID(this.selectedCategory);
		// logger.warn("Select category: " + this.selectedCategory);
		// logger.warn("Real image path: " + this.getRealSavePath()
		// + File.separator + newFileName);
		if (this.getNewImage() != null) {
			if (new File(this.getRealSavePath() + File.separator + newFileName)
					.exists()) {
				this.getProduct().setProductImage(
						this.getSavePath() + "/" + newFileName);
			}
		} else if (this.getOldImage() != null) {
			this.getProduct().setProductImage(this.getOldImage());
		}
		// logger.warn("Product desc: " + this.getProduct().getProductDesc());
		List<ProductSpec> pss = new ArrayList<ProductSpec>();
		if (this.getSpecIDs() != null) {
			for (int i = 0; i < this.getSpecIDs().size(); i++) {
				ProductSpec ps = new ProductSpec();
				ps.setProductID(_newProductID);
				ps.setSpecID(this.getSpecIDs().get(i));
				ps.setSpecValue(this.getSpecValues().get(i));
				pss.add(ps);
			}
		}
		List<ProductType> pts = new ArrayList<ProductType>();
		if (this.testSelectTypes != null) {
			for (String typeID : this.testSelectTypes) {
				ProductType pt = new ProductType();
				pt.setProductID(_newProductID);
				pt.setPrice(this.getProduct().getPrice());
				pt.setTypeID(typeID);
				pts.add(pt);

			}
		} 
		this.setSelectedTypes(this.testSelectTypes);

		// Insert into DB
		SqlSession sqlSession = null;
		try {
			// Product
			sqlSession = ModelSessionFactory.getSession().openSession();
			IProductOperation ipo = sqlSession
					.getMapper(IProductOperation.class);
			ipo.realDeleteProduct(_newProductID);
			ipo.addProduct(this.getProduct());

			sqlSession.commit();
			// Product Spec

			IProductSpecOperation ipso = sqlSession
					.getMapper(IProductSpecOperation.class);
			ipso.deleteAllProductSpec(_newProductID);
			logger.warn("new product ID: " + _newProductID);
			if (pss.size() > 0) {
				ipso.batchAddProductSpec(pss);
			}
			sqlSession.commit();

			// Product type
			IProductTypeOperation ipto = sqlSession
					.getMapper(IProductTypeOperation.class);
			ipto.deleteAllProductType(_newProductID);
			ipto.batchAddProductType(pts);
			// logger.warn(pts);
			sqlSession.commit();

		} catch (Exception e) {
			logger.error(e.getMessage());
		} finally {
			if (sqlSession !=null)
			{
				sqlSession.close();
			}
		}
	}

	private void init() {
		SqlSession session = null;
		try {
			session = ModelSessionFactory.getSession().openSession();
			ISpecOperation iso = session.getMapper(ISpecOperation.class);
			this.setAllSpecs(iso.selectAllSpec());
			ITypeOperation ito = session.getMapper(ITypeOperation.class);
			this.setAllTypes(ito.selectAllTypes());
			ICategoryOperation ico = session
					.getMapper(ICategoryOperation.class);
			this.setAllCategories(ico.selectAllCategories());

			ITypeGroupOperation ITGO = session
					.getMapper(ITypeGroupOperation.class);
			this.setAllTypeGroups(ITGO.selectAllTypeGroups());

		} catch (Exception e) {
			logger.error("Add product init: " + e.getMessage());
		} finally {
			if (session != null)
			{
				session.close();
			}

		}
	}

	public void setAllCategories(List<Category> allCategories) {
		this.allCategories = allCategories;
	}

	@Override
	public String execute() {
		if ("submit".equals(this.getIsSubmit())) {
			logger.warn("product title: " + this.productName);
			if (this.productID == null || "".equals(this.productID.trim())) {
				this.productID = UUID.randomUUID().toString();
			}
			this.newProduct(this.productID);
		}
		if (this.productID != null && !this.productID.trim().equals("")) {
			this.showProduct();
		}

		this.init();
		MyCache.refresh();
		return SUCCESS;
	}

	public String getIsSubmit() {
		return isSubmit;
	}

	public void setIsSubmit(String isSubmit) {
		this.isSubmit = isSubmit;
	}

}
