package ledweb.model.mapper;

import java.util.List;

import ledweb.model.AboutUs;
import ledweb.model.UserTrade;

public interface IUserTradeOperation {
	public UserTrade selectUserTradeByID(int userTradeID);
	public List<UserTrade> selectByUserID(String userID);
	public int realDeleteUserTrade(String userID);
	public int batchAddUserTrade(List<UserTrade> userTrade);
	public List<UserTrade> selectAllUserTrade();
}
