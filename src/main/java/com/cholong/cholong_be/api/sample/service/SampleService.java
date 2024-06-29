package com.cholong.cholong_be.api.sample.service;

import com.cholong.cholong_be.api.sample.vo.SampleVO;

import java.util.ArrayList;
import java.util.List;

public interface SampleService {

    List<SampleVO> getSampleList(SampleVO sampleVO);

    SampleVO getSample(int col1);

    int addSample(SampleVO sampleVO);

    int updateSample(SampleVO sampleVO);

    int deleteSample(ArrayList<Integer> deleteList);
}
