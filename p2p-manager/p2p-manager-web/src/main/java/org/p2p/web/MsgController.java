package org.p2p.web;

import org.p2p.pojo.po.TbUser;
import org.p2p.service.MsgService;
import org.p2p.utlis.ulogin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by 张平清 on 2017/9/14/014.
 */
@Controller
@Scope("prototype")
public class MsgController {

    @Autowired
    private MsgService msgService;
    //发送邮件
    /**
     * 发送邮件
     * @return
     * @throws Exception
     */
    @RequestMapping(value="sendEmail")
    @ResponseBody
    public ulogin sendEmail(HttpServletRequest request,String user_email,String user_name)throws Exception{

        return msgService.selectEmil(user_name ,user_email);
    }

    //发送短信
    @RequestMapping("sendphone")
    @ResponseBody
    public ulogin sendmsg(HttpServletRequest request,HttpSession session,String cellphone,String user_name,String pcode) throws  IOException {
       //随机生成6位数字
        System.out.println("phone:"+cellphone+"==>name:"+user_name+"==>code:");
        String code=(String )session.getAttribute("strCode");
        if(code.equals(pcode)){
           return msgService.msg(user_name,cellphone);
        }
        return null;
    }

  //验证手机验证码
    @RequestMapping("find")
    @ResponseBody
    public  ulogin  find(String pcode){
        int code=Integer.parseInt(pcode);
       if(msgService.find(code)!=null){
           return msgService.find(code);
       }
        return null;
    }

    //确认修改密码
    @RequestMapping("repass")
    @ResponseBody
    public ulogin repass(HttpSession session,String password1,String password2){
        TbUser user=(TbUser)session.getAttribute("user");
        int id=user.getId();
        System.out.println(password1+"=====》"+password2+"=====》");
        return msgService.updateById(password1,password2,id);
    }

}
