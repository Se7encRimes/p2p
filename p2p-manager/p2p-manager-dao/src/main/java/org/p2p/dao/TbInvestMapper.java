package org.p2p.dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultType;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.p2p.pojo.po.TbInvest;
import org.p2p.pojo.po.TbInvestExample;
import org.p2p.pojo.vo.TbUserRecoding;

import java.util.List;

public interface TbInvestMapper {
    int countByExample(TbInvestExample example);

    int deleteByExample(TbInvestExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbInvest record);

    int insertSelective(TbInvest record);

    List<TbInvest> selectByExample(TbInvestExample example);

    TbInvest selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbInvest record, @Param("example") TbInvestExample example);

    int updateByExample(@Param("record") TbInvest record, @Param("example") TbInvestExample example);

    int updateByPrimaryKeySelective(TbInvest record);

    int updateByPrimaryKey(TbInvest record);

    //通过uid查询对象
    @Select("select * from tb_invest where userid=#{uid}")
    @ResultType(TbInvest.class)
    TbInvest selectByUid(Integer uid);
    //更新数据
    @Update("update tb_invest set  earnings=#{earnings}, money=#{money} where userid=#{userid}")
    int updateByUid(TbInvest record);
    //查询tb_invest的id
    @Select("select id from tb_invest where userid=#{uid}")
    int selectId(Integer uid);


    //查询余额
    @Select("select balance from tb_user where id=#{id}")
    double selectBalance(int id);

    //查询用户姓名
    @Select("select username from tb_user where id=#{id}")
    String selectName(int id);

    //查询个人投资记录
    @Select("select u.username ,u.phone,i.money,i.createdate from tb_user u left join tb_invest t  on u.id=t.userid " +
            "left join tb_item i on t.id=i.incestid  where u.id=#{id}")
    @ResultType(TbUserRecoding.class)
    List<TbUserRecoding> selectRecode(int id);

    //更新用户余额
    @Update("update tb_user set balance=#{arg0} where id=#{arg1}")
    int updateByBalance(double balance,int id);

    //查询项目总金额
    @Select("select money from tb_project where id=#{id}")
    double selectByMid(int id);

    //更新项目进度
    @Update("update tb_project set jindu=#{arg0} where id=#{arg1}")
    int updateByJin(double balance,int id);

    //更新用户余额


}