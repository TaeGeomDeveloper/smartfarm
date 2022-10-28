package com.tp.farm.dao;

import com.tp.farm.vo.BoardVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.List;

@Repository
public class BoardDAO {

    @Autowired
    private SqlSession sqlSession;

    public boolean insertBoard(BoardVO board) {
        boolean flag = false;
        int affectedCount = sqlSession.insert("mapper.board.insertBoard", board);
        if(affectedCount>0) {
            System.out.println("DAO에서 insert완료");
            flag = true;
        }
        return flag;
    }

    public List<BoardVO> selectAll() {
        List<BoardVO> list = sqlSession.selectList("mapper.board.selectAllBoard");
        return list;
    }


    public boolean updateCount(int seq, String token) {
        boolean flag = false;
        if(token=="on") {
            int affectedCount = sqlSession.update("mapper.board.updateDownloadCount", seq);
            if (affectedCount > 0) {
                System.out.println("다운로드 완료");
                flag = true;
            } else {
                System.out.println("다운로드 실패");
            }
        }
        return flag;
    }

    public BoardVO selectOneBoard(String seq) {
        BoardVO board = (BoardVO) sqlSession.selectOne("mapper.board.selectOneBoardBySeq", seq);
        return board;
    }

    public boolean update(BoardVO board) {
        boolean flag = false;
        int affectedCount = sqlSession.update("updateBoard", board);;
        if(affectedCount>0) {
            System.out.println("DAO update성공");
        } else {
            System.out.println("DAO update실패");
        }
        return flag;
    }

    public boolean deleteOne(String seq) {
        boolean flag = false;
        int affectedCount = sqlSession.delete("mapper.board.deleteOne", seq);
        if(affectedCount>0) {
            flag = true;
        }
        return flag;
    }
}
