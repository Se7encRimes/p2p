package org.p2p.pojo.po;

import java.util.Date;

public class TbItem {
    private Integer id;

    private Integer projectid;

    private Integer incestid;

    private Double money;

    private Double earnings;

    private Date createdate;

    private String extends1;

    private String extends2;

    private String extends3;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getProjectid() {
        return projectid;
    }

    public void setProjectid(Integer projectid) {
        this.projectid = projectid;
    }

    public Integer getIncestid() {
        return incestid;
    }

    public void setIncestid(Integer incestid) {
        this.incestid = incestid;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public Double getEarnings() {
        return earnings;
    }

    public void setEarnings(Double earnings) {
        this.earnings = earnings;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public String getExtends1() {
        return extends1;
    }

    public void setExtends1(String extends1) {
        this.extends1 = extends1 == null ? null : extends1.trim();
    }

    public String getExtends2() {
        return extends2;
    }

    public void setExtends2(String extends2) {
        this.extends2 = extends2 == null ? null : extends2.trim();
    }

    public String getExtends3() {
        return extends3;
    }

    public void setExtends3(String extends3) {
        this.extends3 = extends3 == null ? null : extends3.trim();
    }
}