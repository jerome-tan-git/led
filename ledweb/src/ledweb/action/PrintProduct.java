package ledweb.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.log4j.Logger;

import ledweb.Util;
import ledweb.model.Product;
import ledweb.model.ProductType;
import ledweb.model.Type;

import com.opensymphony.xwork2.ActionSupport;

public class PrintProduct extends ActionSupport {
	private String productID;
	private Product product;
	private HashMap<String, List<Type>> typeMap;
	Logger log = Logger.getLogger(PrintProduct.class);

	public HashMap<String, List<Type>> getTypeMap() {
		return typeMap;
	}

	public void setTypeMap(HashMap<String, List<Type>> typeMap) {
		this.typeMap = typeMap;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public String getProductID() {
		return productID;
	}

	public void setProductID(String productID) {
		this.productID = productID;
	}

	@Override
	public String execute() throws Exception {
		typeMap = new HashMap<String, List<Type>>();
		if (this.getProductID() != null
				&& !this.getProductID().trim().equals("")) {
			Product p = Util.getProductByID(this.productID);
			if (p != null) {
				this.setProduct(p);

				for (ProductType type : product.getTypes()) {
					List<Type> typeList = new ArrayList<Type>();
					if (this.typeMap.containsKey(type.getType().getTypeGroup()
							.getGroupName().trim())) {
						typeList = this.typeMap.get(type.getType()
								.getTypeGroup().getGroupName().trim());
					}
					typeList.add(type.getType());
					this.typeMap.put(type.getType().getTypeGroup()
							.getGroupName().trim(), typeList);
					log.warn(type.getType().getTypeGroup().getGroupName());
				}
			}

		}
		return SUCCESS;
	}
}
