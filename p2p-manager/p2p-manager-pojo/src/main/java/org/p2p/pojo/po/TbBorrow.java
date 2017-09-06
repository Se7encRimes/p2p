package org.p2p.pojo.po;

import java.util.Date;

public class TbBorrow {
    private Integer id;

    private Double money;//借款金额？页面提示出利率

    private String carimg;//汽车照片

    private String carnumber;//车牌号

    private String gettime;//借款时间

    private Double residue;//剩余还款金额  金额*月份*0.2/万分之

    private Integer loansid;//借款人的主键 需通过session去查借款人的id

    private Integer state;//0申请时直接将数据库改为0

    private String purpose;//借款用途

    private String returnway;//还款方式  总金额*

    private String pledgeimg;//车子抵押照片

    private Date applydate;//申请时间

    private String house;//房产证照片

    private String bank;//银行流水照片

    private String social;//社保照片

    private String relation;//家属身份证照片

    private String extends1;

    private String extends2;

    private String extends3;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public String getCarimg() {
        return carimg;
    }

    public void setCarimg(String carimg) {
        this.carimg = carimg == null ? null : carimg.trim();
    }

    public String getCarnumber() {
        return carnumber;
    }

    public void setCarnumber(String carnumber) {
        this.carnumber = carnumber == null ? null : carnumber.trim();
    }

    public String getGettime() {
        return gettime;
    }

    public void setGettime(String gettime) {
        this.gettime = gettime == null ? null : gettime.trim();
    }

    public Double getResidue() {
        return residue;
    }

    public void setResidue(Double residue) {
        this.residue = residue;
    }

    public Integer getLoansid() {
        return loansid;
    }

    public void setLoansid(Integer loansid) {
        this.loansid = loansid;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getPurpose() {
        return purpose;
    }

    public void setPurpose(String purpose) {
        this.purpose = purpose == null ? null : purpose.trim();
    }

    public String getReturnway() {
        return returnway;
    }

    public void setReturnway(String returnway) {
        this.returnway = returnway == null ? null : returnway.trim();
    }

    public String getPledgeimg() {
        return pledgeimg;
    }

    public void setPledgeimg(String pledgeimg) {
        this.pledgeimg = pledgeimg == null ? null : pledgeimg.trim();
    }

    public Date getApplydate() {
        return applydate;
    }

    public void setApplydate(Date applydate) {
        this.applydate = applydate;
    }

    public String getHouse() {
        return house;
    }

    public void setHouse(String house) {
        this.house = house == null ? null : house.trim();
    }

    public String getBank() {
        return bank;
    }

    public void setBank(String bank) {
        this.bank = bank == null ? null : bank.trim();
    }

    public String getSocial() {
        return social;
    }

    public void setSocial(String social) {
        this.social = social == null ? null : social.trim();
    }

    public String getRelation() {
        return relation;
    }

    public void setRelation(String relation) {
        this.relation = relation == null ? null : relation.trim();
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