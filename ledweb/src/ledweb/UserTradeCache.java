package ledweb;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import ledweb.model.UserTrade;
import ledweb.model.mapper.IUserTradeOperation;

public class UserTradeCache {
	private static UserTradeCache cache;
	private HashMap<String, List<UserTrade>> userTrade;
	private UserTradeCache()
	{
		userTrade = new HashMap<String, List<UserTrade>>();
		SqlSession session = ModelSessionFactory.getSession().openSession();
		IUserTradeOperation iuto = session.getMapper(IUserTradeOperation.class);
		List<UserTrade> tmp = iuto.selectAllUserTrade();
		for (UserTrade x : tmp)
		{
			List<UserTrade> l = new ArrayList<UserTrade>();
			if (this.userTrade.containsKey(x.getUserID()))
			{
				l = this.userTrade.get(x.getUserID());
			}
			l.add(x);
			this.userTrade.put(x.getUserID(), l);
		}
	}
	
	public static void refresh()
	{
		UserTradeCache.cache = new UserTradeCache();
	}
	public List<UserTrade> getTradeByUserID(String _userID)
	{
		return this.userTrade.get(_userID);
	}
	public static UserTradeCache getInstance()
	{
		if (UserTradeCache.cache==null)
		{
			UserTradeCache.cache = new UserTradeCache();
		}
		return UserTradeCache.cache;
	}
}
