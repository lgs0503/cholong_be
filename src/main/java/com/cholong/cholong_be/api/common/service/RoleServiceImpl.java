package com.cholong.cholong_be.api.common.service;

import com.cholong.cholong_be.api.common.mapper.RoleMapper;
import com.cholong.cholong_be.api.common.vo.RoleVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleMapper roleMapper;

    @Override
    public List<RoleVO> getRoleList(RoleVO roleVO) {
        return roleMapper.getRoleList(roleVO);
    }

    @Override
    public RoleVO getRole(long idx) {
        return roleMapper.getRole(idx);
    }

    @Override
    public int addRole(RoleVO roleVO) {
        return roleMapper.addRole(roleVO);
    }

    @Override
    public int updateRole(RoleVO roleVO) {
        return roleMapper.updateRole(roleVO);
    }

    @Override
    public int deleteRole(ArrayList<Integer> deleteList) {
        return roleMapper.deleteRole(deleteList);
    }
}
