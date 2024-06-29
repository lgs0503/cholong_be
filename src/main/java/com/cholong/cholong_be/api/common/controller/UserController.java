package com.cholong.cholong_be.api.common.controller;

import com.cholong.cholong_be.api.common.service.UserService;
import com.cholong.cholong_be.api.common.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/common/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/loginPage")
    public ModelAndView loginPage() {

        return new ModelAndView("common/login");
    }

    @RequestMapping("/registerPage")
    public ModelAndView registerPage() {

        return new ModelAndView("common/register");
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
}
