package org.p2p.dao;

import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.type.JdbcType;
import org.p2p.pojo.po.TbUser;
import org.p2p.utlis.UserEnerning;

import java.util.List;

/**
 * Created by zyyy on 2017/9/7.
 */
public interface TbUserMapperCustom {

    @Select("select id, username, password, card, phone, invest, loans, balance,createdate,bankcard,growth,jifen from tb_user where phone=#{phone}")
    TbUser selectByPhone(String phone);

    @Update("update tb_user set username=#{username}, card=#{card}, bankcard=#{bankcard} where phone=#{phone}")
    int updateByPhone(TbUser tbUser);

    @Select("select money from tb_invest where userid=#{userId}")
    double selectMoneyByUserId(int userId);

    @Select("select earnings from tb_invest where userid=#{userId}")
    double selectEarningTotalByUserId(int userId);

    @Select("select * from tb_user where id=#{userId}")
    TbUser selectTbuserByUserId(int userId);

    @Select("select month(em.createdate),sum(em.earnings) from tb_item em LEFT JOIN tb_invest st on st.id=em.incestid  where st.userid=#{userId} group by month(createdate) ")
    @Results({
            @Result(column = "month(em.createdate)",property = "month",jdbcType = JdbcType.VARCHAR),
            @Result(column = "sum(em.earnings)",property = "sum",jdbcType = JdbcType.VARCHAR)
    })
    List<UserEnerning> selectUserMonthEnerning(int userId);
}
