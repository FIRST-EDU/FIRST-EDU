package com.admin.firstedu.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.admin.firstedu.common.exception.LoginFailedException;
import com.admin.firstedu.common.exception.MemberRegistException;
import com.admin.firstedu.common.exception.MemberUpdateExcption;
import com.admin.firstedu.member.model.dto.MemberDTO;
import com.admin.firstedu.member.model.dto.SearchCriteriaDTO;
import com.admin.firstedu.member.model.dto.TeacherAndJobDTO;
import com.admin.firstedu.member.model.service.MemberService;

@Controller
@RequestMapping("/member/*")
@SessionAttributes("loginMember")
public class MemberController {
	
	private final MemberService memberService;
	private final BCryptPasswordEncoder passwordEncoder;

	@Autowired
	public MemberController(MemberService memberService, BCryptPasswordEncoder passwordEncoder) {
		this.memberService = memberService;
		this.passwordEncoder = passwordEncoder;
	}

	/*회원가입*/
	@GetMapping("/regist")
	public void registForm() {
	}

	@PostMapping("/regist")
	public String registMember(@ModelAttribute MemberDTO member, HttpServletRequest request, RedirectAttributes rttr)
			throws MemberRegistException {
		
		System.out.println(member);

		/* 주소 */
		String phone = request.getParameter("phone").replace("-", "");
		String address = request.getParameter("zipCode") + "$" + request.getParameter("address1") + "$"
				+ request.getParameter("address2");

		
		member.setAddress(address);
		member.setPwd(passwordEncoder.encode(member.getPwd()));
		
		if(!memberService.registMember(member)){
			throw new MemberRegistException(" 실패!");
		}

		rttr.addFlashAttribute("message", "회원 가입에 성공하셨습니다.");

		return "redirect:/"; // 회원가입  목록으로 갈 수 있게
	}
	
   
    /*로그인*/
	@GetMapping("/login")
	public void loginForm() {
	}

	
	@PostMapping("/login")
	public String login(@ModelAttribute MemberDTO member, Model model) throws LoginFailedException {
			
		model.addAttribute("loginMember", memberService.loginMember(member));
				
		return "redirect:/";
	}
	
	
	/*로그아웃*/
	@GetMapping("/logout")
	public String memeberlogin(SessionStatus status) {

		status.setComplete();

		return "redirect:/";
	}

	/* 아이디 중복체크 */
	@PostMapping("/idDupCheck")
	public void idDupCheck(HttpServletResponse response, Model model, @RequestParam(required = false) String userId)
			throws IOException {

		response.getWriter().write(memberService.idDupCheck(userId));
	}
	
	
	/*회원정보 수정*/
	@GetMapping("/update")
	public void updateForm() {
	}
	
	@PostMapping("/update")
	public String updateMember(@ModelAttribute MemberDTO member, RedirectAttributes rttr, HttpServletRequest request) throws  MemberUpdateExcption{
		System.out.println("입력된 정보를 받은 MemberDTO : " + member);
		System.out.println("입력된 암호 : " + member.getPwd());

		String phone = request.getParameter("phone").replace("-", "");
		String address = request.getParameter("zipCode") + "$" + request.getParameter("address1") + "$"
				+ request.getParameter("address2");
		
		member.setPwd(passwordEncoder.encode(member.getPwd()));
		member.setPhone(phone);
		member.setAddress(address);
		
		System.out.println("입력된 주소 : " + member.getAddress());
		
		if(!memberService.selectUpdateMember(member)){
			throw new MemberUpdateExcption(" 실패!");
		}
		
		rttr.addFlashAttribute("message", "수정에 성공하셨습니다.");
		
		return "member/main";
	}
	
	/* 회원탙퇴 */
	
	@GetMapping("/delete")
	public void deleteForm() {
	}
	
	
	@PostMapping("/delete")
	public String deleteMember(@ModelAttribute MemberDTO member, RedirectAttributes rttr, HttpServletRequest request) throws MemberUpdateExcption {
		
		System.out.println("입력된 정보를 받은 MemberDTO : " + member);
		
		
		String id = request.getParameter("id");
	
		
		member.setId(id);
		member.setPwd(passwordEncoder.encode(member.getPwd()));
		
		if(!memberService.deleteMember(member)){
			throw new MemberUpdateExcption(" 실패!");
		}
		
		rttr.addFlashAttribute("message", " 탈퇴 되었습니다.");
		
		return "member/main";
	}
	
	
	/* 회원목록 */
	@GetMapping("/teacherList")
	public String selectTeacherAndJob(Model model) {

		List<TeacherAndJobDTO> teacherGroup = memberService.selectTeacherAndJob();

		model.addAttribute("teacherGroup", teacherGroup);

		for (TeacherAndJobDTO teacher : teacherGroup) {
			System.out.println(teacher);
		}

		return "member/teacherList";
	}
	

	/*직원리스트*/
	@GetMapping("/detail/{no}")
	public String selectOrderDeletedd(Model model, @PathVariable("no") int no) {
		
		TeacherAndJobDTO memberDetail = memberService.selectMemberDetail(no);
		
		model.addAttribute("memberDetail", memberDetail);
		
		System.out.println(memberDetail);
		
		return "member/memberDetail";
	}
	
	/* 검색 */
	@GetMapping("search")
	public String searchMember(Model model,SearchCriteriaDTO searchCriteria) {
		
		System.out.println("searchList");
		
		List<TeacherAndJobDTO> teacherGroup = memberService.searchMember(searchCriteria);
		model.addAttribute("teacherGroup", teacherGroup);
		
		 for(TeacherAndJobDTO search : teacherGroup) {
	         System.out.println("searchList " + search);
	      }
		 
		return "member/teacherList";
	}
	

	/* 아이디 찾기 페이지 */


	/* 비밀번호 찾기 페이지 */

}
