package org.p2p.pojo.vo;

import java.util.Date;

/**
 * Created by 吴春杰 on 2017/9/14.
 */
public class ProjectItem extends TouZiProject {
    private Date applydate;
    private String gettime;
    private String lastTime;

    public String getLastTime() {
        return lastTime;
    }

    public void setLastTime(String lastTime) {
        this.lastTime = lastTime;
    }

    public Date getApplydate() {
        return applydate;
    }

    public void setApplydate(Date applydate) {
        this.applydate = applydate;
    }

    public String getGettime() {
        return gettime;
    }

    public void setGettime(String gettime) {
        this.gettime = gettime;
    }
}
