package org.p2p.service.impl;

import org.p2p.dao.TbUserMapper;
import org.p2p.service.MsgService;
import org.p2p.utlis.EmailUtils;
import org.p2p.utlis.MD5;
import org.p2p.utlis.MsgUtils;

import org.p2p.utlis.ulogin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.Random;


/**
 * Created by Administrator on 2017/9/14/014.
 */
@Service
public class MsgServiceImpl implements MsgService{

    @Autowired
    private TbUserMapper dao;


    int numb= (int)((Math.random()*9+1)*100000);
    ulogin ulogin=new ulogin();
    private MD5 md5 = new MD5();
    @Override
    public ulogin msg(String cellphone) throws IOException {



        if(dao.selectMsg(cellphone)!=null){
            ulogin.setStatus(1);
            ulogin.setComments("验证信息已经发送至您的手机，请查收。");
        }else {

            ulogin.setStatus(0);
            ulogin.setComments("用户名或验证码错误，请重新输入");
        }

        System.out.println("pass======>"+dao.selectMsg(cellphone));

        MsgUtils.SendMsg(cellphone, "亲爱的" + cellphone + "用户,您找回密码的验证码是:" + numb);
        System.out.println(cellphone+"<==>"+"<===>"+numb);

        return ulogin;
    }

    public ulogin  find(int pcode){
        if(numb==pcode){
            ulogin.setStatus(1);
            ulogin.setComments("验证通过，请修改密码");
            ulogin.setUrl("reforget");
            return ulogin;
        }
        return null;
    }

    @Override
    public ulogin updateById(String password1, String password2,String phone) {

        if(password1.equals(password2)){
            String password=md5.getMD5ofStr(password2);
            if(dao.updateById(password,phone)>0){
                ulogin.setStatus(1);
                ulogin.setUrl("login");
                ulogin.setComments("密码修改成功，即将进入到登入界面");
                return ulogin;
            }else{
                ulogin.setStatus(2);
                ulogin.setUrl("reforget");
                ulogin.setComments("两次输入的密码不一致，请重新输入");
                return ulogin;
            }
        }

        return ulogin;
    }


    //邮箱找回密码
    @Override
    public ulogin selectEmil(String username,String emil) {

        if(dao.selectEmil(username)!=null){
            ulogin.setStatus(1);
            ulogin.setComments("验证信息已经发送至您的邮箱，请查收");
            EmailUtils.sendEmail(emil, "亲爱的"+username+"用户您好：", "点击下面链接可重置密码:http://10.31.152.19:8080/p2p/reforget");
        }else{
            ulogin.setComments("用户名或者邮箱不存在，请重新输入");

        }
        return ulogin;
    }
}
