package ledweb;

import java.util.HashMap;
import java.util.List;

import ledweb.model.User;
import ledweb.model.mapper.IUserOperation;
import ledweb.model.mapper.IUserTradeOperation;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

public class UserCache {
	private static UserCache cache;
	private HashMap<String, User> users;
	Logger log = Logger.getLogger(TradeCache.class);

	private UserCache() {
		this.users = new HashMap<String, User>();
		SqlSession session = null;
		try {
			session = ModelSessionFactory.getSession().openSession();
			IUserOperation iuo = session.getMapper(IUserOperation.class);
			List<User> us = iuo.selectUsers();
			for (User u : us) {
				this.users.put(u.getUserID(), u);

			}
		} catch (Exception e) {
			log.error(e.getMessage());
		} finally {
			if (session != null) {
				session.close();
			}
		}
	}

	public User getUserByID(String _ID) {
		return this.users.get(_ID);
	}

	public static void refresh() {
		UserCache.cache = new UserCache();
	}

	public static UserCache getInstance() {
		if (UserCache.cache == null)
			UserCache.cache = new UserCache();
		return UserCache.cache;
	}
}
