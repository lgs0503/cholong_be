package com.cholong.cholong_be.api.common.controller;

import com.cholong.cholong_be.api.common.service.SendEmailService;
import com.cholong.cholong_be.api.common.service.UserService;
import com.cholong.cholong_be.api.common.vo.UserVO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/common/user")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    SendEmailService sendEmailService;

    @RequestMapping("/userMgrPage")
    public ModelAndView userMgrPage() {

        return new ModelAndView("common/user/user");
    }

    @RequestMapping("/userDetailPage")
    public ModelAndView userDetailPage() {

        return new ModelAndView("common/user/detail");
    }

    @RequestMapping("/loginPage")
    public ModelAndView loginPage() {

        return new ModelAndView("common/login");
    }

    @RequestMapping("/registerPage")
    public ModelAndView registerPage() {

        return new ModelAndView("common/register");
    }

    @RequestMapping("/findIdPasswordPage")
    public ModelAndView findIdPasswordPage() {

        return new ModelAndView("common/findIdPassword");
    }

    @RequestMapping("/logout")
    public ModelAndView logout(
            HttpServletRequest httpServletRequest
    ) {

        HttpSession httpSession = httpServletRequest.getSession();
        httpSession.removeAttribute("loginId");

        return new ModelAndView("common/login");
    }

    @ResponseBody
    @RequestMapping(value = "/getUserList", method = RequestMethod.GET)
    public List<UserVO> getUserList(UserVO userVO) {
        return userService.getUserList(userVO);
    }

    @ResponseBody
    @RequestMapping(value = "/addUser", method = RequestMethod.POST)
    public Integer addUser(@RequestBody UserVO userVO) {
        return userService.addUser(userVO);
    }

    @ResponseBody
    @RequestMapping(value = "/updateUser", method = RequestMethod.POST)
    public Integer updateUser(@RequestBody UserVO userVO) {
        return userService.updateUser(userVO);
    }

    @ResponseBody
    @RequestMapping(value = "/deleteUser", method = RequestMethod.POST)
    public Integer deleteUser(@RequestBody ArrayList<Integer> deleteList) {
        return userService.deleteUser(deleteList);
    }

    @ResponseBody
    @RequestMapping(value = "/userIdDuplicateChk", method = RequestMethod.GET)
    public Integer userIdDuplicateChk(@RequestParam(value = "userId") String userId) {
        return userService.userIdDuplicateChk(userId);
    }

    @ResponseBody
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public boolean login(@RequestBody UserVO userVO) {

        return userService.login(userVO);
    }

    @ResponseBody
    @RequestMapping(value = "/getId", method = RequestMethod.POST)
    public String getId(@RequestBody UserVO userVO) {

        return userService.getId(userVO);
    }

    @ResponseBody
    @RequestMapping(value = "/getPassword", method = RequestMethod.POST)
    public String getPassword(@RequestBody UserVO userVO) {

        String result = "success";
        UserVO checkUser = userService.getUser(userVO);

        if (checkUser != null) {
            sendEmailService.mailSend(sendEmailService.createMailAndChargePassword(userVO));
        } else {
            result = "not found user";
        }

        return result;
    }
}
