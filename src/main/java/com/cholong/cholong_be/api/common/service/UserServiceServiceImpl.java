package com.cholong.cholong_be.api.common.service;

import com.cholong.cholong_be.api.common.mapper.UserMapper;
import com.cholong.cholong_be.api.common.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserServiceServiceImpl implements UserService {

    private final UserMapper userMapper;

    @Autowired
    public UserServiceServiceImpl(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public List<UserVO> getUserList(UserVO userVO) {
        return userMapper.getUserList(userVO);
    }

    @Override
    public UserVO getUser(int idx) {
        return userMapper.getUser(idx);
    }

    @Override
    public int addUser(UserVO userVO) {
        return userMapper.addUser(userVO);
    }

    @Override
    public int updateUser(UserVO userVO) {
        return userMapper.updateUser(userVO);
    }

    @Override
    public int deleteUser(ArrayList<Integer> deleteList) {
        return userMapper.deleteUser(deleteList);
    }
}
