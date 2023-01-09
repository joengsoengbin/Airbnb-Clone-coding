package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.product.ProductDAO;
import com.itbank.product.ProductDTO;
import com.itbank.product.ReviewDTO;

@Service
public class ProductService {
	
	@Autowired private ProductDAO dao;
	
	public List<ProductDTO> selectList(int offset) {
		return dao.selectList(offset);
	}
	
   public ProductDTO selectOne(int product_idx) {
	      return dao.selectOne(product_idx);
   }

   public List<ProductDTO> cateselectList(String product_category, int offset) {
		return dao.cateselectList(product_category, offset);
	}

public List<ReviewDTO> review(int product_idx, int offset) {
	
	return dao.review(product_idx, offset);
	}

public int page(int product_idx) {
	return dao.page(product_idx);
}

//public List<ReviewDTO> reviewR(int product_idx, int offset) {
//	return dao.reviewR(product_idx, offset);
//}
//
//public List<ReviewDTO> reviewL(int product_idx, int offset) {
//	// TODO Auto-generated method stub
//	return dao.reviewL(product_idx, offset);
//}

}
