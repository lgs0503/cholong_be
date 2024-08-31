package com.cholong.cholong_be.api.banner;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/banner")
public class BannerController {

    @RequestMapping("/bannerMgrPage")
    public ModelAndView bannerMgrPage() {

        return new ModelAndView("banner/banner");
    }

    @RequestMapping("/bannerDetailPage")
    public ModelAndView bannerDetailPage() {

        return new ModelAndView("banner/detail");
    }
}
