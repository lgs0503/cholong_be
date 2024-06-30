package com.cholong.cholong_be.api.common.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.ibatis.annotations.ConstructorArgs;
import org.apache.ibatis.type.Alias;

@Data
@Alias("UserVO")
@AllArgsConstructor
@NoArgsConstructor
public class UserVO {

    private long idx;
    private String userId;
    private String password;
    private String korName;
    private String engName;
    private String nickName;
    private String zipCode;
    private String address;
    private String addressDtl;
    private String gender;
    private String birthday;
    private String phoneNum;
    private String email;
    private String useYn;
    private long fileNo;
    private String remark;
    private String smsYn;
    private String mailYn;

    private String createUser;
    private String createDate;
    private String updateUser;
    private String updateDate;

}
