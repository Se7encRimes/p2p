package org.p2p.pojo.po;

public class TbLoans {
    private Integer id;

    private Integer uid;

    private String identityimg;

    private String address;

    private String addressimg;

    private String othername;

    private String otherphone;

    private String otheraddress;

    private String extends1;

    private String extends2;

    private String extends3;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getIdentityimg() {
        return identityimg;
    }

    public void setIdentityimg(String identityimg) {
        this.identityimg = identityimg == null ? null : identityimg.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getAddressimg() {
        return addressimg;
    }

    public void setAddressimg(String addressimg) {
        this.addressimg = addressimg == null ? null : addressimg.trim();
    }

    public String getOthername() {
        return othername;
    }

    public void setOthername(String othername) {
        this.othername = othername == null ? null : othername.trim();
    }

    public String getOtherphone() {
        return otherphone;
    }

    public void setOtherphone(String otherphone) {
        this.otherphone = otherphone == null ? null : otherphone.trim();
    }

    public String getOtheraddress() {
        return otheraddress;
    }

    public void setOtheraddress(String otheraddress) {
        this.otheraddress = otheraddress == null ? null : otheraddress.trim();
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