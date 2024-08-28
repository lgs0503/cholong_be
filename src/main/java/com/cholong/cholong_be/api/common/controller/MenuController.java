package com.cholong.cholong_be.api.common.controller;

import com.cholong.cholong_be.api.common.service.MenuService;
import com.cholong.cholong_be.api.common.vo.MenuVO;
import com.cholong.cholong_be.api.common.vo.MenuVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/common/menu")
public class MenuController {

    @Autowired
    private MenuService menuService;

    @RequestMapping("/menuMgrPage")
    public ModelAndView menuMgrPage() {

        return new ModelAndView("common/menu/menu");
    }

    @ResponseBody
    @RequestMapping(value = "/getMenuList", method = RequestMethod.GET)
    public List<MenuVO> getMenuList (
        @RequestParam(value = "menuName", defaultValue = "") String menuName,
        @RequestParam(value = "upperMenuIdx", defaultValue = "") long upperMenuIdx
    ) {

        MenuVO menuVO = new MenuVO();
        menuVO.setMenuName(menuName);
        menuVO.setUpperMenuIdx(upperMenuIdx);

        return menuService.getMenuList(menuVO);
    }

    @ResponseBody
    @RequestMapping(value = "/getMenu", method = RequestMethod.GET)
    public MenuVO getMenu(@RequestParam(value = "idx") long idx) {

        return menuService.getMenu(idx);
    }

    @ResponseBody
    @RequestMapping(value = "/addMenu", method = RequestMethod.POST)
    public Integer addMenu(@RequestBody MenuVO menuVO) {
        return menuService.addMenu(menuVO);
    }

    @ResponseBody
    @RequestMapping(value = "/updateMenu", method = RequestMethod.POST)
    public Integer updateMenu(@RequestBody MenuVO menuVO) {
        return menuService.updateMenu(menuVO);
    }

    @ResponseBody
    @RequestMapping(value = "/deleteMenu", method = RequestMethod.POST)
    public Integer deleteMenu(@RequestBody ArrayList<Integer> deleteList) {
        return menuService.deleteMenu(deleteList);
    }
}
