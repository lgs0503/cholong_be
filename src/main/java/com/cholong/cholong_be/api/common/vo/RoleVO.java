package com.cholong.cholong_be.api.common.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.ibatis.type.Alias;

@Data
@Alias("RoleVO")
@AllArgsConstructor
@NoArgsConstructor
public class RoleVO {

    private long idx;
    private String roleName;
    private String description;
    private String useYn;

    private String createUser;
    private String createDate;
    private String updateUser;
    private String updateDate;

}
