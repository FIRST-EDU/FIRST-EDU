package com.admin.firstedu.member.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import com.admin.firstedu.common.exception.LoginFailedException;
import com.admin.firstedu.member.model.dao.MemberMapper;
import com.admin.firstedu.member.model.dto.MemberDTO;
import com.admin.firstedu.member.model.dto.SearchCriteriaDTO;
import com.admin.firstedu.member.model.dto.TeacherAndJobDTO;



@Service
public class MemberServiceImpl implements MemberService {
	
	
	private MemberMapper mapper;
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	public MemberServiceImpl(MemberMapper mapper, BCryptPasswordEncoder passwordEncoder) {
		this.mapper = mapper;
		this.passwordEncoder = passwordEncoder;
	}
	
	@Override
	public boolean registMember(MemberDTO member) {
		
		return mapper.insertMember(member) > 0? true: false;
	}

	/* 회원정보 수정 메소드*/

	
	@Override
	public MemberDTO loginMember(MemberDTO member) throws LoginFailedException {
		
		if(!passwordEncoder.matches(member.getPwd(), mapper.selectEncPassword(member))){
			throw new LoginFailedException("로그인 실패!");
		}
		
		return mapper.selectMember(member);
	}
	
	
	/*아이디 중복확인*/
	@Override
	public String idDupCheck(String userId)  {
		
		return mapper.idDupCheck(userId) == null ? "true" : "false" ;
		
	}
	
	/*회원 리스트*/
	@Override
	public List<TeacherAndJobDTO> selectTeacherAndJob() {
		
		return mapper.selectTeacherAndJob();
	}

	/* 회원탈퇴 */
	@Override
	public boolean deleteMember(MemberDTO member) {
		return mapper.deleteMember(member);
	}

	/* 회원상세정보 */
	@Override
	public TeacherAndJobDTO selectMemberDetail(int no) {
		
		return mapper.selectMemberDetail(no);
	}


	/*회원정보 수정*/
	@Override
	public boolean selectUpdateMember(MemberDTO member) {
		
		int result = mapper.selectUpdateMember(member);
		System.out.println("update 결과 : " + result);
		return result > 0 ? true : false; 
	}


	@Override
	public List<TeacherAndJobDTO> searchMember(SearchCriteriaDTO searchCriteria) {
		
		return mapper.searchMember(searchCriteria);
	}

	@Override
	public MemberDTO memberPwdFind(MemberDTO member) throws LoginFailedException {
		// TODO Auto-generated method stub
		return null;
	}



}
