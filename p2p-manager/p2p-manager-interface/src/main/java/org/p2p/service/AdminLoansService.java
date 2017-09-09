package org.p2p.service;

import org.p2p.pojo.vo.AdminLoansCustom;
import org.p2p.utlis.Order;
import org.p2p.utlis.Page;
import org.p2p.utlis.Result;

/**
 * Created by 吴春杰 on 2017/9/6.
 */
public interface AdminLoansService {

    Result<AdminLoansCustom> listBorrows(Page page, Order order);

    AdminLoansCustom getBorrwoById(int id);

    int anIntItem(int state,int id);


}
