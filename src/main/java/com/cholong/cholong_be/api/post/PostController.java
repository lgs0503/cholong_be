package com.cholong.cholong_be.api.post;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/post")
public class PostController {

    @RequestMapping("/postMgrPage")
    public ModelAndView postMgrPage() {

        return new ModelAndView("post/post");
    }

    @RequestMapping("/postDetailPage")
    public ModelAndView postDetailPage() {

        return new ModelAndView("post/detail");
    }
}
