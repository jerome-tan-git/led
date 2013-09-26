package ledweb;

import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Random;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

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
		return MyCache.getInstance().getAllCategories();
	}

	public static Product getProductByID(String _ID) {
		return MyCache.getInstance().getProductByID(_ID);
	}

	public static List<Trade> getAllTrades() {
		return TradeCache.getInstance().getAllTrade();
	}

	public static List<Product> getFeaturedProducts() {
		return MyCache.getInstance().getFeaturedProducts();
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
		System.out.println("get Image:" + _imagePath);
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

	
	public static String getImageBackgroundURL(HttpServletRequest request, HttpServletResponse response, ServletContext context)
	{
		String imagePath = "./images/login-bg_0.png";
		System.out.println("Image: 1 : " + request.getSession().getAttribute("image"));
		System.out.println("Image: 2 : " + request.getSession().getAttribute("image"));  
		if (request.getSession().getAttribute("image") == null
				|| request.getSession().getAttribute("image").toString().trim()
						.equals("")) {
			File imageFolder = new File(context.getRealPath("/images"));
			System.out.println("a: "+imageFolder.getAbsolutePath()); 
			File[] listFiles = null;
			List<File> fileArray = new ArrayList<File>();
			if (imageFolder.isDirectory()) {
				listFiles = imageFolder.listFiles();
			}
			if (listFiles != null) {
				for (File x : listFiles) {
					if (x.getName().startsWith("login-bg_")) {
						fileArray.add(x);

					}
				}
				Collections.shuffle(fileArray);
				imagePath = "./images/" + fileArray.get(0).getName();
				request.getSession().putValue("image", imagePath);
			}

		} else {
			imagePath = request.getSession().getValue("image").toString();
		}
		return imagePath;
	}
	
	public static List<UserTrade> getTradesByUserID(String _userID) {

		return UserTradeCache.getInstance().getTradeByUserID(_userID);
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
		return UserCache.getInstance().getUserByID(_userID);
	}

	public static void main(String[] args) {
		File x = new File("./config.properties");

		System.out.println(x.exists());
		System.out.println(Util.getProperties("IMAGE_PATH"));
		;
	}
}
