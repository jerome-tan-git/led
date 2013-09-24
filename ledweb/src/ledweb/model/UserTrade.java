package ledweb.model;

import java.io.Serializable;

public class UserTrade implements Serializable{
	public int userTradeID;
	public String userID;
	public String tradeID;
	public Trade trade;
	
	public Trade getTrade() {
		return trade;
	}

	public void setTrade(Trade trade) {
		this.trade = trade;
	}

	public int getUserTradeID() {
		return userTradeID;
	}

	public void setUserTradeID(int userTradeID) {
		this.userTradeID = userTradeID;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getTradeID() {
		return tradeID;
	}

	public void setTradeID(String tradeID) {
		this.tradeID = tradeID;
	}

}
