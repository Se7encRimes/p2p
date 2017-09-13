package org.p2p.pojo.vo;

/**
 * Created by 吴春杰 on 2017/9/12.
 */
public class ProjectVague {
    private double minMoney;
    private double maxMoney;
    private double minRate;
    private double maxRate;
    private int state;

    public double getMinMoney() {
        return minMoney;
    }

    public void setMinMoney(double minMoney) {
        this.minMoney = minMoney;
    }

    public double getMaxMoney() {
        return maxMoney;
    }

    public void setMaxMoney(double maxMoney) {
        this.maxMoney = maxMoney;
    }

    public double getMinRate() {
        return minRate;
    }

    public void setMinRate(double minRate) {
        this.minRate = minRate;
    }

    public double getMaxRate() {
        return maxRate;
    }

    public void setMaxRate(double maxRate) {
        this.maxRate = maxRate;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }
}
