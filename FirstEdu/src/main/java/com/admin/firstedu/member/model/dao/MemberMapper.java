package com.admin.firstedu.member.model.dao;

import java.util.List;

import com.admin.firstedu.member.model.dto.MemberDTO;
import com.admin.firstedu.member.model.dto.SearchCriteriaDTO;
import com.admin.firstedu.member.model.dto.TeacherAndJobDTO;

public interface MemberMapper {

	int insertMember(MemberDTO member);

	String selectEncPassword(MemberDTO member);

	MemberDTO selectMember(MemberDTO member);

	String idDupCheck(String userId);
	
	boolean deleteMember(MemberDTO member);

	List<TeacherAndJobDTO> selectTeacherAndJob();

	TeacherAndJobDTO selectMemberDetail(int no);

	int selectUpdateMember(MemberDTO member);

	List<TeacherAndJobDTO> searchMember(SearchCriteriaDTO searchCriteria);


}
