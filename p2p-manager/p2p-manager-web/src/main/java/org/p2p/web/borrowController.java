package org.p2p.web;

import org.p2p.pojo.po.TbBorrow;
import org.p2p.service.TbBorrowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;


/**
 * Created by 张平清 on 2017/9/6/006.
 *
 */

@Controller
@Scope("prototype")
public class borrowController {
    @Autowired
    private TbBorrowService service;

    @ModelAttribute("dir")
    public File pre(HttpServletRequest request){
        File dir=new File(new File(request.getServletContext().getRealPath("/")), "my_files");

        //验证文件夹是否存在，不存在就新建
        if(!dir.exists()){
            dir.mkdirs();
        }
        System.out.println(dir);
        return dir;
    }

    @RequestMapping("/borrow1")
    @ResponseBody
    public String insert(@RequestParam(name="carimg1",required=false) CommonsMultipartFile[] files,@ModelAttribute(value="dir") File dir,TbBorrow borrow,HttpServletRequest request) throws IOException {
        if(files.length>0){
        for(int i=0;i<files.length;i++) {
            String fileName =files[i].getOriginalFilename();
            //限制文件名称最长为50,超出获取后部分
            if(fileName.length()>50){
                fileName=fileName.substring(fileName.length()-51);
            }
            //给图片名加一些内容
            String fName=System.currentTimeMillis()+"_"+ UUID.randomUUID().toString()+"_"+fileName;
            if (i==0){
                borrow.setIdentityimg(fName);// 身份证正面照片
            }
            if (i==1){
                borrow.setIdentityimgback(fName);//身份证反面照片
            }
            if (i==2){
                borrow.setCarimg(fName);//汽车照片
            }
            if (i==3){
                borrow.setPledgeimg(fName);//车辆抵押证明
            }
            if (i==4){
                borrow.setHouse(fName);//附加资料(房产证)(照片)
            }
            if (i==5){
                borrow.setAddressimg(fName);//家庭住址照片
            }
            if (i==6){
                borrow.setBank(fName);//附加资料(银行流水)(照片)
            }
            if (i==7){
                borrow.setSocial(fName);//附加资料(社保)(照片):
            }
            if (i==8){
                borrow.setRelation(fName);//附加资料(家属身份证)(照片):
            }
            File file=new File(dir,fName);
            files[i].transferTo(file);//将文件内容存储到自定义文件中
        }
        }
        /*int uid= (int)request.getAttribute("uid");*/
        Date date=new Date();
       /* borrow.setUid(uid);*/
        borrow.setApplydate(date);
        borrow.setState(0);
        borrow.setReturnway("按日计息，到期还本息");
        String time=borrow.getGettime();
        borrow.setResidue(borrow.getMoney() * 1.002*Integer.parseInt(time.substring(0,time.length()-2)));
        if( service.insertMy(borrow)>0){
            service.updateUserStatus(1,24);
        }
        return "index";
    }




}
