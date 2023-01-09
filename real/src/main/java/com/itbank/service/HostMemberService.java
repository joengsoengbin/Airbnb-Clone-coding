package com.itbank.service;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.itbank.member.HostMemberDAO;
import com.itbank.member.HostMemberDTO;
import com.itbank.product.ProductDTO;

@Service
public class HostMemberService {	
	
	@Autowired private HostMemberDAO hsDAO;
	
	private String uploadPath = "D:\\project";
	
	public HostMemberService() {
		File dir = new File(uploadPath);
		if(dir.exists() && dir.isFile()) {
			dir.delete();
		}
		if(dir.exists() == false) {
			dir.mkdirs();
		}
	}
	
	public HostMemberDTO login(HostMemberDTO dto) {
		HostMemberDTO login = hsDAO.login(dto);
		return login;
	}

	public int insert(HostMemberDTO dto) {
		return hsDAO.insert(dto);
	}
	

	public int dupCheck(HashMap<String, String> param) {
		String host_email = param.get("host_email");
		return hsDAO.selectHost_email(host_email);
	}

	
	public int modifyP(HostMemberDTO dto) {
		return hsDAO.modifyP(dto);
	}

	public HostMemberDTO modifylogin(HostMemberDTO dto) {
		return hsDAO.modiprofil(dto);
	}

	public int modifyImage(HostMemberDTO dto) throws IllegalStateException, IOException {
		if("".equals(dto.getHost_upload().getOriginalFilename()) == true) {
			String fileName = makeNewFileName(dto);
			File dest = new File(uploadPath, fileName);
			dto.getHost_upload().transferTo(dest);

			boolean flag = "".equals(dto.getHost_upload().getOriginalFilename());
			dto.setHost_img(flag ? "" : fileName);
		}
		else if("".equals(dto.getHost_upload().getOriginalFilename()) == false) {
			File dest = new File(uploadPath, dto.getHost_upload().getOriginalFilename());
			dto.getHost_upload().transferTo(dest);
			dto.setHost_img(dto.getHost_upload().getOriginalFilename());
		}
		int row = hsDAO.modifyImage(dto);
		
		return row;
	}
	
	private String makeNewFileName(HostMemberDTO dto) {
		MultipartFile f = dto.getHost_upload();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String today = sdf.format(new Date());
		String fileName = today + "_" + dto.getHost_name() + "_" + f.getOriginalFilename();
		return fileName;
	}

	public int modify_host(HostMemberDTO dto) {
		return hsDAO.modify_host(dto);
	}

	public HostMemberDTO modilogin(HostMemberDTO dto) {
		return hsDAO.modilogin(dto);
	}

	public List<ProductDTO> haveproduct(int host_idx) {
		System.out.println(host_idx + 1);
		return hsDAO.haveproduct(host_idx);
	}

	public int register(ProductDTO dto) {
		return hsDAO.register(dto);
	}
	
}

















