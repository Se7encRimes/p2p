package org.p2p.pojo.vo;

import java.util.Date;

/**
 * Created by 张平清 on 2017/9/13/013.
 */
public class TbUserRecoding {
    private String username;
    private String phone;
    private double money;
    private Date createdate;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public double getMoney() {
        return money;
    }

    public void setMoney(double money) {
        this.money = money;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }


}
