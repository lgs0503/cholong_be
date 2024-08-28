package com.cholong.cholong_be.api.common.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.ibatis.type.Alias;

@Data
@Alias("MenuVO")
@AllArgsConstructor
@NoArgsConstructor
public class MenuVO {

    private long idx;
    private String menuName;
    private String description;
    private long upperMenuIdx;
    private String menuType;
    private String url;
    private long mappingIdx;
    private long ord;
    private String useYn;
    private String level;

    private String createUser;
    private String createDate;
    private String updateUser;
    private String updateDate;

}
