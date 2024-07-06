package com.cholong.cholong_be.api.common.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/common/main")
public class MainController  {

    @RequestMapping("/mainPage")
    public ModelAndView loginPage(
            @RequestParam(value = "loginId", defaultValue = "") String loginId,
            HttpServletRequest httpServletRequest
    ) {

        if (!loginId.equals("")) {
            HttpSession httpSession = httpServletRequest.getSession();
            httpSession.setAttribute("loginId", loginId);
        }

        return new ModelAndView("common/main");
    }

    @RequestMapping("/myPage")
    public ModelAndView myPage() {
        return new ModelAndView("common/myPage/myPage");
    }
}
