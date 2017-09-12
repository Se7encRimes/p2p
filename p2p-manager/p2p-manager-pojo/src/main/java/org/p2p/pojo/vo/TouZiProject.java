package org.p2p.pojo.vo;

import org.p2p.pojo.po.TbProject;

/**
 * Created by 吴春杰 on 2017/9/11.
 * 投资项目资料
 */
public class TouZiProject extends TbProject {
    //车辆照片
    private String carimg;
    //融资剩余时间
    private int residueTime;
    //融资完成百分比
    private double plan;
    //剩余融资金额
    private double residuemoney;

    public double getPlan() {
        return plan;
    }

    public void setPlan(double plan) {
        this.plan = plan;
    }

    public double getResiduemoney() {
        return residuemoney;
    }

    public void setResiduemoney(double residuemoney) {
        this.residuemoney = residuemoney;
    }

    public int getResidueTime() {
        return residueTime;
    }

    public void setResidueTime(int residueTime) {
        this.residueTime = residueTime;
    }

    public String getCarimg() {
        return carimg;
    }

    public void setCarimg(String carimg) {
        this.carimg = carimg;
    }
}
