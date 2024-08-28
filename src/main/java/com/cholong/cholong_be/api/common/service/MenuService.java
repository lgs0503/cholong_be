package com.cholong.cholong_be.api.common.service;

import com.cholong.cholong_be.api.common.vo.MenuVO;

import java.util.ArrayList;
import java.util.List;

public interface MenuService {

    List<MenuVO> getMenuList(MenuVO menuVO);

    MenuVO getMenu(long idx);

    int addMenu(MenuVO menuVO);

    int updateMenu(MenuVO menuVO);

    int deleteMenu(ArrayList<Integer> deleteList);
}
