package org.p2p.service.impl;

import org.p2p.dao.TouZiProjectMapper;
import org.p2p.pojo.vo.TouZiProject;
import org.p2p.service.TouZiService;
import org.p2p.utlis.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

    /**
     * 查询投资项目列表
     * @param page
     * @return List<TouZiProject>
     */
    @Override
    public List<TouZiProject> touziList(Page page) {
        //查询项目数
        List<TouZiProject>  projects = mapper.touziList(page);
        for (TouZiProject project:projects){
            //获取当前时间
            long nowtime = System.currentTimeMillis();
            //获取融资到期时间
            Date enddate = project.getEndtime();
            //得到2个时间的毫秒差
            long endtiem = enddate.getTime();
            //转换成天数
            long i = endtiem - nowtime;
            int j = (int)i/1000/60/60/24;
            //设置融资剩余时间
            project.setResidueTime(j);
            //设置融资完成百分比
            if(project.getJindu()==0){
                project.setPlan(0);
            }else{
                project.setPlan(project.getJindu()/project.getMoney()*100);
            }
            //设置融资剩余金额
            project.setResiduemoney(project.getMoney()-project.getJindu());
        }
        return projects;
    }
}
