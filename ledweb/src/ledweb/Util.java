package ledweb;

import java.util.ArrayList;
import java.util.List;
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
	
	public static void main(String[] args) {
		System.out.println(Util.getFeaturedProducts()); ;
	}
}
