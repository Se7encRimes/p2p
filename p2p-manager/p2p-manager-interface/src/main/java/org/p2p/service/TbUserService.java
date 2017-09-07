package org.p2p.service;

import org.p2p.pojo.po.TbUser;

import java.util.Map;

/**
 * @Author:HuangJianFang
 * @Description:
 * @Date:Created in 16:27 2017/9/7
 * @Modified By:
 */
public interface TbUserService {
    //注册
    int save(TbUser user);

    //登录
    Map<String,Object> userlogin(TbUser user);

    //修改
    TbUser update(TbUser tbUser);

    //查询
    TbUser query(String phone);
}
