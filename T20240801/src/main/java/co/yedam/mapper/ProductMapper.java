package co.yedam.mapper;

import java.util.List;

import co.yedam.vo.ProductVO;

public interface ProductMapper {
	List<ProductVO> selectList();
	List<ProductVO> selectListPaging();
	int selectTotalCount();
	int insertProduct(ProductVO product);
	int updateProduct(ProductVO product);
	int deleteProduct(int ProductNo);
	ProductVO selectProduct(int productNo);
}
