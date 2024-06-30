package com.cholong.cholong_be.api.common.service;

import com.cholong.cholong_be.api.common.mapper.UserMapper;
import com.cholong.cholong_be.api.common.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserServiceServiceImpl implements UserService {

    private final UserMapper userMapper;
    private final PasswordEncoder passwordEncoder;

    @Autowired
    public UserServiceServiceImpl(
            UserMapper userMapper,
            PasswordEncoder passwordEncoder
    ) {
        this.userMapper = userMapper;
        this.passwordEncoder = passwordEncoder;
    }

    @Override
    public List<UserVO> getUserList(UserVO userVO) {
        return userMapper.getUserList(userVO);
    }

    @Override
    public UserVO getUser(UserVO userVO) {
        return userMapper.getUser(userVO);
    }

    @Override
    public int addUser(UserVO userVO) {

        /** 비밀번호 암호화 **/
        userVO.setPassword(passwordEncoder.encode(userVO.getPassword()));

        return userMapper.addUser(userVO);
    }

    @Override
    public int updateUser(UserVO userVO) {

        /** 비밀번호 암호화 **/
        userVO.setPassword(passwordEncoder.encode(userVO.getPassword()));

        return userMapper.updateUser(userVO);
    }

    @Override
    public int deleteUser(ArrayList<Integer> deleteList) {
        return userMapper.deleteUser(deleteList);
    }

    @Override
    public int userIdDuplicateChk(String userId) {
        return userMapper.userIdDuplicateChk(userId);
    }

    @Override
    public boolean login(UserVO userVO) {

        return  passwordEncoder.matches(
                userVO.getPassword(),
                userMapper.getPassword(userVO.getUserId())
        );
    }

    @Override
    public String getId(UserVO userVO) {
        return userMapper.getId(userVO);
    }

    @Override
    public int updatePassword(UserVO userVO) {
        return userMapper.updatePassword(userVO);
    }
}
