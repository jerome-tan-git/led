package ledweb;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import ledweb.model.Trade;
import ledweb.model.mapper.ITradeOperation;

public class TradeCache {
	private static TradeCache cache;
	private List<Trade> allTrade;

	private TradeCache() {
		
		SqlSession session = ModelSessionFactory.getSession().openSession();
		ITradeOperation ito = session.getMapper(ITradeOperation.class);
		this.allTrade = ito.selectAllTrade();
		
		
	}
	

	public List<Trade> getAllTrade() {
		return allTrade;
	}


	public static TradeCache getInstance() {
		if (TradeCache.cache == null)
			TradeCache.cache = new TradeCache();
		return TradeCache.cache;
	}
}
