package org.p2p.dao;

import org.apache.ibatis.annotations.Param;
import org.p2p.pojo.vo.AdminLoansCustom;
import org.p2p.utlis.Order;
import org.p2p.utlis.Page;

import java.util.List;

/**
 * Created by 吴春杰 on 2017/9/6.
 */
public interface AdminCustomMapper {

    List<AdminLoansCustom> listBorrows(@Param("page") Page page, @Param("order") Order order);

    long countItems();

    AdminLoansCustom getBorrwoById(@Param("id")int id);

    int anIntItem(@Param("state")int state,@Param("id")int id);

    List<AdminLoansCustom> listProjects(@Param("page") Page page, @Param("order") Order order);

    long countProjects();
}
