package ledweb;

import java.util.HashMap;
import java.util.List;

import ledweb.model.User;
import ledweb.model.mapper.IUserOperation;
import ledweb.model.mapper.IUserTradeOperation;

import org.apache.ibatis.session.SqlSession;

public class UserCache {
	private static UserCache cache;
	private HashMap<String,User> users;
	private UserCache()
	{
		this.users = new HashMap<String, User>();
		SqlSession session = ModelSessionFactory.getSession().openSession();
		IUserOperation iuo = session.getMapper(IUserOperation.class);
		List<User> us = iuo.selectUsers();
		for (User u : us)
		{
			this.users.put(u.getUserID(), u);
			
		}
	}
	public User getUserByID(String _ID)
	{
		return this.users.get(_ID);
	}
	
	public static void refresh()
	{
		UserCache.cache = new UserCache();
	}
	public static UserCache getInstance()
	{
		if (UserCache.cache == null) 
			UserCache.cache = new UserCache();
		return UserCache.cache;
	}
}
