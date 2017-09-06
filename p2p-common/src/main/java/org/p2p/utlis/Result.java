package org.p2p.utlis;

import java.util.List;

/**
 * Created by 吴春杰 on 2017/9/4.
 */
public class Result<T> {
    private long total;
    private List<T> rows;

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public List<T> getRows() {
        return rows;
    }

    public void setRows(List<T> rows) {
        this.rows = rows;
    }
}
