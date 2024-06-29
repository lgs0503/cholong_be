package com.cholong.cholong_be.api.common.mapper;

import com.cholong.cholong_be.api.common.vo.UserVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;

@Mapper
public interface UserMapper {

    List<UserVO> getUserList(UserVO userVO);

    UserVO getUser(@Param("idx") int idx);

    int addUser(UserVO userVO);

    int updateUser(UserVO userVO);

    int deleteUser(@Param("deleteList") ArrayList<Integer> deleteList);
}
