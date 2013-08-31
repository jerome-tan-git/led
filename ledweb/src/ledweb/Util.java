package ledweb;

import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.UUID;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import ledweb.model.Product;
import ledweb.model.mapper.IProductOperation;

public class Util {
	static Logger log = Logger.getLogger(Util.class);

	public static String getUUID() {
		return UUID.randomUUID().toString();
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
		String classPath = new Util().getClass().getClassLoader().getResource("").getPath();
		
		Properties prop = new Properties();
		try {
			FileInputStream fis = new FileInputStream(classPath+"./config.properties");
			prop.load(fis);
			result = prop.getProperty(_key);
		} catch (Exception e) {
			
		}
		return result;
	}
	public static String replaceNoImage(String _imagePath)
	{
		String result = _imagePath;
		if (_imagePath == null) {
			result = "./images/no.jpg";
		} else if (_imagePath.trim().equals("")) {
			result = "./images/no.jpg";
		}
		else 
		{
			if(!new File(Util.getProperties("IMAGE_PATH")+_imagePath).exists())
			{
				result = "./images/no.jpg";
			}
		}
		return result;
	}
	public static void main(String[] args) {
		File x = new File("./config.properties");
		
		System.out.println(x.exists());
		System.out.println(Util.getProperties("IMAGE_PATH"));
		;
	}
}
