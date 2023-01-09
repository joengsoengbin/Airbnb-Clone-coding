package com.itbank.product;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface ProductDAO {



  @Select("select * from product where product_category='멋진 수영장' "
			+ "order by product_idx"
			+ " offset #{offset} rows "
			+ " fetch next 20 rows only")
   List<ProductDTO> selectList(int offset);
	
	
  @Select("select * from product where product_idx = #{product_idx}")
   ProductDTO selectOne(int product_idx);

  @Select("select * from product where product_category = #{product_category}"
  		+ "order by product_idx " + 
  		" offset #{offset} rows " + 
  		" fetch next 20 rows only ")
   List<ProductDTO> cateselectList(@Param("product_category") String product_category, @Param("offset") int offset);

//  select *
//  from review r, product p
//  where p.product_idx = r.product_idx and p.product_idx=1 order by review_idx;
  
  
  @Select("select * "
  		+ "from review r, product p "
  		+ "where p.product_idx = r.product_idx and p.product_idx=#{product_idx} "
  		+ "order by review_idx "
  		+ "offset #{offset} rows "
  		+ "fetch next 6 rows only")
  List<ReviewDTO> review(@Param("product_idx") int product_idx, @Param("offset") int offset);


  
//  select count(*)
//  from review r, product p
//  where p.product_idx = r.product_idx and p.product_idx=1 order by review_idx;
  
  @Select("select count(*) "
  		+ "from review r, product p "
  		+ "where p.product_idx = r.product_idx and p.product_idx=#{product_idx} order by review_idx")
  int page(int product_idx);


  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
