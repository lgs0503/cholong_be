package com.cholong.cholong_be.api.sample.controller;

import com.cholong.cholong_be.api.sample.service.SampleService;
import com.cholong.cholong_be.api.sample.vo.SampleVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/sample")
public class SampleController {

    @Autowired
    private SampleService sampleService;

    @RequestMapping("/samplePage")
    public ModelAndView getSamplePage() {
        return new ModelAndView("sample/index");
    }

    @ResponseBody
    @RequestMapping(value = "/getSampleList", method = RequestMethod.GET)
    public List<SampleVO> getSampleList(SampleVO sampleVO) {
        return sampleService.getSampleList(sampleVO);
    }

    @ResponseBody
    @RequestMapping(value = "/addSample", method = RequestMethod.POST)
    public Integer addSample(@RequestBody SampleVO sampleVO) {
        return sampleService.addSample(sampleVO);
    }

    @ResponseBody
    @RequestMapping(value = "/updateSample", method = RequestMethod.POST)
    public Integer updateSample(@RequestBody SampleVO sampleVO) {
        return sampleService.updateSample(sampleVO);
    }

    @ResponseBody
    @RequestMapping(value = "/deleteSample", method = RequestMethod.POST)
    public Integer deleteSample(@RequestBody ArrayList<Integer> deleteList) {
        return sampleService.deleteSample(deleteList);
    }
}
