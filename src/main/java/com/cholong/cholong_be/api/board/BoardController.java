package com.cholong.cholong_be.api.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/board")
public class BoardController {

    @RequestMapping("/boardMgrPage")
    public ModelAndView boardMgrPage() {

        return new ModelAndView("board/board");
    }

    @RequestMapping("/boardDetailPage")
    public ModelAndView boardDetailPage() {

        return new ModelAndView("board/detail");
    }
}
