package com.board.example.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.board.example.dto.MemberDTO;


@Repository
public class MemberDAOImpl implements MemberDAO {
  @Inject
  SqlSession sqlSession;
	
	@Override
	public List<MemberDTO> memberList() throws Exception {
		return sqlSession.selectList("member.memberList");
	}
	
	@Override
	public MemberDTO viewMember(String userid) throws Exception {
		return sqlSession.selectOne("member.viewMember", userid);
	}
	
	@Override
	public void insertMember(MemberDTO dto) throws Exception {
		sqlSession.insert("member.insertMember", dto);
		
	}
	
	@Override
	public void updateMember(MemberDTO dto) throws Exception {
		sqlSession.update("member.updateMember", dto);
		
	}
	
	@Override
	public void deleteMember(String userid) throws Exception {
		sqlSession.delete("member.deleteMember", userid);
		
	}
	
	@Override
	public int memberCnt() throws Exception {
		return sqlSession.selectOne("member.memberCnt");
		
	}
	
	@Override
	public MemberDTO checkPw(String userid, String passwd) throws Exception {
		MemberDTO dto = new MemberDTO();
		Map<String, String> map = new HashMap<>();
		map.put("userid", userid);
		map.put("passwd", passwd);
		dto = sqlSession.selectOne("member.checkPw", map);
		return dto;
	}
	  
	}