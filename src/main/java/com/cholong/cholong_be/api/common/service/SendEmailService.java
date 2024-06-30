package com.cholong.cholong_be.api.common.service;

import com.cholong.cholong_be.api.common.vo.MailVO;
import com.cholong.cholong_be.api.common.vo.UserVO;

public interface SendEmailService {
    
    MailVO createMailAndChargePassword(UserVO userVO);
    
    void updatePassword(String password, UserVO userVO);
    
    String getTempPassword();

    void mailSend(MailVO mailVO);
}
