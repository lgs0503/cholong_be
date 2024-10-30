package com.cholong.cholong_be.api.common.mapper;

import com.cholong.cholong_be.api.common.vo.RoleVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;

@Mapper
public interface RoleMapper {

    List<RoleVO> getRoleList(RoleVO roleVO);

    RoleVO getRole(@Param("idx") long idx);

    int addRole(RoleVO roleVO);

    int updateRole(RoleVO roleVO);

    int deleteRole(@Param("deleteList") ArrayList<Integer> deleteList);

}
