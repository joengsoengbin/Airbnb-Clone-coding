package com.itbank.controller;

import java.util.List;
import java.io.IOException;
import java.util.HashMap;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itbank.member.HostMemberDTO;
import com.itbank.member.NormalMemberDTO;
import com.itbank.service.HostMemberService;
import com.itbank.service.NomarlMemberService;

import com.itbank.product.ProductDTO;

@Controller
@RequestMapping("/member")
public class Membercontroller {
	
	@Autowired private NomarlMemberService nmService;
	@Autowired private HostMemberService hsService;
	
	// 로그인 시작
	@PostMapping
	@ResponseBody
	public boolean check(@RequestBody NormalMemberDTO dto, HttpSession session) {
		NormalMemberDTO login = nmService.login(dto);
		System.out.println(dto.getNormal_email() + ',' + dto.getNormal_phoneNum());
		session.setAttribute("check", login);
		return login != null;
	}
	
	@PostMapping(value="/inzung3", produces="application/json; charset=utf-8")
	@ResponseBody
	public String ex05(@RequestBody HashMap<String, String> param2, HttpSession session) {
		
		int row = nmService.inzung(param2, session);
		
		if(row == 1) {
			session.setAttribute("login", session.getAttribute("check"));
			session.setAttribute("check", null);
		}
//		session.invalidate(session.getAttribute("check"));
		
		
		return row == 1 ? "인증 성공" : "인증 실패";
	}
	
		
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:" + request.getHeader("referer");
		// 로그아웃하면 무조건 대문페이지로 이동하는 대신, 원래 있던 페이지로 이동한다
		// 단 로그인이 필요한 메뉴이면 인터셉터에 의해 로그인 페이지로 이동한다
	}
	
	@GetMapping("/find")
	public void find() {};
	
	@PostMapping(value="/find", produces="application/json; charset=utf-8")
	@ResponseBody
	public String find(@RequestBody NormalMemberDTO dto, HttpSession session) {
		NormalMemberDTO find = nmService.find(dto);
		System.out.println(dto.getNormal_name() + ',' + dto.getNormal_phoneNum());
		return 	find != null ? find.getNormal_email() : "등록된 계정이 없습니다";
	}
	
	
	@GetMapping("/kakao")
	public void kakao() {}
	
	@PostMapping(value="/kakaologin", produces = "application/json; charset=utf-8")
	@ResponseBody
	public int kakaologin(@RequestBody NormalMemberDTO dto , HttpSession session) {
		System.out.println(dto.getNormal_name());
		System.out.println(dto.getNormal_email());
		int row;
		
		int kakaoCheck = nmService.selectEmail(dto);
		
		if(kakaoCheck == 1) {
			session.setAttribute("login", dto);
			return row = 1;
		}else {
			session.setAttribute("kakao", dto);
			return row = 0;
		}
	}
	
	@PostMapping("/kakao")
	public String kakaojoin(NormalMemberDTO dto) {
		int row = nmService.insert(dto);
		System.out.println(row != 0 ? "가입 성공" : "가입 실패");
		return "redirect:/";
	}
	
	
	
	
	
	
	@GetMapping("/join")
	public void join() {}
	
	@PostMapping(value="/telCheck", produces="application/text; charset=utf-8")
	   @ResponseBody
	   public String telCheck(@RequestBody String param) {
	      int result = nmService.telCheck(param);
	      
	      return result == 0 ? "1" : "0";
	      
	   }
	
	
	@PostMapping("/join")
	public String insert(NormalMemberDTO dto) {
		int row = nmService.insert(dto);
		System.out.println(row != 0 ? "가입 성공" : "가입 실패");
		return "redirect:/";
	}
	
	
	
	@PostMapping(value="/dupCheck", produces="application/json; charset=utf-8")
	@ResponseBody
	public boolean dupCheck(@RequestBody HashMap<String, String> param) {
		int result = nmService.dupCheck(param);
		
		return result == 0;
	}
	
	
	@PostMapping(value="/inzung", produces="application/json; charset=utf-8")
	@ResponseBody
	public String ex03(@RequestBody HashMap<String, String> param2, HttpSession session) throws MessagingException, IOException {
		System.out.println(param2);
		
		int row = nmService.sendMail2(param2, session);
		
		return row == 1 ? "성공" : "실패";
	}
	
	@PostMapping(value="/inzung2", produces="application/json; charset=utf-8")
	@ResponseBody
	public String ex04(@RequestBody HashMap<String, String> param2, HttpSession session) {
		
		int row = nmService.inzung(param2, session);
		
		return row == 1 ? "인증 성공" : "인증 실패";
	}
	

	
	@GetMapping("/mypage")
	public void mypage() {};
	
	@GetMapping("/modify_normal")
	public void modify_normal() {};
	
	
	@PostMapping("/modify_normal")
	public String modify(NormalMemberDTO dto, HttpSession session) {
		System.out.println(dto.getNormal_name());
		System.out.println(dto.getNormal_phoneNum());
		System.out.println(dto.getNormal_idx());
		int row = nmService.modify_normal(dto);
		
		if(row == 1) {
			NormalMemberDTO modilogin = nmService.modilogin(dto);
			session.setAttribute("login", modilogin);
		}
		else if(row == 0) {
			System.out.println("수정 실패");
		}
		return "redirect:/";
	}
	
	
	
	// =============================================
	
	
	// 호스트 로그인 시작
		@GetMapping("/loginH")
		public void loginH() {}	
		
		@PostMapping("/loginH")
		@ResponseBody
		public boolean checkH(@RequestBody HostMemberDTO dto, HttpSession session) {
			HostMemberDTO login = hsService.login(dto);
			session.setAttribute("checkH", login);
			return login != null;
		}
		
		@PostMapping(value="/dupCheckH", produces="application/json; charset=utf-8")
		@ResponseBody
		public boolean dupCheckH(@RequestBody HashMap<String, String> param) {
			int result = hsService.dupCheck(param);
			
			return result == 0;
		}
		
		
		@GetMapping("/mypageH")
		public void mypageH() {};
		
		@GetMapping("/modifyH")
		public void modifyH() {};
		
		@PostMapping("/modifyH")
		public String modifyH(HostMemberDTO dto, HttpSession session) {
			int row = hsService.modify_host(dto);
			
			if(row == 1) {
				HostMemberDTO modilogin = hsService.modilogin(dto);
				session.setAttribute("checkH", modilogin);
			}
			else if(row == 0) {
				System.out.println("수정 실패");
			}
			return "redirect:/member/mypageH";
		}
		
		@GetMapping("/host_profil")
		public void host_profil() {};
		
		@GetMapping("/host_profil/have/{host_idx}")
		@ResponseBody
		public List<ProductDTO> haveproduct(@PathVariable int host_idx){
			System.out.println(host_idx);

			System.out.println(hsService.haveproduct(host_idx).get(1).getProduct_title());
			return hsService.haveproduct(host_idx);
		}
		
		
		@PostMapping("/host_profil")
		public String profilModify(HostMemberDTO dto, HttpSession session) {
			
			int row = hsService.modifyP(dto);
			
			if(row == 1) {
				HostMemberDTO modiprofil = hsService.modifylogin(dto);
				session.setAttribute("checkH", modiprofil);
			}
			else if(row == 0) {
				System.out.println("수정 실패");
			}
			
			return "redirect:/member/host_profil";
		}
		
		@GetMapping("host_profil_image")
		public void host_profil_image() {};
		
		@PostMapping("/host_profil_image")
		public String host_profil_image(HostMemberDTO dto, HttpSession session) throws IllegalStateException, IOException {
			
			int row = hsService.modifyImage(dto);
			
			if(row == 1) {
				HostMemberDTO modiprofil = hsService.modifylogin(dto);
				session.setAttribute("checkH", modiprofil);
			}
			else if(row == 0) {
				System.out.println("이미지 수정 실패");
			}
			
			return "redirect:/member/host_profil";
		}
		
		
		
		
		// 호스트 회원가입
		@GetMapping("/joinH")
		public void joinH() {}
		
		@PostMapping("/joinH")
		public String insert(HostMemberDTO dto) {
			int row = hsService.insert(dto);
			System.out.println(row != 0 ? "가입 성공" : "가입 실패");
			return "redirect:/";
		}
		
		// 호스트 상품 등록
		@GetMapping("/register")
		public void register() {};
		
		@PostMapping("/register")
		public String register(ProductDTO dto) {
			int row = hsService.register(dto);
			System.out.println(row != 0 ? "등록 성공" : "등록 실패");
			return "redirect:/member/host_profil";
		}
}














