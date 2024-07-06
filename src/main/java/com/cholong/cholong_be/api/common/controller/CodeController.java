package com.cholong.cholong_be.api.common.controller;

import com.cholong.cholong_be.api.common.service.CodeService;
import com.cholong.cholong_be.api.common.vo.CodeVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/common/code")
public class CodeController {

    @Autowired
    private CodeService codeService;

    @RequestMapping("/codeMgrPage")
    public ModelAndView codeMgrPage() {

        return new ModelAndView("common/code/code");
    }

    @RequestMapping("/codeDetailPage")
    public ModelAndView addCodePage(
            @RequestParam String mode,
            @RequestParam(defaultValue = "") String idx
    ) {

        ModelAndView mv = new ModelAndView("common/code/detail");
        mv.addObject("mode", mode);

        if (!mode.equals("add")) {
            mv.addObject("idx", idx);
        }

        return mv;
    }

    @ResponseBody
    @RequestMapping(value = "/getCodeList", method = RequestMethod.GET)
    public List<CodeVO> getCodeList (
        @RequestParam(value = "code", defaultValue = "") String code,
        @RequestParam(value = "codeName", defaultValue = "") String codeName,
        @RequestParam(value = "upperCode", defaultValue = "") String upperCode
    ) {

        CodeVO codeVO = new CodeVO();
        codeVO.setCode(code);
        codeVO.setCodeName(codeName);

        return codeService.getCodeList(codeVO);
    }

    @ResponseBody
    @RequestMapping(value = "/getCode", method = RequestMethod.GET)
    public CodeVO getCode(@RequestParam(value = "idx") long idx) {

        return codeService.getCode(idx);
    }

    @ResponseBody
    @RequestMapping(value = "/addCode", method = RequestMethod.POST)
    public Integer addCode(@RequestBody CodeVO codeVO) {
        return codeService.addCode(codeVO);
    }

    @ResponseBody
    @RequestMapping(value = "/updateCode", method = RequestMethod.POST)
    public Integer updateCode(@RequestBody CodeVO codeVO) {
        return codeService.updateCode(codeVO);
    }

    @ResponseBody
    @RequestMapping(value = "/deleteCode", method = RequestMethod.POST)
    public Integer deleteCode(@RequestBody ArrayList<Integer> deleteList) {
        return codeService.deleteCode(deleteList);
    }

    @ResponseBody
    @RequestMapping(value = "/codeDuplicateChk", method = RequestMethod.GET)
    public Integer codeDuplicateChk(@RequestParam(value = "code") String code) {
        return codeService.codeDuplicateChk(code);
    }
}
