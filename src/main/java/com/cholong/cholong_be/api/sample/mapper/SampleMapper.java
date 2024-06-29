package com.cholong.cholong_be.api.sample.mapper;

import com.cholong.cholong_be.api.sample.vo.SampleVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;

@Mapper
public interface SampleMapper {

    List<SampleVO> getSampleList(SampleVO sampleVO);

    SampleVO getSample(@Param("col1") int col1);

    int addSample(SampleVO sampleVO);

    int updateSample(SampleVO sampleVO);

    int deleteSample(@Param("deleteList") ArrayList<Integer> deleteList);
}
