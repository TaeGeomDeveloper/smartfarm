package com.tp.farm.service;

import com.tp.farm.dao.MemberDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

    @Autowired
    private MemberDAO memberDAO;


    public boolean isMemberId(String mi_id) {
        boolean flag = false;
        flag = memberDAO.isSameId(mi_id);
        return flag;
    }
}
