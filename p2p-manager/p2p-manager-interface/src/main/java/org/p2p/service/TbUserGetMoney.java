package org.p2p.service;

import org.p2p.pojo.po.TbUser;

/**
 * Created by 吴春杰 on 2017/9/12.
 */
public interface TbUserGetMoney {

    TbUser selectUserByBid(int bid);

    int setUserBalance(TbUser tbUser);
}
