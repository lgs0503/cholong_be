package com.cholong.cholong_be.api.popup;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/popup")
public class PopupController {

    @RequestMapping("/popupMgrPage")
    public ModelAndView popupMgrPage() {

        return new ModelAndView("popup/popup");
    }

    @RequestMapping("/popupDetailPage")
    public ModelAndView popupDetailPage() {

        return new ModelAndView("popup/detail");
    }
}
