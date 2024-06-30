package com.cholong.cholong_be.api.common.service;

import com.cholong.cholong_be.api.common.vo.UserVO;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;

public interface UserService {

    List<UserVO> getUserList(UserVO userVO);

    UserVO getUser(UserVO userVO);

    int addUser(UserVO userVO);

    int updateUser(UserVO userVO);

    int deleteUser(ArrayList<Integer> deleteList);

    int userIdDuplicateChk(String userId);

    boolean login(UserVO userVO);

    String getId(UserVO userVO);

    int updatePassword(UserVO userVO);
}
