package co.yedam.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ProductVO {
	//222222222222222222222222222222
	private String prdCode;
	private String prdName;
	private String prdDesc;
	private int originPrice;
	private int salePrice;
	private int starPoint;
	private String prodImage;
	private Date creationDate;
}
