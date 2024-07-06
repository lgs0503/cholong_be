package com.cholong.cholong_be.api.common.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.ibatis.type.Alias;

@Data
@Alias("CodeVO")
@AllArgsConstructor
@NoArgsConstructor
public class CodeVO {

    private long idx;
    private String code;
    private String codeName;
    private String upperCode;
    private String useYn;
    private String description;
    private String ref1;
    private String ref2;
    private String ref3;

    private String createUser;
    private String createDate;
    private String updateUser;
    private String updateDate;

}
