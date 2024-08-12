package co.yedam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.yedam.vo.ProductVO;

public interface ProductMapper {
	
	List<ProductVO> selectList(@Param("prodCategory") String prodCategory, @Param("prodCategory2") String prodCategory2, @Param("prodStar") int prodStar); //자바에서 두 개 이상의 오라클 언어를 사용할 때 Param을 쓴다.
//	ProductVO selectProduct(String prodName);
	List<ProductVO> selectListPaging(@Param("prodCategory") String prodCategory, @Param("prodCategory2") String prodCategory2, @Param("page") int page, @Param("prodStar") int prodStar);
	// 페이징 계산하기 위한 전체건수.
	int selectTotalCount(int prodStar);
	ProductVO selectProduct(int prodNo);
}	

