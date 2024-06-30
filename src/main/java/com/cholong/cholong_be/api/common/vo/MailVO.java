package com.cholong.cholong_be.api.common.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MailVO {

    private String address;
    private String title;
    private String message;
}
