package ledweb;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import ledweb.model.Trade;
import ledweb.model.mapper.ITradeOperation;

public class TradeCache {
	private static TradeCache cache;
	private List<Trade> allTrade;
	Logger log = Logger.getLogger(TradeCache.class);

	private TradeCache() {
		SqlSession session = null;
		try {
			session = ModelSessionFactory.getSession().openSession();
			ITradeOperation ito = session.getMapper(ITradeOperation.class);
			this.allTrade = ito.selectAllTrade();
		} catch (Exception e) {
			log.error(e.getMessage());
		} finally {
			if (session != null) {
				session.close();
			}
		}

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
