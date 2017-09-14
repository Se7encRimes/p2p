package org.p2p.service.impl;

import org.p2p.dao.ProjectItemMapper;
import org.p2p.pojo.vo.ProjectItem;
import org.p2p.service.ProjectItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * Created by 吴春杰 on 2017/9/14.
 */
@Service
public class ProjectItemServiceImpl implements ProjectItemService {

    @Autowired
    private ProjectItemMapper mapper;

    @Override
    public ProjectItem getProjectItemById(int id) {
        ProjectItem projectItem = mapper.getProjectItemById(id);
        //获取当前时间
        long nowtime = System.currentTimeMillis();
        //获取融资到期时间
        Date enddate = projectItem.getEndtime();
        //得到2个时间的毫秒差
        long endtiem = enddate.getTime();
        //转换成天数
        long i = endtiem - nowtime;
        System.err.println("天数"+i/1000/60/60/24);
        long j = i/1000/60/60/24;
        //设置融资剩余时间
        projectItem.setResidueTime(j);
        //设置融资完成百分比
        if(projectItem.getJindu()==0){
            projectItem.setPlan(0);
        }else{
            projectItem.setPlan(projectItem.getJindu()/projectItem.getMoney()*100);
        }
        //设置融资剩余金额
        double residuemoeny = projectItem.getMoney()-projectItem.getJindu();
        projectItem.setResiduemoney(residuemoeny);
        Date applydate = projectItem.getApplydate();
        System.err.println("applydate:"+applydate);
        String gettime = projectItem.getGettime();
        int indexOf = gettime.indexOf("个");
        String strmonth = gettime.substring(0, indexOf);
        int month = Integer.parseInt(strmonth);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(applydate);
        calendar.add(Calendar.MONTH,month);
        Date calendarTime = calendar.getTime();
        projectItem.setLastTime(new SimpleDateFormat("yyyy-MM-dd").format(calendarTime));
        return projectItem;
    }
}
