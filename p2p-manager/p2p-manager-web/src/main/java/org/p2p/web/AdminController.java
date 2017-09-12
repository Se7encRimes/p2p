package org.p2p.web;

import org.p2p.pojo.po.TbProject;
import org.p2p.pojo.po.TbUser;
import org.p2p.pojo.vo.AdminLoansCustom;
import org.p2p.service.AdminLoansService;
import org.p2p.service.AdminProjectService;
import org.p2p.service.TbUserGetMoney;
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

    @Autowired
    private TbUserGetMoney tbUserGetMoney;

    /**
     * 查询借款申请列表
     * @param page
     * @param order
     * @return Result<AdminLoansCustom>
     */
    @RequestMapping("/borrows")
    @ResponseBody
    public Result<AdminLoansCustom> listBorrows(Page page,Order order){

        return service.listBorrows(page,order);
    }

    /**
     * 按主键查询借款申请
     * @param id
     * @param model
     * @return String
     */
    @RequestMapping("/admin-item")
    public String getBorrwoById(int id,Model model){
        if(id==0){
            return "admin-item";
        }
        AdminLoansCustom custom = service.getBorrwoById(id);
        model.addAttribute("custom",custom);
        return "admin-item";
    }

    /**
     * 审批借款申请
     * @param state
     * @param id
     * @return int
     */
    @RequestMapping("/audit")
    @ResponseBody
    public int anIntItem(int state,int id){
        //查询当前申请是否已经被审批过
        AdminLoansCustom custom = service.getBorrwoById(id);
        if(custom.getState()!=0){
            return -1;
        }
        //如果审批通过,则在投资项目中创建一条记录
        if(state==1){
            TbProject project = new TbProject();
            //设置当前项目是哪个借款人申请审批通过创建的
            project.setBid(id);
            //设置借款人申请的金额为融资金额
            double money = custom.getMoney();
            project.setMoney(money);
            //创建记录
            projectService.createProject(project);
            //审核通过,将申请的钱增加在用户余额中
            TbUser tbUser = tbUserGetMoney.selectUserByBid(id);
            if(tbUser.getBalance()==null){
                tbUser.setBalance(money);
            }else{
                tbUser.setBalance(tbUser.getBalance()+money);
            }
            tbUserGetMoney.setUserBalance(tbUser);
        }
        return service.anIntItem(state,id);
    }

    /**
     * 得到投资项目的列表
     * @param page
     * @param order
     * @return List<TbProject>
     */
    @RequestMapping("/listProjects")
    @ResponseBody
    public List<TbProject> listProjects(Page page,Order order){
        return projectService.listProjects(page,order);
    }

    /**
     * 修改投资项目的资料
     * @param id
     * @param guarantee
     * @param endtime
     * @param rate
     * @param gaiyao
     * @param carinfo
     * @return int
     * @throws ParseException
     */
    @RequestMapping(value="/editProjects",method = RequestMethod.POST)
    @ResponseBody
    public int editProjects(String id,String guarantee,String endtime,String rate,String gaiyao,String carinfo) throws ParseException {
        //由于未知原因MVC无法接受ajax的数据且不能自动转化数据类型
        int pid = Integer.parseInt(id);
        Date time = new SimpleDateFormat("yyyy-MM-dd").parse(endtime);
        double lilv = Double.parseDouble(rate);
        TbProject project = new TbProject();
        project.setId(pid);
        project.setGuarantee(guarantee);
        project.setEndtime(time);
        project.setRate(lilv);
        project.setGaiyao(gaiyao);
        project.setCarinfo(carinfo);
        return projectService.editProject(project);
    }

    /**
     * 项目上线
     * @param ids
     * @return int
     */
    @RequestMapping("/upProjects")
    @ResponseBody
    public int upProjects(@RequestParam("ids[]") List<Integer> ids){
        System.err.println(ids);
        return projectService.upProjects(ids);
    }

    /**
     * 项目下线
     * @param ids
     * @return int
     */
    @RequestMapping("/downProjects")
    @ResponseBody
    public int downProjects(@RequestParam("ids[]") List<Integer> ids){
        System.err.println(ids);
        return projectService.downProjects(ids);
    }

    /**
     * 按主键查询投资项目
     * @param id
     * @param model
     * @return String
     */
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
