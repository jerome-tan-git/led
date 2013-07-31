package ledweb.action;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.struts2.ServletActionContext;

import ledweb.ModelSessionFactory;
import ledweb.model.Product;
import ledweb.model.Spec;
import ledweb.model.Type;
import ledweb.model.mapper.IProductOperation;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.Validations;
import com.opensymphony.xwork2.validator.annotations.ValidatorType;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;

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
	private List<String> specIDs;
	private String productID;
	private File newImage;
	private String newImageContentType;
	private String newImageFileName;
	private String imageFileName;
	private String savePath;
	private String fileType;

	
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

	public String getSavePath() {
		return ServletActionContext.getServletContext().getRealPath(savePath);
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
//			if (this.getNewImage() != null) {
//				if (this.getFileType().toLowerCase()
//						.indexOf(this.getNewImageContentType().toLowerCase()) == -1) {
//					System.out.println(this.getFileType().toLowerCase());
//					System.out.println(this.getNewImageContentType()
//							.toLowerCase());
//					this.addFieldError("newImage", this.getText(
//							"struts.messages.error.content.type.not.allowed",
//							new String[] { this.getNewImageFileName() }));
//				}
//			}
			if (this.product.getProductName()==null || "".equals(this.product.getProductName()))
			{
				this.addFieldError("product.productName", this.getText(
					"struts.messages.error.field.is.empty",
					new String[] { "product name" }));
			}
			
			if (this.product.getPrice() ==0)
			{
				this.addFieldError("product.price", this.getText(
					"struts.messages.error.field.is.empty",
					new String[] { "product price" }));
			}
		}
	}

	@Override
	public String execute() {
		
		if ("submit".equals(this.getIsSubmit())) {// click submit button
			System.out.println("Has error: " + this.hasFieldErrors());
			System.out.println(this.product.getProductName());
			System.out.println("Spec size: " + this.getSpecIDs().size()); 
//			System.out.println("Image file get name: "
//					+ this.getNewImage().getName());
//			System.out.println("File name:" + this.getNewImageFileName());
//			System.out
//					.println("Content Type: " + this.getNewImageContentType());
			System.out.println(this.getSavePath());
		}
		if (this.productID != null) {
			SqlSession session = ModelSessionFactory.getSession().openSession();
			try {
				IProductOperation po = session
						.getMapper(IProductOperation.class);
				this.setProduct(po.selectProductByID(Integer
						.parseInt(this.productID)));
				System.out
						.println("Product Name:"
								+ po.selectProductByID(
										Integer.parseInt(this.productID))
										.getProductName());

			} finally {
				session.close();

			}
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
