package ledweb;

import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.UUID;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import ledweb.model.Category;
import ledweb.model.Product;
import ledweb.model.Trade;
import ledweb.model.User;
import ledweb.model.UserTrade;
import ledweb.model.mapper.ICategoryOperation;
import ledweb.model.mapper.IProductOperation;
import ledweb.model.mapper.ITradeOperation;
import ledweb.model.mapper.IUserOperation;
import ledweb.model.mapper.IUserTradeOperation;

public class Util {
	static Logger log = Logger.getLogger(Util.class);

	public static String getUUID() {
		return UUID.randomUUID().toString();
	}

	public static List<Category> getAllCategories() {
		SqlSession session = ModelSessionFactory.getSession().openSession();
		List<Category> allCategories = new ArrayList<Category>();
		try {
			ICategoryOperation ICO = session
					.getMapper(ICategoryOperation.class);
			allCategories = ICO.selectAllCategories();
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		return allCategories;
	}

	public static Product getProductByID(String _ID) {
		Product product = null;
		SqlSession session = ModelSessionFactory.getSession().openSession();
		try {
			IProductOperation ipo = session.getMapper(IProductOperation.class);
			product = ipo.selectProductByID(_ID);
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		return product;
	}

	public static List<Trade> getAllTrades() {
		List<Trade> result = new ArrayList<Trade>();
		SqlSession session = ModelSessionFactory.getSession().openSession();
		try {
			ITradeOperation ito = session.getMapper(ITradeOperation.class);
			result = ito.selectAllTrade();
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		return result;
	}

	public static List<Product> getFeaturedProducts() {
		List<Product> result = new ArrayList<Product>();
		SqlSession session = ModelSessionFactory.getSession().openSession();
		try {
			IProductOperation ipo = session.getMapper(IProductOperation.class);
			result = ipo.selectFeaturedProducts();
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		return result;
	}

	public static String getProperties(String _key) {
		String result = "";
		String classPath = new Util().getClass().getClassLoader()
				.getResource("").getPath();

		Properties prop = new Properties();
		try {
			classPath = classPath.replaceAll("%20", " ");

			FileInputStream fis = new FileInputStream(classPath
					+ "./config.properties");
			prop.load(fis);
			result = prop.getProperty(_key);
		} catch (Exception e) {

		}
		return result;
	}

	public static String replaceNoImage(String _imagePath) {
		String result = _imagePath;
		if (_imagePath == null) {
			result = "./images/no.jpg";
		} else if (_imagePath.trim().equals("")) {
			result = "./images/no.jpg";
		} else {
			if (!new File(Util.getProperties("IMAGE_PATH") + _imagePath)
					.exists()) {
				result = "./images/no.jpg";
			}
		}
		return result;
	}

	public static List<UserTrade> getTradesByUserID(String _userID) {
		SqlSession session = ModelSessionFactory.getSession().openSession();
		IUserTradeOperation iuto = session.getMapper(IUserTradeOperation.class);
		return iuto.selectByUserID(_userID);
		// return ito.s
	}

	public static List<String> getTradesIDsByUserID(String _userID) {
		List<UserTrade> userTrade = Util.getTradesByUserID(_userID);
		List<String> result = new ArrayList<String>();
		if (userTrade != null) {
			for (UserTrade ut:userTrade)
			{
				result.add(ut.getTradeID());
			}
		}

		return result;
	}
	public static List<String> getTradesIDsByUserID(List<UserTrade> userTrade) {
		List<String> result = new ArrayList<String>();
		if (userTrade != null) {
			for (UserTrade ut:userTrade)
			{
				result.add(ut.getTradeID());
			}
		}

		return result;
	}
	

	public static User getUserByID(String _userID) {
		SqlSession session = ModelSessionFactory.getSession().openSession();
		IUserOperation iuo = session.getMapper(IUserOperation.class);
		return iuo.selectUserByID(_userID);
	}

	public static void main(String[] args) {
		File x = new File("./config.properties");

		System.out.println(x.exists());
		System.out.println(Util.getProperties("IMAGE_PATH"));
		;
	}
}
