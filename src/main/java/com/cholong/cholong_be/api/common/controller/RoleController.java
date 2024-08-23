package com.cholong.cholong_be.api.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/common/role")
public class RoleController {

    @RequestMapping("/roleMgrPage")
    public ModelAndView roleMgrPage() {

        return new ModelAndView("common/role/role");
    }

    @RequestMapping("/roleDetailPage")
    public ModelAndView roleDetailPage() {
        ModelAndView mv = new ModelAndView("common/role/detail");

        return mv;
    }
}
