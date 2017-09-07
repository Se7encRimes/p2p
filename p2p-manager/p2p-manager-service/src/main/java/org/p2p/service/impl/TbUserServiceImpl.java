package org.p2p.service.impl;

import org.p2p.dao.TbUserMapper;
import org.p2p.dao.TbUserMapperCustom;
import org.p2p.pojo.po.TbUser;
import org.p2p.service.TbUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

/**
 * @Author:HuangJianFang
 * @Description:
 * @Date:Created in 16:30 2017/9/7
 * @Modified By:
 */
@Service
public class TbUserServiceImpl implements TbUserService {
    @Autowired
    private TbUserMapperCustom tbUserMapperCustom;
    @Autowired
    private TbUserMapper tbUserMapper;

    public int save(TbUser user){
       TbUser user1 = tbUserMapperCustom.selectByPhone(user.getPhone());
        if (user1==null) {
            return tbUserMapper.insert(user);
        }else {
            return -1;
        }
    };

    public Map<String, Object> userlogin(TbUser user){
        TbUser user2 = tbUserMapperCustom.selectByPhone(user.getPhone());
        Map<String,Object> map = new HashMap<>();
        if (user2!=null) {
            if (user2.getPassword().equals(user.getPassword())){
                map.put("user",user2);
                return map;
            }else {
                map.put("passerro",1);
                return map;
            }
        }else {
            map.put("nouser",2);
            return map;
        }

    }

    @Override
    public TbUser update(TbUser tbUser) {
        int i=tbUserMapperCustom.updateByPhone(tbUser);
        TbUser tbUser1=null;
        if(i>0){
            tbUser1 = tbUserMapperCustom.selectByPhone(tbUser.getPhone());
        }
        return tbUser1;
    }

    @Override
    public TbUser query(String phone) {
        return tbUserMapperCustom.selectByPhone(phone);
    }
}
