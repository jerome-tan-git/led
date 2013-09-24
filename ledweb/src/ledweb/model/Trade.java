package ledweb.model;

import java.io.Serializable;

public class Trade implements Serializable{
	private int tradeID;
	private String tradeName;
	public int getTradeID() {
		return tradeID;
	}
	public void setTradeID(int tradeID) {
		this.tradeID = tradeID;
	}
	public String getTradeName() {
		return tradeName;
	}
	public void setTradeName(String tradeName) {
		this.tradeName = tradeName;
	}
}
