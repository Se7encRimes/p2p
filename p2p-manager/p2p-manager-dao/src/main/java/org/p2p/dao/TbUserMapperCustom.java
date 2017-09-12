package org.p2p.dao;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.p2p.pojo.po.TbUser;

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
}
