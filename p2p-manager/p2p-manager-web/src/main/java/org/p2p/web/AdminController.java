package org.p2p.web;

import org.p2p.pojo.vo.AdminLoansCustom;
import org.p2p.service.AdminLoansService;
import org.p2p.service.AdminProjectService;
import org.p2p.utlis.Order;
import org.p2p.utlis.Page;
import org.p2p.utlis.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by 吴春杰 on 2017/9/6.
 * 借款人申请贷款的后台审批和融资项目是否上线管理
 */
@Controller
@Scope("prototype")
public class AdminController {

    @Autowired
    private AdminLoansService service;

    @Autowired
    private AdminProjectService projectService;

    @RequestMapping("/borrows")
    @ResponseBody
    public Result<AdminLoansCustom> listBorrows(Page page,Order order){

        return service.listBorrows(page,order);
    }

    @RequestMapping("/admin-item")
    public String getBorrwoById(int id,Model model){
        if(id==0){
            return "admin-item";
        }
        AdminLoansCustom custom = service.getBorrwoById(id);
        model.addAttribute("custom",custom);
        return "admin-item";
    }

    @RequestMapping("/audit")
    @ResponseBody
    public int anIntItem(int state,int id){
        AdminLoansCustom custom = service.getBorrwoById(id);
        if(custom.getState()!=0){
            return -1;
        }
        if(state==1){
            TbProject project = new TbProject();
            project.setMoney(custom.getMoney());
            projectService.createProject(project);
        }
        return service.anIntItem(state,id);
    }

    @RequestMapping("/listProjects")
    @ResponseBody
    public List<TbProject> listProjects(Page page,Order order){
        return projectService.listProjects(page,order);
    }

    @RequestMapping(value="/editProjects",method = RequestMethod.POST)
    @ResponseBody
    public int editProjects(String id,String guarantee,String endtime,String rate,String gaiyao) throws ParseException {
        int pid = Integer.parseInt(id);
        Date time = new SimpleDateFormat("yyyy-MM-dd").parse(endtime);
        double lilv = Double.parseDouble(rate);
        TbProject project = new TbProject();
        project.setId(pid);
        project.setGuarantee(guarantee);
        project.setEndtime(time);
        project.setRate(lilv);
        project.setGaiyao(gaiyao);
        return projectService.editProject(project);
    }
    @RequestMapping("/upProjects")
    @ResponseBody
    public int upProjects(@RequestParam("ids[]") List<Integer> ids){
        return projectService.upProjects(ids);
    }
    @RequestMapping("/downProjects")
    @ResponseBody
    public int downProjects(@RequestParam("ids[]") List<Integer> ids){
        return projectService.downProjects(ids);
    }

    @RequestMapping("/adminProjectById")
    public String adminProjectById(int id,Model model){
        if(id==0){
            return "admin-project-item";
        }
        TbProject project = projectService.adminProjectById(id);
        model.addAttribute("project",project);
        return "admin-project-item";
    }
}
