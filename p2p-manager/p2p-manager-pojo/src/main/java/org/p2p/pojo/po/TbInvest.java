package org.p2p.pojo.po;

public class TbInvest {
    private Integer id;

    private Integer userid;

    private String bankcard;

    private Double earnings;

    private Double money;

    private String extends1;

    private String extends2;

    private String extends3;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getBankcard() {
        return bankcard;
    }

    public void setBankcard(String bankcard) {
        this.bankcard = bankcard == null ? null : bankcard.trim();
    }

    public Double getEarnings() {
        return earnings;
    }

    public void setEarnings(Double earnings) {
        this.earnings = earnings;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
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