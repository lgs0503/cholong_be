package com.cholong.cholong_be.api.common.service;

import com.cholong.cholong_be.api.common.vo.UserVO;

import java.util.ArrayList;
import java.util.List;

public interface UserService {

    List<UserVO> getUserList(UserVO userVO);

    UserVO getUser(int idx);

    int addUser(UserVO userVO);

    int updateUser(UserVO userVO);

    int deleteUser(ArrayList<Integer> deleteList);
}
