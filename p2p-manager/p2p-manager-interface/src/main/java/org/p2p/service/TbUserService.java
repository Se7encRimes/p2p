package org.p2p.service;

import org.p2p.pojo.po.TbUser;
import org.p2p.utlis.InvestItem;
import org.p2p.utlis.Sign_Growth;
import org.p2p.utlis.UserEnerning;

import java.util.List;
import java.util.Map;


public interface TbUserService {
    //注册
    Integer save(TbUser user);

    //登录
    Map<String,Object> userlogin(TbUser user);

    //修改
    TbUser update(TbUser tbUser);

    //查询
    TbUser query(String phone);

    Double selectMoney(int userId);

    Double selectEarningTotal(int userId);

    Sign_Growth getSign_Growth(int userId);

    List<UserEnerning> selectUserMonthEnerning(int userId);

    List<InvestItem> getInvestItem(int userId);

    String signIn(int userId);

    Double getAccountBalance(int userId);
}
