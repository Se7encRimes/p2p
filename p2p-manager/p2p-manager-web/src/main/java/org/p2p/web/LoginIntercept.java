package org.p2p.web;

import org.p2p.pojo.po.TbUser;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by 张平清 on 2017/9/9/009.
 */


public class LoginIntercept implements HandlerInterceptor {



    //配置需要忽略的请求路径名称
    private final String[] excludeNames1={"checkVcode","ogin","authCode","mydatetime",
            "Index-VerifyCode","index","egister","2016å¹´10æ\u009C\u008801æ\u0097¥","Index-VerifyCode.png","adminaction","borrow1","creatOrder"};
    private final String[] excludeNames2={"/"};

    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {

        TbUser user =(TbUser)httpServletRequest.getSession().getAttribute("user");
        Integer i=(Integer)httpServletRequest.getSession().getAttribute("admin");
        String path=httpServletRequest.getServletPath();
        System.out.println(path);
        for(String s1:excludeNames1){
            if(path.contains(s1)){
                return true;
            }
        }
        for (String s:excludeNames2){
            System.out.println(path);
            if(path.equals(s)){
                return true;
            }
        }


        if(user==null&&i!=null){
           /* httpServletRequest.getRequestDispatcher("admin").forward(httpServletRequest,httpServletResponse);*/
            return  true;
        }else  if(user==null&&i==null){
            httpServletRequest.getRequestDispatcher("login").forward(httpServletRequest,httpServletResponse);
            return  false;
        }else if(user!=null){
            if(path.equals("/admin")){
                if(i!=null&&i==1){
                   return true;
                }
                if(i==null||i!=1){
                    httpServletResponse.sendRedirect("index");
                    return false;
                }
            }
            return true;
        }
        return false;
    }


/*        if(i!=null) {
            if (i == 1) {
                return true;
            }
        }else if(user==null){
            httpServletRequest.getRequestDispatcher("login").forward(httpServletRequest,httpServletResponse);
            return  false;
        }else {
            return  true;
        }
        return true;
    }*/

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}

