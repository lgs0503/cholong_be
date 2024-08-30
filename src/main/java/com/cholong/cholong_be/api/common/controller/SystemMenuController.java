package com.cholong.cholong_be.api.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/common/menu")
public class SystemMenuController {

    @RequestMapping("/menuMgrPage")
    public ModelAndView menuMgrPage() {

        return new ModelAndView("common/menu/menu");
    }
}
