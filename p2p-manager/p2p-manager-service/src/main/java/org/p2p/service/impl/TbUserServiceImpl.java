package org.p2p.service.impl;

import org.p2p.dao.TbUserMapper;
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
    private TbUserMapper userMapper;

    public int save(TbUser user){
       TbUser user1 = userMapper.selectByPhone(user.getPhone());
        if (user1==null) {
            return userMapper.insert(user);
        }else {
            return -1;
        }
    };

    public Map<String, Object> userlogin(TbUser user){
        TbUser user2 = userMapper.selectByPhone(user.getPhone());
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


}
