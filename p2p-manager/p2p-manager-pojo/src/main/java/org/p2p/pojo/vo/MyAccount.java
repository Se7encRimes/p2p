package org.p2p.pojo.vo;

/**
 * User: zyyy
 * Date: 2017/9/18
 * Time: 21:37
 */
public class MyAccount {
    private double balance;//余额
    private double principal;//本金
    private double totalEarnings;//总收益
    private double tadayEarnings;//今天收益
    private double totalAssets;//总资金

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public double getPrincipal() {
        return principal;
    }

    public void setPrincipal(double principal) {
        this.principal = principal;
    }

    public double getTotalEarnings() {
        return totalEarnings;
    }

    public void setTotalEarnings(double totalEarnings) {
        this.totalEarnings = totalEarnings;
    }

    public double getTadayEarnings() {
        return tadayEarnings;
    }

    public void setTadayEarnings(double tadayEarnings) {
        this.tadayEarnings = tadayEarnings;
    }

    public double getTotalAssets() {
        return totalAssets;
    }

    public void setTotalAssets(double totalAssets) {
        this.totalAssets = totalAssets;
    }
}
