package com.cholong.cholong_be.api.sample;

import com.cholong.cholong_be.api.TestMvcConfig;
import com.cholong.cholong_be.api.sample.vo.SampleVO;
import org.junit.jupiter.api.*;
import org.springframework.http.MediaType;

import java.util.ArrayList;
import java.util.List;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

public class SampleTest extends TestMvcConfig {

    @DisplayName("샘플 리스트 조회")
    @Test
    @Order(0)
    public void getSampleList() throws Exception {

        mockMvc.perform(get("/api/sample")
                        .param("col1","2")
                )
                .andExpect(status().isOk())
                .andExpect(content().string("[{\"col1\":\"2\",\"col2\":\"테스트2\"}]"))
                .andDo(print());
    }

    @DisplayName("샘플 조회")
    @Test
    @Order(0)
    public void getSample() throws Exception {

        mockMvc.perform(get("/api/sample/2")
                )
                .andExpect(status().isOk())
                .andExpect(content().string("{\"col1\":\"2\",\"col2\":\"테스트2\"}"))
                .andDo(print());
    }

    @DisplayName("샘플 추가")
    @Test
    @Order(1)
    public void addSample() throws Exception {

        SampleVO sample = new SampleVO();
        sample.setCol1("3");
        sample.setCol2("test2");

        String content = objectMapper.writeValueAsString(sample);

        mockMvc.perform(post("/api/sample")
                        .content(content)
                        .contentType(MediaType.APPLICATION_JSON)
                        .accept(MediaType.APPLICATION_JSON)
                )
                .andExpect(status().isOk())
                .andExpect(content().string("1"))
                .andDo(print());
    }

    @DisplayName("샘플 수정")
    @Test
    @Order(2)
    public void updateSample() throws Exception {

        SampleVO sample = new SampleVO();
        sample.setCol1("3");
        sample.setCol2("test3");

        String content = objectMapper.writeValueAsString(sample);

        mockMvc.perform(put("/api/sample")
                        .content(content)
                        .contentType(MediaType.APPLICATION_JSON)
                        .accept(MediaType.APPLICATION_JSON)
                )
                .andExpect(status().isOk())
                .andExpect(content().string("1"))
                .andDo(print());
    }

    @DisplayName("샘플 삭제")
    @Test
    @Order(3)
    public void deleteSample() throws Exception {

        List<Integer> deleteList = new ArrayList<>();
        deleteList.add(3);

        String content = objectMapper.writeValueAsString(deleteList);

        mockMvc.perform(delete("/api/sample")
                        .content(content)
                        .contentType(MediaType.APPLICATION_JSON)
                        .accept(MediaType.APPLICATION_JSON)
                )
                .andExpect(status().isOk())
                .andExpect(content().string("1"))
                .andDo(print());
    }
}
