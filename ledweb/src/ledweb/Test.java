package ledweb;

import java.io.Reader;
//import java.util.ArrayList;
//import java.util.List;
//import java.util.UUID;

import java.util.ArrayList;
import java.util.List;

import ledweb.model.HomeImage;
//import ledweb.model.Category;
//import ledweb.model.ContactUs;
import ledweb.model.LEDbenefits;
import ledweb.model.Order;
import ledweb.model.OrderType;
import ledweb.model.Product;
import ledweb.model.ProductSpec;
import ledweb.model.ProductType;
import ledweb.model.Spec;
import ledweb.model.Student;
import ledweb.model.Teacher;
import ledweb.model.Trade;
import ledweb.model.Type;
import ledweb.model.TypeGroup;
import ledweb.model.User;
import ledweb.model.UserTrade;
import ledweb.model.mapper.ICategoryOperation;
import ledweb.model.mapper.IContactUsOperation;
import ledweb.model.mapper.IHomeImageOperation;
import ledweb.model.mapper.ILedBenefitsOperation;
import ledweb.model.mapper.IOrderOperation;
import ledweb.model.mapper.IOrderTypeOperation;
import ledweb.model.mapper.IProductOperation;
import ledweb.model.mapper.IProductSpecOperation;
import ledweb.model.mapper.IProductTypeOperation;
import ledweb.model.mapper.ISpecOperation;
import ledweb.model.mapper.ITradeOperation;
import ledweb.model.mapper.ITypeGroupOperation;
import ledweb.model.mapper.ITypeOperation;
import ledweb.model.mapper.IUserOperation;
import ledweb.model.mapper.IUserTradeOperation;
import ledweb.model.mapper.TeacherMapper;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Test {
	private static SqlSessionFactory sqlSessionFactory;
	private static Reader reader;

	static {
		try {
			reader = Resources.getResourceAsReader("Configuration.xml");
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static SqlSessionFactory getSession() {
		return sqlSessionFactory;
	}

	public static void main(String[] args) {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			// User user = (User) session.selectOne(
			// "ledweb.model.UserMapper.selectUserByID", 1);
			// System.out.println(user.getUserAddress());
			// System.out.println(user.getUserName());

			// TeacherMapper teacherMapper = session
			// .getMapper(TeacherMapper.class);
			// Teacher teacher = teacherMapper.one2many(1);
			// List<Student> students = teacher.getStudents();
			// System.out.println(teacher.getId());
			// System.out.println(teacher.getName());
			// for (Student student : students) {
			// System.out.println(student.getId());
			// System.out.println(student.getName());}

			// IUserOperation userOperation = session
			// .getMapper(IUserOperation.class);
			// User user = userOperation.selectUserByID(1);
			// System.out.println(user.getUserAddress());
			// System.out.println(user.getUserName());

			// IUserOperation userOperation = session
			// .getMapper(IUserOperation.class);
			// List<User> users = userOperation.selectUsers("summer");
			// for (User user : users) {
			// System.out.println(user.getId() + ":" + user.getUserName()
			// + ":" + user.getUserAddress());
			// }

			// User user = new User();
			// user.setUserName("MyTest1");
			// user.setAddress("Address1");
			// user.setPassword("Password1");
			// user.setPhone("123456");
			// user.setReserve1("");
			// user.setReserve2("");
			// user.setReserve3("");
			// Product p = new Product();
			// p.setProductName("ProductName");
			// p.setProductDesc("productDesc");
			// p.setCategoryID(1);
			// p.setProductImage("ProductImage");
			// p.setProductID(UUID.randomUUID().toString());
			// IProductTypeOperation productOperation = session
			// .getMapper(IProductTypeOperation.class);
			// // productOperation.addProduct(p);
			// productOperation.deleteAllProductType("1");
			// session.commit();
			// session.commit();
			// ProductType products =
			// productOperation.selectProductTypeByIDWithDetail(1);
			// System.out.println(products.getTypeName());
			// for (ProductType p : products)
			// {
			// System.out.println(p.getTypeID());
			// }
			// System.out.println(productOperation.addProduct(p));
			// session.commit();
			// System.out.println("new ID:"+p.getProductID());
			// Category c = new Category();
			// c.setCategoryName("cat name");
			//
			// ICategoryOperation catOperation = session
			// .getMapper(ICategoryOperation.class);
			// System.out.println(catOperation.addCategory(c));
			// session.commit();
			// System.out.println("new ID:"+c.getCategoryID());
			// Spec c = new Spec();
			// c.setSpecName("spec name");
			//
			// ISpecOperation catOperation = session
			// .getMapper(ISpecOperation.class);
			// System.out.println(catOperation.addSpec(c));
			// session.commit();
			// System.out.println("new ID:"+c.getSpecID());
			// ProductSpec c = new ProductSpec();
			// c.setProductID(1);
			// c.setSpecID(2);
			// c.setSpecValue("1111");
			//
			// IProductSpecOperation catOperation = session
			// .getMapper(IProductSpecOperation.class);
			// System.out.println(catOperation.addProductSpec(c));
			// session.commit();
			// System.out.println("new ID:"+c.getProductSpecID());
			// Type c = new Type();
			// c.setTypeName("type name");
			// ITypeOperation catOperation = session
			// .getMapper(ITypeOperation.class);
			// System.out.println(catOperation.addType(c));
			// session.commit();
			// System.out.println("new ID:" + c.getTypeID());
			// ProductType c = new ProductType();
			// c.setProductID(1);
			// c.setTypeID(2);
			// IProductTypeOperation catOperation = session
			// .getMapper(IProductTypeOperation.class);
			// System.out.println(catOperation.addProductType(c));
			// session.commit();
			// System.out.println("new ID:" + c.getProductTypeID());

			// Order c = new Order();
			// c.setProductID(1);
			// c.setQuantity(123);
			// c.setTypeID(2);
			// c.setUserID(1);
			//
			// IHomeImageOperation o = session
			// .getMapper(IHomeImageOperation.class);
			// List<HomeImage> images = new ArrayList<HomeImage>();
			// for (int i = 0; i < 5; i++) {
			// HomeImage x = new HomeImage();
			// x.setImageURL(i+"");
			// o.addHomeImage(x);
			// }
			// o.realDeleteImage();
			// List<HomeImage> a1 = o.selectAllImageURL();
			// System.out.println(a1);
			// session.commit();
			// List<Product> p = o.selectProductsByCategoryID(1);
			// System.out.println(p.size());
			// ICategoryOperation co =
			// session.getMapper(ICategoryOperation.class);
			// List<Category> c = co.selectAllCategories();
			// System.out.println(c.size());
			// System.out.println(p.getType().getTypeName());
			// System.out.println(p.getType().getReserve1());

			// System.out.println(catOperation.deleteUser(1));
			// session.commit();
			// System.out.println("new ID:" + c.getOrderID());

			// List<ProductSpec> specs = new ArrayList<ProductSpec>();
			// ProductSpec ps = new ProductSpec();
			// ps.setProductID(10);
			// ps.setSpecID(1);
			// ps.setSpecValue("aaaa");
			// specs.add(ps);
			// ProductSpec ps1 = new ProductSpec();
			// ps1.setProductID(10);
			// ps1.setSpecID(2);
			// ps1.setSpecValue("bbb");
			// specs.add(ps1);
			// IProductSpecOperation pso =
			// session.getMapper(IProductSpecOperation.class);
			// System.out.println(pso.batchAddProductSpec(specs));
			// session.commit();

			// ISpecOperation iso = session.getMapper(ISpecOperation.class);
			// List<Spec> specs1 = iso.selectAllSpec();
			// System.out.println(specs1.size());
			// ICategoryOperation ico =
			// session.getMapper(ICategoryOperation.class);
			// List<Category> cat = ico.selectAllCategories();
			// System.out.println(cat);
			// ProductSpec ps1 = new

			// IUserOperation userOperation = session
			// .getMapper(IUserOperation.class);
			// User user = userOperation.selectUserByID(4);
			// user.setUserAddress("google");
			// userOperation.updateUser(user);
			// session.commit();
			// IUserOperation userOperation = session
			// .getMapper(IUserOperation.class);
			// userOperation.deleteUser(5);
			// session.commit();
			// ITypeOperation ito = session.getMapper(ITypeOperation.class);
			// System.out.println(ito.selectTypesByTypeGroup("aaaa").size());
			// ITypeGroupOperation ITGO =
			// session.getMapper(ITypeGroupOperation.class);
			// System.out.println(ITGO.selectAllTypeGroups());
			// TypeGroup tg = new TypeGroup();
			// tg.setGroupID("aaaa");
			// tg.setGroupName("groupName");
			//
			// ITGO.addTypeGroup(tg);
			// session.commit();

			// ContactUs conus = new ContactUs();
			// conus.setArticle("lkjhgh");
			// IContactUsOperation ico =
			// session.getMapper(IContactUsOperation.class);
			// // ico.addContactUs(conus);
			// ico.updateContactUs(conus);
			// session.commit();

			// LEDbenefits ledBenefits = new LEDbenefits();
			// ledBenefits.setArticle("EEDDadd function");
			// // ledBenefits.setBenefit1("12345");
			// System.out.print(ledBenefits.toString() + "\n");
			//
			// ILedBenefitsOperation ledBenefitsOperation = session
			// .getMapper(ILedBenefitsOperation.class);
			// // ledBenefitsOperation.addLEDbenefits(ledBenefits);
			// ledBenefitsOperation.updateLEDbenefits(ledBenefits);
			// // ledBenefitsOperation.deleteLEDbenefits(0);
			// // ledBenefitsOperation.selectLEDbenefitsByID();
			// session.commit();
			// IUserOperation userOperation = session
			// .getMapper(IUserOperation.class);
			// User user = userOperation.selectUserByID(4);
			// user.setUserAddress("google");
			// userOperation.updateUser(user);
			// session.commit();
			// IUserOperation userOperation = session
			// .getMapper(IUserOperation.class);
			// userOperation.deleteUser(5);
			// session.commit();
			//
			
			
			
//			ITradeOperation ito = session.getMapper(ITradeOperation.class);
//			List<Trade> a = ito.selectAllTrade();
//			System.out.println(a);
//			List<Trade> a = ito.
//			for (int i = 0; i < 5; i++) {
//				Trade xxx = new Trade();
//				xxx.setTradeName("aaaa");
//				ito.addTrade(xxx);
//				session.commit();
//			}
			// IOrderTypeOperation ioto =
			// session.getMapper(IOrderTypeOperation.class);
			// List<OrderType> xx = new ArrayList<OrderType>();
			// for(int i=0;i<10;i++)
			// {
			// OrderType a = new OrderType();
			// // a.setOrderTypeID("a");
			// a.setOrderID("b");
			// a.setTypeID("c");
			// xx.add(a);
			// }
			// ioto.batchAddOrderType(xx);
			// System.out.println(ioto.selectOrderTypesByOrderID("b"));
			// session.commit();
			// IOrderOperation ioo = session.getMapper(IOrderOperation.class);
			// Order o = new Order();
			// o.setOrderID("a");
			// o.setMessage("message");
			// o.setOrderDate("orderDate");
			// o.setProductID("productID");
			// o.setQuantity(1);
			// ioo.addOrder(o);
			// session.commit();
			//
			// String a = null;
			// if (a == null || "".equals(a.trim())) {
			// System.out.println("1");
			// }
//			IUserTradeOperation i = session.getMapper(IUserTradeOperation.class);
//			List<UserTrade> x = new ArrayList<UserTrade>();
//			UserTrade ut = new UserTrade();
//			ut.setTradeID("a");
//			ut.setUserID("b");
//			x.add(ut);
//			
//			UserTrade ut1 = new UserTrade();
//			ut1.setTradeID("a1");
//			ut1.setUserID("b1");
//			x.add(ut1);
//			i.batchAddUserTrade(x);
			
			
			IProductOperation ipo = session.getMapper(IProductOperation.class);
			long start = System.currentTimeMillis();
			List<Product> a = ipo.selectAllProducts();
			System.out.println(System.currentTimeMillis() - start);
			
			
			long start1 = System.currentTimeMillis();
			List<Product> a1 = ipo.selectAllProducts();
			System.out.println(System.currentTimeMillis() - start1);
			session.commit();
			
		} finally {
			session.close();
		}
	}
}
