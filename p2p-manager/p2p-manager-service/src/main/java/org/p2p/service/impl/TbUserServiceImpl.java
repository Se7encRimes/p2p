package org.p2p.service.impl;

import org.p2p.dao.TbUserMapper;
import org.p2p.dao.TbUserMapperCustom;
import org.p2p.pojo.po.TbUser;
import org.p2p.service.TbUserService;
import org.p2p.utlis.ulogin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;


@Service
public class TbUserServiceImpl implements TbUserService {
    @Autowired
    private TbUserMapperCustom tbUserMapperCustom;
    @Autowired
    private TbUserMapper tbUserMapper;

    //注册
    public int save(TbUser user) {
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
    public double selectMoney(int userId) {
        return tbUserMapperCustom.selectMoneyByUserId(userId);
    }

    @Override
    public double selectEarningTotal(int userId) {
        return tbUserMapperCustom.selectEarningTotalByUserId(userId);
    }
}
