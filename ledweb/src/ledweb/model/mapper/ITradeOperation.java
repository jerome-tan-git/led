package ledweb.model.mapper;

import java.util.List;

import ledweb.model.Trade;

public interface ITradeOperation {
	public Trade selectTradeByID(int id);
	public int addTrade(Trade o);
	public int updateTrade(Trade o);
	public int deleteTrade(int id);
	public List<Trade> selectAllTrade();
}
