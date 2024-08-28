package com.cholong.cholong_be.api.common.mapper;

import com.cholong.cholong_be.api.common.vo.MenuVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;

@Mapper
public interface MenuMapper {

    List<MenuVO> getMenuList(MenuVO menuVO);

    MenuVO getMenu(@Param("idx") long idx);

    int addMenu(MenuVO codeVO);

    int updateMenu(MenuVO codeVO);

    int deleteMenu(@Param("deleteList") ArrayList<Integer> deleteList);
}
