package com.itbank.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.product.ProductDTO;
import com.itbank.product.ReviewDTO;
import com.itbank.service.ProductService;

@RestController
@RequestMapping("/product")
public class ProductController {
	
	@Autowired private ProductService productService;
	
//	@GetMapping("/{offset}")
//	public List<ProductDTO> selectList(@PathVariable int offset) {
//		return productService.selectList(offset);
//	}
	
   @GetMapping("/view/{product_idx}")
   public ModelAndView selectOne(@PathVariable int product_idx) {
      ModelAndView mav = new ModelAndView();
      mav.setViewName("view");
      ProductDTO dto =  productService.selectOne(product_idx);
      mav.addObject("dto" , dto);
      System.out.println(dto.getHost_idx() + dto.getProduct_category() + dto.getProduct_idx());
      return mav;
   }
   
   @GetMapping("/{product_category}/{offset}")
   public List<ProductDTO> cateselectList(@PathVariable String product_category, @PathVariable int offset){
	   System.out.println(product_category + ", " + offset);
	   return productService.cateselectList(product_category, offset);
	   
   }
   
   
   @GetMapping("/view/coment/{product_idx}/{offset}")
   public List<ReviewDTO> review(@PathVariable int product_idx, @PathVariable int offset){
		System.out.println(product_idx);
//		System.out.println(productService.review(product_idx, offset).get(0).getReview_coment());
//		System.out.println(productService.review(product_idx, offset).get(1).getReview_coment());
//		System.out.println(productService.review(product_idx, offset).get(2).getReview_coment());
//		System.out.println(productService.review(product_idx, offset).get(3).getReview_coment());
		return productService.review(product_idx, offset);
	}
   
   @GetMapping("/view/coment/page/{product_idx}")
   public int page(@PathVariable int product_idx) {
	   System.out.println(product_idx + 9);
	   int row = productService.page(product_idx);
	   System.out.println(row);
	   if(row % 6 == 0) {
		   row = row / 6;
	   }
	   else {
		   row = (row / 6) + 1;
	   }
	   return row;
   }
   
	
}
















