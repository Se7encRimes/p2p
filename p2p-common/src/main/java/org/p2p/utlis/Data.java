package org.p2p.utlis;

/**
 * User: zyyy
 * Date: 2017/9/13
 * Time: 11:42
 */
public class Data {
    private int level;
    private int growthvalue;
    private int integral;
    private String name;

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public int getGrowthvalue() {
        return growthvalue;
    }

    public void setGrowthvalue(int growthvalue) {
        this.growthvalue = growthvalue;
    }

    public int getIntegral() {
        return integral;
    }

    public void setIntegral(int integral) {
        this.integral = integral;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Data{" +
                "level=" + level +
                ", growthvalue=" + growthvalue +
                ", integral=" + integral +
                ", name='" + name + '\'' +
                '}';
    }
}
