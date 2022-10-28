package com.tp.farm.dao;

import com.tp.farm.vo.ReplyVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ReplyDAO {

    @Autowired
    private SqlSession sqlSession;

    public boolean insertReply(ReplyVO reply) {
        boolean flag = false;
        System.out.println(reply.getCbr_replyId());
        int affectedCount1 = sqlSession.insert("mapper.reply.insertReply", reply);
        if(affectedCount1>0) {
            System.out.println("insert 첫번째 통과");
            flag = true;
        } else {
            System.out.println("insert 첫번째 실패");
            flag = false;
        }
        ReplyVO tempReply = (ReplyVO) sqlSession.selectOne("mapper.reply.selectMaxSeq", reply.getCbSeq());
        int affectedCount2 = sqlSession.update("mapper.reply.updateInitTopReply", tempReply);
        if(affectedCount2>0) {
            System.out.println("insert 두번째 통과");
            flag = true;
        } else {
            System.out.println("insert 두번째 실패");
            flag = false;
        }
        return flag;
    }

    public List<ReplyVO> selectAllReply(String seq) {
        List<ReplyVO> list = sqlSession.selectList("mapper.reply.selectAllReply", seq);
        return list;
    }


    public boolean insertReReply(ReplyVO reply) {
        boolean flag = false;
        int maxCurrentSeq = (int) sqlSession.selectOne("mapper.reply.selectMaxCurrentSeq", reply);
        reply.setCbr_currentSeq(maxCurrentSeq);
        int affectedCount = sqlSession.insert("mapper.reply.insertReReply", reply);
        if(affectedCount>0) {
            flag = true;
        }
        return flag;
    }

    public boolean deleteReply(int cbrSeq) {
        boolean flag = false;
        int affectedCount = sqlSession.delete("deleteOneReply", cbrSeq);
        if(affectedCount>0) {
            flag = true;
        }
        return flag;
    }
}
