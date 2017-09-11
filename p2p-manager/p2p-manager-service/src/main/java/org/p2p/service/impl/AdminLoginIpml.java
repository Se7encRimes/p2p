package org.p2p.service.impl;

import org.p2p.dao.TbAdminMapper;
import org.p2p.pojo.po.TbAdmin;
import org.p2p.service.AdminLoginService;
import org.p2p.utlis.ulogin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 张平清 on 2017/9/9/009.
 */
@Service
public class AdminLoginIpml implements AdminLoginService {


    @Autowired
    private TbAdminMapper dao;

    @Override
    public ulogin select(TbAdmin tbAdmin) {
        ulogin uLogin = new ulogin();
        TbAdmin tbAdmin1=dao.select(tbAdmin);
        System.out.println(tbAdmin1);
        if(tbAdmin1==null){
            uLogin.setStatus(3);
            uLogin.setComments("用户名不存在");
            uLogin.setUrl("adminlogin");
        }else if(tbAdmin.getPassword().equals(tbAdmin1.getPassword())){
            uLogin.setStatus(1);
            uLogin.setComments("登陆成功");
            uLogin.setUrl("admin");
        }else {
            uLogin.setStatus(2);
            uLogin.setComments("密码不正确");
            uLogin.setUrl("adminlogin");
        }
        return uLogin;
    }
}
