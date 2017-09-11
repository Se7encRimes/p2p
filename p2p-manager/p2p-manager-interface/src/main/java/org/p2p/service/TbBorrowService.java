package org.p2p.service;

import org.p2p.pojo.po.TbBorrow;

/**
 * Created by 张平清 on 2017/9/7/007.
 */

public interface TbBorrowService {

    //新增数据
    int insertMy(TbBorrow record);
    //改变user的status
    int updateUserStatus(int loans,int id);
    //判断是否开通过存管
    String  selectByUid(int id);
}
