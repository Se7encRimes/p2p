package org.p2p.pojo.po;

import java.util.Date;

public class TbProject {
    private Integer id;

    private Integer bid;

    private Double money;

    private Double rate;

    private Integer state;

    private Integer projectstate;

    private String guarantee;

    private Date endtime;

    private Date createdate;

    private String gaiyao;

    private String carinfo;

    private Double jindu;

    private String extends1;

    private String extends2;

    private String extends3;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public Double getRate() {
        return rate;
    }

    public void setRate(Double rate) {
        this.rate = rate;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getProjectstate() {
        return projectstate;
    }

    public void setProjectstate(Integer projectstate) {
        this.projectstate = projectstate;
    }

    public String getGuarantee() {
        return guarantee;
    }

    public void setGuarantee(String guarantee) {
        this.guarantee = guarantee == null ? null : guarantee.trim();
    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public String getGaiyao() {
        return gaiyao;
    }

    public void setGaiyao(String gaiyao) {
        this.gaiyao = gaiyao == null ? null : gaiyao.trim();
    }

    public String getCarinfo() {
        return carinfo;
    }

    public void setCarinfo(String carinfo) {
        this.carinfo = carinfo == null ? null : carinfo.trim();
    }

    public Double getJindu() {
        return jindu;
    }

    public void setJindu(Double jindu) {
        this.jindu = jindu;
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