package com.cholong.cholong_be.api.history.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/history")
public class HistoryController {

    @RequestMapping("/loginHisPage")
    public ModelAndView loginHisPage() {

        return new ModelAndView("history/loginHistory");
    }

    @RequestMapping("/menuUseHisPage")
    public ModelAndView menuUseHisPage() {

        return new ModelAndView("history/menuUseHistory");
    }
}
