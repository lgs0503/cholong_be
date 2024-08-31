package com.cholong.cholong_be.api.content;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/content")
public class ContentController {

    @RequestMapping("/contentMgrPage")
    public ModelAndView contentMgrPage() {

        return new ModelAndView("content/content");
    }

    @RequestMapping("/contentDetailPage")
    public ModelAndView contentDetailPage() {

        return new ModelAndView("content/detail");
    }
}
