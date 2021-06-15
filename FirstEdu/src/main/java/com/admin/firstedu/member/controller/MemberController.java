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

import com.admin.firstedu.classInfo.model.dto.ClassAndInfoDTO;
import com.admin.firstedu.classInfo.model.dto.ClassDTO;
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
	public String loginForm() {
		return "member/login";
	}

	
	@PostMapping("/login")
	public String login(@ModelAttribute MemberDTO member, Model model) throws LoginFailedException {
			
		model.addAttribute("loginMember", memberService.loginMember(member));
				
//		return "member/teacherList";
		return "redirect:/dashboard";
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
	
	
	/*수강과목 수정*/
	@GetMapping("/update/{no}")
	public String updateForm(Model model, @PathVariable("no") int no) 
			throws  MemberUpdateExcption{
		System.out.println("no : " + no);
		
		TeacherAndJobDTO updateMember = memberService.selectUpdateMember(no);
		
		model.addAttribute("updateMember", updateMember);

		System.out.println(updateMember);
		
		return "member/update";

	}
	

	@PostMapping("/update")
	public String updateMember(@ModelAttribute MemberDTO member, HttpServletRequest request, RedirectAttributes rttr) 
			throws MemberRegistException 
	{
		System.out.println(member);
		
		String id = request.getParameter("id");
		String jobCode = request.getParameter("jobCode");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone").replace("-", "");
		String address = request.getParameter("zipCode") + "$" + request.getParameter("address1") + "$"
				+ request.getParameter("address2");
		String role = request.getParameter("role");
		
		member.setAddress(address);
		member.setId(id);
		member.setJobCode(jobCode);
		member.setEmail(email);
		member.setPhone(phone);
		member.setRole(role);
		
		
		
		if(!memberService.updateMember(member)){
			throw new MemberRegistException(" 실패!");
		}
		
		rttr.addFlashAttribute("message", "수정에 성공하셨습니다.");
		
		return "redirect:/member/teacherList";

	}
	
	
	/* 회원탙퇴 */
	@GetMapping("/delete")
	public String deleteMember(@ModelAttribute MemberDTO member, @PathVariable("no") int no, RedirectAttributes rttr) 
			throws MemberUpdateExcption {
		
		System.out.println("입력된 정보를 받은 MemberDTO : " + member);
		
		if(!memberService.deleteMember(no)) {
			throw new MemberUpdateExcption("수강 내역역에 실패하였습니다!");
		}
		
		rttr.addFlashAttribute("message", "수강 내역 삭제 성공하셨습니다.");
		
		return "redirect:/classInfo/classList";
	}
	
	
	/* 맴버리스트 */
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
	
	/* 검색기능 */
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
	


}
