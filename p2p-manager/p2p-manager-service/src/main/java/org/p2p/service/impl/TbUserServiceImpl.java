package org.p2p.service.impl;

import org.p2p.dao.TbUserMapper;
import org.p2p.dao.TbUserMapperCustom;
import org.p2p.pojo.po.TbUser;
import org.p2p.service.TbUserService;
import org.p2p.utlis.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service
public class TbUserServiceImpl implements TbUserService {
    @Autowired
    private TbUserMapperCustom tbUserMapperCustom;
    @Autowired
    private TbUserMapper tbUserMapper;

    //注册
    public Integer save(TbUser user) {
        TbUser user1 = tbUserMapperCustom.selectByPhone(user.getPhone());
        if (user1 == null) {
            user.setCreatedate(new Date());
            return tbUserMapper.insert(user);
        } else {
            return -1;
        }
    }

    ;

    //登录
    public Map<String, Object> userlogin(TbUser user) {
        TbUser user2 = tbUserMapperCustom.selectByPhone(user.getPhone());
        Map<String, Object> map = new HashMap<>();
        ulogin uLogin = new ulogin();
        if (user2 == null) {
            uLogin.setStatus(3);
            uLogin.setComments("手机号不存在");
            uLogin.setUrl("login");
            map.put("user", null);
            map.put("ulogin", uLogin);
        } else {
            if (user.getPassword().equals(user2.getPassword())) {
                uLogin.setStatus(1);
                uLogin.setComments("登录成功,等待跳转..");
                uLogin.setUrl("index");
                map.put("user", user2);
                map.put("ulogin", uLogin);
            } else {
                uLogin.setStatus(2);
                uLogin.setComments("密码不正确");
                uLogin.setUrl("login");
                map.put("user", null);
                map.put("ulogin", uLogin);
            }
        }
        return map;
    }

    //开通存管账户
    @Override
    public TbUser update(TbUser tbUser) {
        int i = tbUserMapperCustom.updateByPhone(tbUser);
        TbUser tbUser1 = null;
        if (i > 0) {
            tbUser1 = tbUserMapperCustom.selectByPhone(tbUser.getPhone());
        }
        return tbUser1;
    }

    //根据手机号查用户
    @Override
    public TbUser query(String phone) {
        return tbUserMapperCustom.selectByPhone(phone);
    }

    @Override
    public Double getAccountBalance(int userId) {
        return tbUserMapperCustom.selectAccountBalance(userId);
    }

    @Override
    public Double selectMoney(int userId) {
        return tbUserMapperCustom.selectMoneyByUserId(userId);
    }

    @Override
    public Double selectEarningTotal(int userId) {
        return tbUserMapperCustom.selectEarningTotalByUserId(userId);
    }

    /**
     *
     * @param userId
     * @return
     */
    @Override
    public Sign_Growth getSign_Growth(int userId) {
        TbUser tbUser = tbUserMapperCustom.selectTbuserByUserId(userId);
        Sign_Growth sign_growth = new Sign_Growth();
        Data data = new Data();
        data.setGrowthvalue(tbUser.getGrowth());
        if(tbUser.getGrowth()<4000){
            data.setName("铁帮主");
            data.setIntegral(4000-tbUser.getGrowth());
            data.setLevel(0);
        }else if(tbUser.getGrowth()<20000){
            data.setName("铜帮主");
            data.setIntegral(20000-tbUser.getGrowth());
            data.setLevel(1);
        }else if(tbUser.getGrowth()<60000){
            data.setIntegral(60000-tbUser.getGrowth());
            data.setName("金帮主");
            data.setLevel(2);
        }else if(tbUser.getGrowth()<240000){
            data.setIntegral(24000-tbUser.getGrowth());
            data.setName("白金帮主");
            data.setLevel(3);
        }else if(tbUser.getGrowth()==240000){
            data.setLevel(4);
        }else{
            data.setLevel(5);
        }
        sign_growth.setData(data);
        sign_growth.setResultcode(41001);
        return sign_growth;
    }

    @Override
    public List<UserEnerning> selectUserMonthEnerning(int userId) {
        List<UserEnerning> list = tbUserMapperCustom.selectUserMonthEnerning(userId);
        return list;
    }

    @Override
    public List<InvestItem> getInvestItem(int userId) {
        return tbUserMapperCustom.selectInvestItem(userId);
    }

    @Override
    public String signIn(int userId) {
        Integer i=tbUserMapperCustom.selectSignByuserId(userId);
        if(i==null){
            Integer a=tbUserMapperCustom.sign_in(userId);
            Integer b=tbUserMapperCustom.updateGrowth(userId);
            if(a==1&&b==1){
                return "success";
            }else{
                return "fail";
            }
        }else{
            return "signed";
        }
    }
}
