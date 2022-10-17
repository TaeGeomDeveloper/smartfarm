package smartfarm.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import smartfarm.vo.MemberVO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository("memberDAO")
public class MemberDAO {

	@Autowired
	private SqlSession sqlSession;
	
	
	//전체 회원 리스트 출력(관리자 페이지)
	public List<MemberVO> selectAllMemeber(){
		List<MemberVO> list = sqlSession.selectList("mapper.member.selectAllMemberList");
		
		return list;
	}
	
	//내정보 페이지에 본인 정보 조회
	public MemberVO selectOneMember(String id) {
		MemberVO memberVO = (MemberVO)sqlSession.selectOne("mapper.member.selectMemberById", id);
		
		return memberVO;
	}
	
	//회원 등록 기능
	public boolean insertOneMember(MemberVO vo) {
		boolean flag = false;
		int affectedCount = sqlSession.insert("mapper.member.insertMember", vo);
		if(affectedCount>0) {
			flag = true;
		}
		return flag;
	}
	
	//내정보 페이지에서 정보 수정
	public boolean updateOneMember(MemberVO vo) {
		boolean flag = false;
		int affectedCount = sqlSession.update("mapper.member.updateMember", vo);
		if(affectedCount>0) {
			flag = true;
		}
		return flag;
	}
	
	//회원 탈퇴 
	public boolean deleteOneMember(String id) {
		boolean flag = false;
		int affectedCount = sqlSession.delete("mapper.member.deleteMember", id);
		if(affectedCount>0) {
			flag = true;
		}
		return flag;
	}
	
	//로그인 할 때 패스워드 체크
//	public MemberVO checkMemberPwd(String pwd) {
//		MemberVO memberVO = sqlSession.selectOne("mapper.member.selectMemberByPwd", pwd);
//		
//		return memberVO;
//	}

	public MemberVO checkMember(String id, String pwd) {
		// TODO Auto-generated method stub
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pwd",pwd);
		MemberVO memberVO = (MemberVO)sqlSession.selectOne("mapper.member.findMember", map);
		return memberVO;
	}
}
