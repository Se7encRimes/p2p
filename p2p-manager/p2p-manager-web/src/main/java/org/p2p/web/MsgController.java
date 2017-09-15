package org.p2p.web;

import org.p2p.pojo.po.TbUser;
import org.p2p.service.MsgService;
import org.p2p.utlis.EmailUtils;
import org.p2p.utlis.ulogin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

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
    @RequestMapping(value="addEmail")
    public String sendEmail(HttpServletRequest request)throws Exception{
        Map<String,String> map = new HashMap<String,String>();
        String msg = "ok";   //发送状态
        String toEMAIL = request.getParameter("email");         //对方邮箱
        String TITLE = request.getParameter("title");          //标题
        String CONTENT = request.getParameter("content");        //内容
        EmailUtils.sendEmail(toEMAIL, TITLE, CONTENT);
        return "notice/notice";
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
