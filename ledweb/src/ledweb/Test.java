package ledweb;

import java.io.Reader;
import java.util.List;

import ledweb.model.Category;
import ledweb.model.Order;
import ledweb.model.Product;
import ledweb.model.ProductSpec;
import ledweb.model.ProductType;
import ledweb.model.Spec;
import ledweb.model.Student;
import ledweb.model.Teacher;
import ledweb.model.Type;
import ledweb.model.User;
import ledweb.model.mapper.ICategoryOperation;
import ledweb.model.mapper.IOrderOperation;
import ledweb.model.mapper.IProductOperation;
import ledweb.model.mapper.IProductSpecOperation;
import ledweb.model.mapper.IProductTypeOperation;
import ledweb.model.mapper.ISpecOperation;
import ledweb.model.mapper.ITypeOperation;
import ledweb.model.mapper.IUserOperation;
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
			// IProductOperation productOperation = session
			// .getMapper(IProductOperation.class);
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
//			Type c = new Type();	
//			c.setTypeName("type name");
//			ITypeOperation catOperation = session
//					.getMapper(ITypeOperation.class);
//			System.out.println(catOperation.addType(c));
//			session.commit();
//			System.out.println("new ID:" + c.getTypeID());
//			ProductType c = new ProductType();	
//			c.setProductID(1);
//			c.setTypeID(2);
//			IProductTypeOperation catOperation = session
//					.getMapper(IProductTypeOperation.class);
//			System.out.println(catOperation.addProductType(c));
//			session.commit();
//			System.out.println("new ID:" + c.getProductTypeID());
			
			
			Order c = new Order();	
			c.setProductID(1);
			c.setQuantity(123);
			c.setTypeID(2);
			c.setUserID(1);
			
			IUserOperation catOperation = session
					.getMapper(IUserOperation.class);
			System.out.println(catOperation.deleteUser(1));
			session.commit();
			System.out.println("new ID:" + c.getOrderID());
			
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

		} finally {
			session.close();
		}
	}
}
