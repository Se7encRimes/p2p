package org.p2p.dao;

import org.apache.ibatis.jdbc.SQL;
import org.p2p.pojo.vo.ProjectVague;
import org.p2p.utlis.Page;

/**
 * Created by 吴春杰 on 2017/9/12.
 */
public class TouZiProjectProvider {
    public String projectVague(ProjectVague projectVague,Page page){
        String sql = "slect p.*,b.carimg from tb_project p left join tb_borrow b on p.bid=b.id ";
        sql += new SQL(){
            {
                if(projectVague.getMaxMoney()!=null){
                    WHERE("money>#{arg0.minMoney} and money<#{arg0.maxMoney}");
                }
                if(projectVague.getMaxRate()!=null){
                    WHERE("money>#{arg0.minRate} and money<#{arg0.maxRate}");
                }
                WHERE("guarantee is not null");
            }
        }.toString();
        return "";
    }
}
