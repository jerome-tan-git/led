package ledweb.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

import javax.servlet.http.Cookie;

import ledweb.ModelSessionFactory;
import ledweb.Util;
import ledweb.model.Category;
import ledweb.model.Order;
import ledweb.model.OrderType;
import ledweb.model.Product;
import ledweb.model.ProductSpec;
import ledweb.model.ProductType;
import ledweb.model.Trade;
import ledweb.model.Type;
import ledweb.model.TypeGroup;
import ledweb.model.User;
import ledweb.model.UserTrade;
import ledweb.model.mapper.ICategoryOperation;
import ledweb.model.mapper.IOrderOperation;
import ledweb.model.mapper.IOrderTypeOperation;
import ledweb.model.mapper.IProductOperation;
import ledweb.model.mapper.IUserOperation;
import ledweb.model.mapper.IUserTradeOperation;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class ProductDetail extends ActionSupport {
	private Product product;
	private String productID;
	private HashMap<String, List<Type>> typeMap;
	private List<Product> featuredProducts;
	private List<Product> relatedProducts;
	private List<Category> categories;
	private String addCompare;
	private List<Product> comparedProduct = new ArrayList<Product>();
	private List<Category> allCategories;
	private String[] addOrder;
	private String selectedTypes;
	private String selectedProduct;
	private List<Trade> trades;
	private String orderPhone;
	private String orderPostCode;
	private String orderAdd;
	private String orderState;
	private String orderSuburb;
	private String orderLName;
	private String orderFName;
	private String orderMessage;
	private String[] trade;
	private List<UserTrade> userTrade;
	private List<String> useTradeID;
	private User user;

	public List<String> getUseTradeID() {
		return useTradeID;
	}

	public void setUseTradeID(List<String> useTradeID) {
		this.useTradeID = useTradeID;
	}

	public List<UserTrade> getUserTrade() {
		return userTrade;
	}

	public void setUserTrade(List<UserTrade> userTrade) {
		this.userTrade = userTrade;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getOrderPhone() {
		return orderPhone;
	}

	public void setOrderPhone(String orderPhone) {
		this.orderPhone = orderPhone;
	}

	public String getOrderPostCode() {
		return orderPostCode;
	}

	public void setOrderPostCode(String orderPostCode) {
		this.orderPostCode = orderPostCode;
	}

	public String getOrderState() {
		return orderState;
	}

	public void setOrderState(String orderState) {
		this.orderState = orderState;
	}

	public String getOrderSuburb() {
		return orderSuburb;
	}

	public void setOrderSuburb(String orderSuburb) {
		this.orderSuburb = orderSuburb;
	}

	public String getOrderLName() {
		return orderLName;
	}

	public void setOrderLName(String orderLName) {
		this.orderLName = orderLName;
	}

	public String getOrderFName() {
		return orderFName;
	}

	public void setOrderFName(String orderFName) {
		this.orderFName = orderFName;
	}

	public String getOrderMessage() {
		return orderMessage;
	}

	public void setOrderMessage(String orderMessage) {
		this.orderMessage = orderMessage;
	}

	public String[] getTrade() {
		return trade;
	}

	public void setTrade(String[] trade) {
		this.trade = trade;
	}

	public List<Trade> getTrades() {
		return trades;
	}

	public void setTrades(List<Trade> trades) {
		this.trades = trades;
	}

	public String getSelectedTypes() {
		return selectedTypes;
	}

	public void setSelectedTypes(String selectedTypes) {
		this.selectedTypes = selectedTypes;
	}

	public String getSelectedProduct() {
		return selectedProduct;
	}

	public void setSelectedProduct(String selectedProduct) {
		this.selectedProduct = selectedProduct;
	}

	public String[] getAddOrder() {
		return addOrder;
	}

	public void setAddOrder(String[] addOrder) {
		this.addOrder = addOrder;
	}

	public List<Category> getAllCategories() {
		return allCategories;
	}

	public void setAllCategories(List<Category> allCategories) {
		this.allCategories = allCategories;
	}

	public List<Product> getComparedProduct() {
		return comparedProduct;
	}

	public void setComparedProduct(List<Product> comparedProduct) {
		this.comparedProduct = comparedProduct;
	}

	public String getAddCompare() {
		return addCompare;
	}

	public void setAddCompare(String addCompare) {
		this.addCompare = addCompare;
	}

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	public List<Product> getRelatedProducts() {
		return relatedProducts;
	}

	public void setRelatedProducts(List<Product> relatedProducts) {
		this.relatedProducts = relatedProducts;
	}

	Logger log = Logger.getLogger(ProductDetail.class);

	public String getProductID() {
		return productID;
	}

	public HashMap<String, List<Type>> getTypeMap() {
		return typeMap;
	}

	public List<Product> getFeaturedProducts() {
		return featuredProducts;
	}

	public void setFeaturedProducts(List<Product> featuredProducts) {
		this.featuredProducts = featuredProducts;
	}

	public void setTypeMap(HashMap<String, List<Type>> typeMap) {
		this.typeMap = typeMap;
	}

	public void setProductID(String productID) {
		this.productID = productID;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	private Product selectProduct() {
		Product product = null;
		typeMap = new HashMap<String, List<Type>>();
		SqlSession session = ModelSessionFactory.getSession().openSession();
		try {
			IProductOperation IPO = session.getMapper(IProductOperation.class);
			product = IPO.selectProductByID(this.getProductID());

			// log.warn(product.getTypes().size());
			for (ProductType type : product.getTypes()) {
				List<Type> typeList = new ArrayList<Type>();
				if (this.typeMap.containsKey(type.getType().getTypeGroup()
						.getGroupName().trim())) {
					typeList = this.typeMap.get(type.getType().getTypeGroup()
							.getGroupName().trim());
				}
				typeList.add(type.getType());
				this.typeMap.put(type.getType().getTypeGroup().getGroupName()
						.trim(), typeList);
				// log.warn(type.getType().getTypeGroup().getGroupName());
			}

			// for (ProductSpec pspec : product.getSpecs()) {
			// log.warn(pspec.getSpec().getSpecName() + " : "
			// + pspec.getSpecValue());
			// }
			// get similar product

			List<Product> categoryProduct = IPO
					.selectProductsByCategoryID(product.getCategoryID());
			this.relatedProducts = new ArrayList<Product>();
			for (Product prod : categoryProduct) {
				if (!prod.getProductID().equals(product.getProductID())) {
					this.relatedProducts.add(prod);
				}
			}

			// get categories
			ICategoryOperation ICO = session
					.getMapper(ICategoryOperation.class);
			this.setCategories(ICO.selectAllCategories());

		} catch (Exception e) {
			log.error(e.getMessage());
		}
		return product;
	}

	@Override
	public String execute() {
		long start = System.currentTimeMillis();
		this.allCategories = Util.getAllCategories();
		log.warn("cat: " + (System.currentTimeMillis() - start));
		this.trades = Util.getAllTrades();
		log.warn("trade: " + (System.currentTimeMillis() - start));
		this.setProductID(ServletActionContext.getRequest().getParameter(
				"productID"));
		log.warn("feature : " + (System.currentTimeMillis() - start));
		this.featuredProducts = Util.getFeaturedProducts();
		log.warn("info: " + (System.currentTimeMillis() - start));
		Cookie[] cookies = ServletActionContext.getRequest().getCookies();
		String userIDStr = null;
		if (cookies == null) {
			String userID = UUID.randomUUID().toString();
			Cookie userCookie = new Cookie("userID", userID);
			userCookie.setMaxAge(60 * 60 * 24 * 365);
			ServletActionContext.getResponse().addCookie(userCookie);
			userIDStr = userID;
		} else {
			for (Cookie c : cookies) {
				if (c.getName().trim().equals("userID")) {
					userIDStr = c.getValue();
				}
			}
			if (userIDStr == null || userIDStr.trim().equals("")) {
				String userID = UUID.randomUUID().toString();
				Cookie userCookie = new Cookie(ServletActionContext
						.getRequest().getParameter("userID"), userID);
				userCookie.setMaxAge(60 * 60 * 24 * 365);
				ServletActionContext.getResponse().addCookie(userCookie);
				userIDStr = userID;
			}
		}
//		log.warn("cookie: " + (System.currentTimeMillis() - start)); 
//		log.warn("user trade: " + this.getUserTrade());
		if (ServletActionContext.getRequest().getParameterMap().get("addOrder") != null) {
			String orderTypes = ServletActionContext.getRequest().getParameter(
					"selectedTypes");
			String orderQuantity = ServletActionContext.getRequest()
					.getParameter("productQuantity");

			String orderFName = ServletActionContext.getRequest().getParameter(
					"orderFName");
			String message = ServletActionContext.getRequest().getParameter(
					"orderMessage");
			String quantity = ServletActionContext.getRequest().getParameter(
					"productQuantity");
			String orderLName = ServletActionContext.getRequest().getParameter(
					"orderLName");
			String orderSuburb = ServletActionContext.getRequest()
					.getParameter("orderSuburb");
			String orderState = ServletActionContext.getRequest().getParameter(
					"orderState");
			String orderAdd = ServletActionContext.getRequest().getParameter(
					"orderAdd");
			String orderPostCode = ServletActionContext.getRequest()
					.getParameter("orderPostCode");
			String orderPhone = ServletActionContext.getRequest().getParameter(
					"orderPhone");
			String[] trade = ServletActionContext.getRequest()
					.getParameterValues("trade");

			String oID = UUID.randomUUID().toString();
			Order o = new Order();
			o.setOrderID(oID);
			o.setProductID(this.getProductID());
			o.setMessage(message);
			o.setOrderDate(System.currentTimeMillis() + "");
			try {
				o.setQuantity(Integer.parseInt(quantity));
			} catch (Exception e) {
				o.setQuantity(1);
			}
			o.setUserID(userIDStr);
			ArrayList<OrderType> os = new ArrayList<OrderType>();
			if (orderTypes != null && !orderTypes.trim().equals("")) {
				String[] orderTypesArr = orderTypes.split(",");

				for (String s : orderTypesArr) {
					if (!s.trim().equals("")) {
						OrderType ot = new OrderType();
						ot.setOrderID(oID);
						ot.setTypeID(s);
						os.add(ot);
					}
				}
			}
			User u = new User();
			u.setUserID(userIDStr);
			u.setAddress(orderAdd);
			u.setPhone(orderPhone);
			u.setUserName(orderFName);
			u.setReserve1(orderLName);// last name
			u.setReserve2(orderPostCode);// post code
			u.setReserve3(orderSuburb);// order Suburb
			u.setReserve4(orderState);// order State
			List<UserTrade> utList = new ArrayList<UserTrade>();
			if (trade != null) {

				for (String trad : trade) {
					UserTrade ut = new UserTrade();
					ut.setTradeID(trad);
					ut.setUserID(userIDStr);
					utList.add(ut);
				}

			}

			SqlSession session = ModelSessionFactory.getSession().openSession();
			IOrderOperation ioo = session.getMapper(IOrderOperation.class);
			ioo.addOrder(o);
			if (os.size() > 0) {
				IOrderTypeOperation ioto = session
						.getMapper(IOrderTypeOperation.class);
				ioto.batchAddOrderType(os);
			}

			IUserOperation iuo = session.getMapper(IUserOperation.class);
			iuo.addUser(u);
			
			if (utList.size() > 0) {
				IUserTradeOperation iuto = session
						.getMapper(IUserTradeOperation.class);
				iuto.realDeleteUserTrade(userIDStr);
				iuto.batchAddUserTrade(utList);
			}

			session.commit();
			return "cart"; 
		}
//		log.warn("before get product1: " + (System.currentTimeMillis() - start)); 
		this.setUser(Util.getUserByID(userIDStr));
		this.setUserTrade(Util.getTradesByUserID(userIDStr));
		this.setUseTradeID(Util.getTradesIDsByUserID(this.getUserTrade()));
//		log.warn("before get product: " + (System.currentTimeMillis() - start));
		if (this.getProductID() != null
				&& !this.getProductID().trim().equals("")) {

			this.product = this.selectProduct();
			if (this.product == null) {
				return ERROR;
			} else {
				Set<String> tmpIDs = new HashSet<String>();
				if (cookies != null) {
					for (Cookie c : cookies) {
						String key = c.getName();
						String value = c.getValue();
						if (!tmpIDs.contains(key)) {
							if (value.trim().toLowerCase().equals("compare")) {
								this.comparedProduct.add(Util
										.getProductByID(key));
								tmpIDs.add(key);
							}
						}
					}
				}
				if (ServletActionContext.getRequest()
						.getParameter("addCompare") != null
						&& !ServletActionContext.getRequest()
								.getParameter("addCompare").trim().equals("")) {

					if (!tmpIDs.contains(ServletActionContext.getRequest()
							.getParameter("addCompare"))) {
						this.comparedProduct.add(Util
								.getProductByID(ServletActionContext
										.getRequest()
										.getParameter("addCompare")));
					}
					Cookie addCompare = new Cookie(ServletActionContext
							.getRequest().getParameter("addCompare"), "compare");
					addCompare.setMaxAge(60 * 60 * 24 * 14);
					ServletActionContext.getResponse().addCookie(addCompare);

				}
				if (ServletActionContext.getRequest().getParameter(
						"deleteCompare") != null
						&& !ServletActionContext.getRequest()
								.getParameter("deleteCompare").trim()
								.equals("")) {
					String deleteID = ServletActionContext.getRequest()
							.getParameter("deleteCompare").trim();
					Cookie cookie = new Cookie(deleteID, null);
					cookie.setMaxAge(0);

					ServletActionContext.getResponse().addCookie(cookie);
					int removeIndex = -1;
					for (int i = 0; i < this.getComparedProduct().size(); i++) {
						Product x = this.getComparedProduct().get(i);
						if (x.getProductID().equals(deleteID)) {
							removeIndex = i;
							break;
						}
					}
					if (removeIndex != -1) {
						this.getComparedProduct().remove(removeIndex);
					}
					log.warn("delete ID: " + deleteID);
				}
//				log.warn("after get product: " + (System.currentTimeMillis() - start));
				return SUCCESS;
			}
		} else {
			return ERROR;
		}
	}
}
