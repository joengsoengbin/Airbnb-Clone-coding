package com.itbank.member;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.itbank.product.ProductDTO;

@Repository
public interface HostMemberDAO {

	@Select("select * from hostMember where"
			+ " host_email=#{host_email} and host_phoneNum=#{host_phoneNum}")
	HostMemberDTO login(HostMemberDTO dto);

	@Insert("insert into hostMember (host_name, host_email, host_phoneNum, host_gender, host_birth, host_addrs, host_img, authority) "
			+"values (#{host_name}, #{host_email}, #{host_phoneNum}, #{host_gender}, #{host_birth}, #{host_addrs}, '', 'h') ")
	int insert(HostMemberDTO dto);
	
	@Select("select count(*) from hostMember where host_phonenum = #{param}")
	int selectHost_phoneNum(String param);

	@Select("select count(*) from hostMember where host_email = #{host_email}")
	int selectHost_email(String host_email);

	@Update("update hostMember set host_intro = #{host_intro}, host_addrs = #{host_addrs} where host_idx = #{host_idx}")
	int modifyP(HostMemberDTO dto);

	@Select("select * from hostMember where host_idx = #{host_idx}")
	HostMemberDTO modiprofil(HostMemberDTO dto);

	@Update("update hostMember set host_img = #{host_img} where host_idx = #{host_idx}")
	int modifyImage(HostMemberDTO dto);

	@Update("update hostMember set host_name=#{host_name}, host_gender=#{host_gender}, host_birth=#{host_birth}, "
			+ "host_addrs=#{host_addrs} where host_phoneNum=#{host_phoneNum}")
	int modify_host(HostMemberDTO dto);

	@Select("select * from hostMember where host_idx=#{host_idx}")
	HostMemberDTO modilogin(HostMemberDTO dto);

//	select *
//	from product p, hostMember h
//	where h.host_idx = p.host_idx and h.host_idx=1;
	
	@Select("select * "
			+ "from product p, hostMember h "
			+ "where h.host_idx = p.host_idx and h.host_idx=#{host_idx} order by product_idx")
	List<ProductDTO> haveproduct(int host_idx);

	
	@Insert("insert into product (product_title, host_idx, product_hostname, product_maxpeople, product_bedroom, product_bed, "
			+ "product_bathroom, product_mtitle, product_mstory, product_price, product_category, product_story, product_addrs, " + 
			"product_longitude, product_latitude, product_checkin, product_checkout, product_pet) " + 
			"values(#{product_title}, #{host_idx}, #{product_hostname}, #{product_maxpeople}, #{product_bedroom}, #{product_bed}, "
			+ "#{product_bathroom}, #{product_mtitle}, #{product_mstory}, #{product_price}, #{product_category}, #{product_story}, "
			+ "#{product_addrs}, #{product_longitude}, #{product_latitude}, #{product_checkin}, #{product_checkout}, #{product_pet})")
	int register(ProductDTO dto);


}












