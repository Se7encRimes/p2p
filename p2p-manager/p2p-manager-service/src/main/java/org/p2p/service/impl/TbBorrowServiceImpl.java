package org.p2p.service.impl;

import org.p2p.dao.TbBorrowMapper;
import org.p2p.pojo.po.TbBorrow;
import org.p2p.service.TbBorrowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 张平清 on 2017/9/7/007.
 */
@Service
public class TbBorrowServiceImpl implements TbBorrowService {

    @Autowired
    private TbBorrowMapper dao;

    @Override
    public int insertMy(TbBorrow record) {


        return dao.insert(record);
    }

    @Override
    public int updateUserStatus(int loans,int id) {
        return dao.updateUserStatus(loans,id);
    }



    @Override
    public String selectByUid(int id) {

        return dao.selectByUid(id);
    }

}
