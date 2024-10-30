package com.cholong.cholong_be.api.common.service;

import com.cholong.cholong_be.api.common.vo.RoleVO;

import java.util.ArrayList;
import java.util.List;

public interface RoleService {

    List<RoleVO> getRoleList(RoleVO roleVO);

    RoleVO getRole(long idx);

    int addRole(RoleVO roleVO);

    int updateRole(RoleVO roleVO);

    int deleteRole(ArrayList<Integer> deleteList);
}
