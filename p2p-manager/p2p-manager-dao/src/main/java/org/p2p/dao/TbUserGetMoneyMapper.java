package org.p2p.dao;

import org.p2p.pojo.po.TbUser;

/**
 * Created by 吴春杰 on 2017/9/12.
 */
public interface TbUserGetMoneyMapper {
    //按borrow主键查询user
    TbUser selectUserByBid(int bid);
    //审核通过之后把申请的金额打入余额中
    int setUserBalance(TbUser tbUser);
}
