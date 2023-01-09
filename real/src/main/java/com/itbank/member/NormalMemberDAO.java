package com.itbank.member;


import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

@Repository
public interface NormalMemberDAO {

	@Select("select * from normalMember where"
			+ " normal_email=#{normal_email} and normal_phoneNum=#{normal_phoneNum} and isDeleted='n'")
	NormalMemberDTO login(NormalMemberDTO dto);

	@Select("select count(*) from normalMember where normal_phonenum = #{param}")
	   int selectnormal_phomenum(String param);
	
	@Insert("insert into normalMember (normal_name, normal_email, normal_phoneNum, normal_gender, normal_birth, normal_addrs) "
			+"values (#{normal_name}, #{normal_email}, #{normal_phoneNum}, #{normal_gender}, #{normal_birth}, "
			+"#{normal_addrs})")
	int insert(NormalMemberDTO dto);


	@Select("select count(*) from normalMember where normal_email = #{normal_email}")
	int selectnormal_email(String normal_email);

	
	
	@Update("update normalMember set normal_name=#{normal_name}, normal_gender=#{normal_gender}, normal_birth=#{normal_birth}, "
			+ "normal_addrs=#{normal_addrs} where normal_phoneNum=#{normal_phoneNum}")
	int modify_normal(NormalMemberDTO dto);

	@Select("select * from normalMember where normal_idx=#{normal_idx}")
	NormalMemberDTO modilogin(NormalMemberDTO dto);

	@Select("select * from normalMember where normal_name=#{normal_name} and normal_phoneNum=#{normal_phoneNum}")
	NormalMemberDTO find(NormalMemberDTO dto);


}
