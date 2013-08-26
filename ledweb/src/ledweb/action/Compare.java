package ledweb.action;



import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;

import ledweb.Util;
import ledweb.model.Product;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class Compare extends ActionSupport{
	private Logger log = Logger.getLogger(Home.class);
	private List<Product> compareProduct = new ArrayList<Product>();
	
	public List<Product> getCompareProduct() {
		return compareProduct;
	}

	public void setCompareProduct(List<Product> compareProduct) {
		this.compareProduct = compareProduct;
	}

	@Override
	public String execute() {	
		Cookie[] cookie = ServletActionContext.getRequest().getCookies();
		for (Cookie c: cookie)
		{
			if (c.getValue()!=null)
			{
				if(c.getValue().toLowerCase().trim().equals("compare"))
				{
					this.compareProduct.add(Util.getProductByID(c.getName()));
				}
			}
		}
		return SUCCESS;
	}
}
