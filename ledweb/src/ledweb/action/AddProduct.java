package ledweb.action;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import ledweb.ModelSessionFactory;
import ledweb.model.Category;
import ledweb.model.Product;
import ledweb.model.ProductSpec;
import ledweb.model.ProductType;
import ledweb.model.Spec;
import ledweb.model.Type;
import ledweb.model.mapper.ICategoryOperation;
import ledweb.model.mapper.IProductOperation;
import ledweb.model.mapper.ISpecOperation;
import ledweb.model.mapper.ITypeOperation;

import org.apache.commons.io.FileUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class AddProduct extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 4573207127956494966L;

	private Product product;
	private List<Spec> specs;
	private List<Type> types;
	private String isSubmit;
	private List<Spec> allSpecs;
	private List<Type> allTypes;
	private List<Category> allCategories;
	
	private List<String> specIDs;
	private List<String> specValues;
	
	private Map<Integer, String> specValueMap;
	private List<String> selectedTypes;
	private String productID;
	private File newImage;
	private String newImageContentType;
	private String newImageFileName;
	private String imageFileName;
	private String savePath;
	private String fileType;
	private Integer selectedCategory;
	
	
	public Integer getSelectedCategory() {
		return selectedCategory;
	}


	public void setSelectedCategory(Integer selectedCategory) {
		this.selectedCategory = selectedCategory;
	}


	public List<Category> getAllCategories() {
		return allCategories;
	}

	
	public List<String> getSelectedTypes() {
		return selectedTypes;
	}
	public void setSelectedTypes(List<String> selectedTypes) {
		this.selectedTypes = selectedTypes;
	}
	public Map<Integer, String> getSpecValueMap() {
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
			if (this.product.getProductName() == null
					|| "".equals(this.product.getProductName())) {
				this.addFieldError("product.productName", this.getText( 
						"struts.messages.error.field.is.empty",
						new String[] { "product name" }));
			}

			if (this.product.getPrice() == 0) {
				this.addFieldError("product.price", this.getText(
						"struts.messages.error.field.is.empty",
						new String[] { "product price" }));
			}
		}
	}

	private void updateProduct() {
		SqlSession session = ModelSessionFactory.getSession().openSession();
		try {
			IProductOperation po = session.getMapper(IProductOperation.class);
			this.setProduct(po.selectProductByID(Integer
					.parseInt(this.productID)));
			System.out.println("Product Name:"
					+ po.selectProductByID(Integer.parseInt(this.productID))
							.getProductName());
			this.specValueMap = new HashMap<Integer, String>();
			for (ProductSpec spec: this.product.getSpecs())
			{
				this.specValueMap.put(spec.getSpecID(), spec.getSpecValue());
			}
			this.selectedTypes = new ArrayList<String>();
			for (ProductType type: this.product.getTypes())
			{
				this.selectedTypes.add(type.getTypeID()+"");
			}
		} finally {
			session.close();

		}

	}

	private void newProduct() {
		System.out.println("Has error: " + this.hasFieldErrors());
		System.out.println(this.product.getProductName());
		if (this.specIDs != null)
		{
			this.specValueMap = new HashMap<Integer, String>();
			List<ProductSpec> productSpec = new ArrayList<ProductSpec>();
			for (int i=0;i<this.getSpecIDs().size();i++)
			{
				this.specValueMap.put(Integer.parseInt(this.getSpecIDs().get(i)), this.getSpecValues().get(i));
				ProductSpec ps = new ProductSpec();
			}
			
			System.out.println("Spec size: " + this.getSpecIDs().size());
			System.out.println("Spec value size: " + this.getSpecValues().size());
		}
		if (this.selectedTypes != null)
		{
			System.out.println("Selected type size: " + this.selectedTypes.size());
		}
		if (this.getNewImage() != null) {
			String newFileName = System.currentTimeMillis() + "_"
					+ this.getNewImageFileName(); 
			File savefile = new File(new File(this.getRealSavePath()), 
					newFileName);
			if (!savefile.getParentFile().exists()) {
				savefile.getParentFile().mkdirs();
			}
			try {
				FileUtils.copyFile(this.getNewImage(), savefile);
				System.out.println(this.getSavePath() + "/" + newFileName);

			} catch (IOException e) {

			}
			System.out.println("Image file get name: "
					+ this.getNewImage().getName());
			System.out.println("File name:" + this.getNewImageFileName());
			System.out
					.println("Content Type: " + this.getNewImageContentType());
		}
	}

	private void init() {
		SqlSession session = ModelSessionFactory.getSession().openSession();
		try {
			ISpecOperation iso = session.getMapper(ISpecOperation.class);
			this.setAllSpecs(iso.selectAllSpec());
			ITypeOperation ito = session.getMapper(ITypeOperation.class);
			this.setAllTypes(ito.selectAllTypes());
			ICategoryOperation ico = session.getMapper(ICategoryOperation.class);
			this.setAllCategories(ico.selectAllCategories());
		} catch (Exception e) {
 
		} finally {
			session.close();

		}
	}

	public void setAllCategories(List<Category> allCategories) {
		this.allCategories = allCategories;
	}


	@Override
	public String execute() {
		this.init();
		if (this.productID != null) {
			this.updateProduct();
		} else if ("submit".equals(this.getIsSubmit())) {
			this.newProduct();
		}

		return SUCCESS;
	}

	public String getIsSubmit() {
		return isSubmit;
	}

	public void setIsSubmit(String isSubmit) {
		this.isSubmit = isSubmit;
	}

}
