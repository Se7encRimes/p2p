package org.p2p.service;

import org.p2p.pojo.po.TbAdmin;
import org.p2p.utlis.ulogin;

/**
 * User:
 * Date: 2017/9/9
 * Time: 22:03
 */
public interface AdminLoginService {
    ulogin select(TbAdmin tbAdmin);
}
