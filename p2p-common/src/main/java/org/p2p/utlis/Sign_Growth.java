package org.p2p.utlis;

/**
 * User: zyyy
 * Date: 2017/9/13
 * Time: 11:34
 */
public class Sign_Growth {
    private Data data;
    private int resultcode;

    public Data getData() {
        return data;
    }

    public void setData(Data data) {
        this.data = data;
    }

    public int getResultcode() {
        return resultcode;
    }

    public void setResultcode(int resultcode) {
        this.resultcode = resultcode;
    }

    @Override
    public String toString() {
        return "Sign_Growth{" +
                "data=" + data +
                ", resultcode=" + resultcode +
                '}';
    }
}
