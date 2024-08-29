package com.cholong.cholong_be.api.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/common/file")
public class FileController {
    
    @RequestMapping("/fileMgrPage")
    public ModelAndView fileMgrPage() {

        return new ModelAndView("common/file/file");
    }

    @RequestMapping("/fileDetailPage")
    public ModelAndView fileDetailPage() {
        ModelAndView mv = new ModelAndView("common/file/detail");

        return mv;
    }
}
