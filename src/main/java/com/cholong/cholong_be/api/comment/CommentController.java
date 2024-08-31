package com.cholong.cholong_be.api.comment;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/comment")
public class CommentController {

    @RequestMapping("/commentMgrPage")
    public ModelAndView commentMgrPage() {

        return new ModelAndView("comment/comment");
    }
}
