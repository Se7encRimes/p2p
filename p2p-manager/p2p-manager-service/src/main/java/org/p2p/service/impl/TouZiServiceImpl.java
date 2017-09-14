package org.p2p.service.impl;

import org.p2p.dao.TbProjectMapper;
import org.p2p.dao.TouZiProjectMapper;
import org.p2p.pojo.vo.ProjectVague;
import org.p2p.pojo.vo.TouZiProject;
import org.p2p.service.TouZiService;
import org.p2p.utlis.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * Created by 吴春杰 on 2017/9/11.
 * 对投资项目的操作
 */
@Service
public class TouZiServiceImpl implements TouZiService {

    @Autowired
    private TouZiProjectMapper mapper;

    @Autowired
    private TbProjectMapper tbProjectMapper;

    /**
     * 查询投资项目列表
     * @param page
     * @return List<TouZiProject>
     */
    @Override
    public List<TouZiProject> touziList(Page page) {
        //查询项目数
        List<TouZiProject>  projects = mapper.touziList(page);
        List<TouZiProject> touZiProjects = null;
        for(int i=0;;i++){
            touZiProjects = getTouziProject(projects);
            if(touZiProjects!=null){
                break;
            }
        }
        return touZiProjects;
    }

    /**
     * 条件查询投资项目列表
     * @param projectVague
     * @param page
     * @return List<TouZiProject>
     */
    @Override
    public List<TouZiProject> projectVague(ProjectVague projectVague,Page page) {
        List<TouZiProject>  projects = mapper.projectVague(projectVague,page);
        List<TouZiProject> touZiProjects = null;
        for(int i=0;;i++){
            touZiProjects = getTouziProject(projects);
            if(touZiProjects!=null){
                break;
            }
        }
        return touZiProjects;

    }

    /**
     * 获取分页页数
     * @param projectVague
     * @return int
     */
    @Override
    public int getPageSize(ProjectVague projectVague) {
        return mapper.getPageSize(projectVague);
    }

    /**
     * 请求数据内容转换
     * @param borrow_interest_rate
     * @param borrow_money
     * @param borrow_status
     * @return ProjectVague
     */
    @Override
    public ProjectVague getProjectVague(String borrow_interest_rate, String borrow_money, String borrow_status) {
        String[] money = new String[2];
        String[] rate = new String[2];
        ProjectVague projectVague = new ProjectVague();
        if("0".equals(borrow_interest_rate)){
            projectVague.setMaxRate(-1);
        }else if(borrow_interest_rate!=null&&borrow_interest_rate.length()>0){
            rate = borrow_interest_rate.split("\\|");
            double minRate = Double.parseDouble(rate[0]);
            double maxRate = Double.parseDouble(rate[1]);
            projectVague.setMinRate(minRate);
            projectVague.setMaxRate(maxRate);
            System.err.println("rate:"+ Arrays.toString(rate));
        }
        if("0".equals(borrow_money)){
            projectVague.setMaxMoney(-1);
        }else if(borrow_money!=null&&borrow_money.length()>0){
            money = borrow_money.split("\\|");
            double minMoney = Double.parseDouble(money[0]);
            double maxMoney = Double.parseDouble(money[1]);
            projectVague.setMinMoney(minMoney);
            projectVague.setMaxMoney(maxMoney);
        }
        int state = -1;
        if(borrow_status!=null&&borrow_status.length()>0){
            state = Integer.parseInt(borrow_status);
        }
        projectVague.setState(state);
        return projectVague;
    }

    /**
     * 转换成符合页面所需要数据的类型和内容
     * @param projects
     * @return List<TouZiProject>
     */
    public List<TouZiProject> getTouziProject(List<TouZiProject> projects){
        for (TouZiProject project:projects){
            //获取当前时间
            long nowtime = System.currentTimeMillis();
            //获取融资到期时间
            Date enddate = project.getEndtime();
            //得到2个时间的毫秒差
            long endtiem = enddate.getTime();
            //转换成天数
            long i = endtiem - nowtime;
            long j = i/1000/60/60/24;
            //设置融资剩余时间
            project.setResidueTime(j);
            //设置融资完成百分比
            if(project.getJindu()==0){
                project.setPlan(0);
            }else{
                project.setPlan(project.getJindu()/project.getMoney()*100);
            }
            //设置融资剩余金额
            double residuemoeny = project.getMoney()-project.getJindu();
            if(residuemoeny==0&&project.getState()==0){
                project.setState(1);
                tbProjectMapper.updateByPrimaryKeySelective(project);
                return null;
            }else if(residuemoeny>0){
                project.setState(0);
            }
            project.setResiduemoney(residuemoeny);
        }
        return projects;
    }
}
