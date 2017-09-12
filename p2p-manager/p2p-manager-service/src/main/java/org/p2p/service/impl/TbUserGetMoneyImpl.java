package org.p2p.service.impl;

import org.p2p.dao.TbBorrowMapper;
import org.p2p.dao.TbUserMapper;
import org.p2p.pojo.po.TbBorrow;
import org.p2p.pojo.po.TbUser;
import org.p2p.pojo.po.TbUserExample;
import org.p2p.service.TbUserGetMoney;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 吴春杰 on 2017/9/12.
 */
@Service
public class TbUserGetMoneyImpl implements TbUserGetMoney {

    @Autowired
    private TbBorrowMapper tbBorrowMapper;

    @Autowired
    private TbUserMapper tbUserMapper;

    /**
     * 按borrow主键查询user
     * @param bid
     * @return TbUser
     */
    @Override
    public TbUser selectUserByBid(int bid) {
        TbBorrow tbBorrow = tbBorrowMapper.selectByPrimaryKey(bid);
        int id = tbBorrow.getUid();
        return tbUserMapper.selectByPrimaryKey(id);
    }

    /**
     * 审核通过之后把申请的金额打入余额中
     * @param tbUser
     * @return int
     */
    @Override
    public int setUserBalance(TbUser tbUser) {
        return tbUserMapper.updateByPrimaryKeySelective(tbUser);
    }
}
