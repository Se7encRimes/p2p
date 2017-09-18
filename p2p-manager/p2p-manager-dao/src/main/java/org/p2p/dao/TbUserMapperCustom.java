package org.p2p.dao;

import org.apache.ibatis.annotations.*;
import org.apache.ibatis.type.JdbcType;
import org.p2p.pojo.po.TbUser;
import org.p2p.utlis.InvestItem;
import org.p2p.utlis.UserEnerning;

import java.util.List;

/**
 * Created by zyyy on 2017/9/7.
 */
public interface TbUserMapperCustom {

    @Select("select id, username, password, card, phone, invest, loans, balance,createdate,bankcard,growth,jifen from tb_user where phone=#{phone}")
    TbUser selectByPhone(String phone);

    @Update("update tb_user set username=#{username}, card=#{card}, bankcard=#{bankcard} where phone=#{phone}")
    Integer updateByPhone(TbUser tbUser);

    @Select("select money from tb_invest where userid=#{userId}")
    Double selectMoneyByUserId(int userId);

    @Select("select earnings from tb_invest where userid=#{userId}")
    Double selectEarningTotalByUserId(int userId);

    @Select("select * from tb_user where id=#{userId}")
    TbUser selectTbuserByUserId(int userId);

    @Select("select month(em.createdate),sum(em.earnings) from tb_item em LEFT JOIN tb_invest st on st.id=em.incestid  where st.userid=#{userId} group by month(createdate) ")
    @Results({
            @Result(column = "month(em.createdate)",property = "month",jdbcType = JdbcType.VARCHAR),
            @Result(column = "sum(em.earnings)",property = "sum",jdbcType = JdbcType.VARCHAR)
    })
    List<UserEnerning> selectUserMonthEnerning(int userId);

    @Select("select em.money money,p.id id,p.rate rate ,DATE_FORMAT(em.createdate,'%Y-%m-%d %T') createdate,DATE_FORMAT(p.endtime,'%Y-%m-%d %T') endtime from tb_project p LEFT JOIN tb_item em ON p.id=em.projectid LEFT JOIN tb_invest st ON em.incestid=st.id WHERE st.userid=#{userId} ORDER BY em.createdate")
    @Results({
            @Result(column = "money",property = "money",jdbcType = JdbcType.DOUBLE),
            @Result(column = "id",property = "id",jdbcType = JdbcType.INTEGER),
            @Result(column = "rate",property = "rate",jdbcType = JdbcType.DOUBLE),
            @Result(column = "createdate",property = "createdate"),
            @Result(column = "endtime",property = "endtime")
    })
    List<InvestItem> selectInvestItem(int userId);

    @Select("select id from tb_sign where to_days(signtime) = to_days(now()) and uid=#{userId};")
    Integer selectSignByuserId(int userId);

    @Insert("insert into tb_sign (uid,signtime) values(#{userId},now())")
    Integer sign_in(int userId);

    @Update("update tb_user set growth=growth+2 where id=#{userId}")
    Integer updateGrowth(int userId);

    @Select("select balance from tb_user where id=#{userId}")
    Double selectAccountBalance(int userId);
}
