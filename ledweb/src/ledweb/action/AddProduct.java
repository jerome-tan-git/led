package ledweb.action;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import ledweb.ModelSessionFactory;
import ledweb.model.Product;
import ledweb.model.Spec;
import ledweb.model.Type;
import ledweb.model.mapper.IProductOperation;

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
	private String productID;

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

	public String execute() {
		if ("submit".equals(this.getIsSubmit())) {
			System.out.println(this.product.getProductName());
			System.out.println("Spec size: " + this.specs.size() + " | "
					+ this.specs.get(0).getSpecName());
		}
		if (this.productID != null) {
			SqlSession session = ModelSessionFactory.getSession().openSession();
			try {
				IProductOperation po = session.getMapper(IProductOperation.class);
				this.setProduct(po.selectProductByID(Integer.parseInt(this.productID)));
				System.out.println("Product Name:" + po.selectProductByID(Integer.parseInt(this.productID)).getProductName());
				
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
