package org.p2p.service;

import org.p2p.pojo.po.TbUser;

import java.util.Map;


public interface TbUserService {
    //注册
    int save(TbUser user);

    //登录
    Map<String,Object> userlogin(TbUser user);

    //修改
    TbUser update(TbUser tbUser);

    //查询
    TbUser query(String phone);

    double selectMoney(int userId);

    double selectEarning(int userId);
}
