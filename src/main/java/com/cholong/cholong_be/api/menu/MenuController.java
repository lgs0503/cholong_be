package com.cholong.cholong_be.api.menu;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/menu")
public class MenuController {

    @RequestMapping("/menuMgrPage")
    public ModelAndView menuMgrPage() {

        return new ModelAndView("menu/menu");
    }
}
