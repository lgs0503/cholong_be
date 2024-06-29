package com.cholong.cholong_be.api.sample.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("sampleVO")
public class SampleVO {

    private String col1;
    private String col2;
}
