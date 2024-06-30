package com.cholong.cholong_be.api.common.service;

import com.cholong.cholong_be.api.common.vo.MailVO;
import com.cholong.cholong_be.api.common.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class SendEmailServiceImpl implements SendEmailService{

    private JavaMailSender javaMailSender;
    private static final String FROM_ADDRESS = "lgs0503@gmail.com";
    private final PasswordEncoder passwordEncoder;
    private final UserService userService;

    @Autowired
    public SendEmailServiceImpl(
            PasswordEncoder passwordEncoder,
            UserService userService,
            JavaMailSender javaMailSender
    ) {
        this.passwordEncoder = passwordEncoder;
        this.userService = userService;
        this.javaMailSender = javaMailSender;
    }

    @Override
    public MailVO createMailAndChargePassword(UserVO userVO) {
        String tempPassword = getTempPassword();
        MailVO dto = new MailVO();
        dto.setAddress(userVO.getEmail());
        dto.setTitle(userVO.getKorName() + "님의 임시비밀번호 안내 이메일 입니다.");
        dto.setMessage("안녕하세요. 임시비밀번호 안내 관련 메일 입니다."
                + "[" + userVO.getKorName() + "]"
                + "님의 임시 비밀번호는 "
                + tempPassword + " 입니다.");
        updatePassword(tempPassword, userVO);
        return dto;
    }

    @Override
    public void updatePassword(String password, UserVO userVO) {
        UserVO updateUser = userService.getUser(userVO);
        updateUser.setPassword(passwordEncoder.encode(password));
        userService.updatePassword(updateUser);
    }

    @Override
    public String getTempPassword() {
        char[] charSet = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
                'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};
        String tempPassword = "";

        int idx = 0;

        for (int i=0; i<10; i++) {
            idx = (int) (charSet.length * Math.random());
            tempPassword += charSet[idx];
        }

        return tempPassword;
    }

    @Override
    public void mailSend(MailVO mailVO) {

        SimpleMailMessage message = new SimpleMailMessage();

        message.setTo(mailVO.getAddress());
        message.setFrom(FROM_ADDRESS);
        message.setSubject(mailVO.getTitle());
        message.setText(mailVO.getMessage());

        javaMailSender.send(message);
    }
}
