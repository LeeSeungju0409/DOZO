package co.yedam.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Control;
import co.yedam.service.ProductService;
import co.yedam.service.ProductServiceImpl;
import co.yedam.vo.ProductVO;

public class ProductControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub11111111111111
		String bno = req.getParameter("bno");
		String page = req.getParameter("page");
		
		ProductService svc = new ProductServiceImpl();

		
		req.getRequestDispatcher("board/board.tiles").forward(req, resp);

	}

}
