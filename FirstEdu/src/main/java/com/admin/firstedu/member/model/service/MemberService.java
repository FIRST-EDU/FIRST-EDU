package com.admin.firstedu.member.model.service;

import java.util.List;

import com.admin.firstedu.common.exception.LoginFailedException;
import com.admin.firstedu.member.model.dto.MemberDTO;
import com.admin.firstedu.member.model.dto.SearchCriteriaDTO;
import com.admin.firstedu.member.model.dto.TeacherAndJobDTO;


public interface MemberService {

	boolean registMember(MemberDTO member);

	MemberDTO loginMember(MemberDTO member) throws LoginFailedException;

	String idDupCheck(String userId);
	
	boolean deleteMember(int no);

	List<TeacherAndJobDTO> selectTeacherAndJob();

	TeacherAndJobDTO selectMemberDetail(int no);

	MemberDTO memberPwdFind(MemberDTO member) throws LoginFailedException;

	List<TeacherAndJobDTO> searchMember(SearchCriteriaDTO searchCriteria);
	
	TeacherAndJobDTO selectUpdateMember(int no);

	boolean updateMember(MemberDTO member);

	
}
