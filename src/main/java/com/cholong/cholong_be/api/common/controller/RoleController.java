package com.cholong.cholong_be.api.common.controller;

import com.cholong.cholong_be.api.common.service.RoleService;
import com.cholong.cholong_be.api.common.vo.RoleVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/common/role")
public class RoleController {

    @Autowired
    private RoleService roleService;

    @RequestMapping("/roleMgrPage")
    public ModelAndView roleMgrPage() {

        return new ModelAndView("common/role/role");
    }

    @RequestMapping("/roleDetailPage")
    public ModelAndView roleDetailPage(
            @RequestParam String idx
    ) {
        ModelAndView mv = new ModelAndView("common/role/detail");
        mv.addObject("idx", idx);
        return mv;
    }

    @RequestMapping("/roleSavePage")
    public ModelAndView roleSavePage(
            @RequestParam("mode") String mode,
            @RequestParam(value = "idx", defaultValue = "") String idx
    ) {
        ModelAndView mv = new ModelAndView("common/role/save");

        mv.addObject("mode", mode);
        mv.addObject("idx", idx);

        return mv;
    }

    @ResponseBody
    @RequestMapping(value = "/getRoleList", method = RequestMethod.GET)
    public List<RoleVO> getRoleList(
            @RequestParam(value = "roleName", defaultValue = "") String roleName
    ) {

        RoleVO roleVO = new RoleVO();
        roleVO.setRoleName(roleName);

        return roleService.getRoleList(roleVO);
    }

    @ResponseBody
    @RequestMapping(value = "/getRole", method = RequestMethod.GET)
    public RoleVO getRole(@RequestParam(value = "idx") long idx) {

        return roleService.getRole(idx);
    }


    @RequestMapping(value = "addRole", method = RequestMethod.POST)
    @ResponseBody
    public int addRole(
            @RequestBody RoleVO role
    ) {
        return roleService.addRole(role);
    }

    @ResponseBody
    @RequestMapping(value = "/updateRole", method = RequestMethod.POST)
    public int updateRole(
            @RequestBody RoleVO role
    ) {
        return roleService.updateRole(role);
    }

    @ResponseBody
    @RequestMapping(value = "/deleteRole", method = RequestMethod.POST)
    public Integer deleteRole(@RequestBody ArrayList<Integer> deleteList) {

        return roleService.deleteRole(deleteList);

    }
}
