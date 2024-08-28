package com.cholong.cholong_be.api.common.service;

import com.cholong.cholong_be.api.common.mapper.MenuMapper;
import com.cholong.cholong_be.api.common.vo.MenuVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class MenuServiceImpl implements MenuService{

    private final MenuMapper menuMapper;

    @Autowired
    public MenuServiceImpl (MenuMapper menuMapper) {
        this.menuMapper = menuMapper;
    }

    @Override
    public List<MenuVO> getMenuList(MenuVO menuVO) {
        return menuMapper.getMenuList(menuVO);
    }

    @Override
    public MenuVO getMenu(long idx) {
        return menuMapper.getMenu(idx);
    }

    @Override
    public int addMenu(MenuVO menuVO) {
        return menuMapper.addMenu(menuVO);
    }

    @Override
    public int updateMenu(MenuVO menuVO) {
        return menuMapper.updateMenu(menuVO);
    }

    @Override
    public int deleteMenu(ArrayList<Integer> deleteList) {
        return menuMapper.deleteMenu(deleteList);
    }
}
