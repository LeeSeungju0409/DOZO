package co.yedam.service;

import org.apache.ibatis.session.SqlSession;

import co.yedam.common.DataSource;
import co.yedam.mapper.BasketMapper;
import co.yedam.vo.BasketVO;

public interface BasketServiceImpl implements BasketService {
	SqlSession sqlSession = //
			DataSource.getInstance().openSession(true); //자동으로 커밋하려고 true 넣음.
	BasketMapper mapper = sqlSession.getMapper(BasketMapper.class);
	
	
	@Override
	public boolean addBasket(BasketVO basket) {
		return mapper.insertBasket(basket) == 1;
	}
}
