package com.cholong.cholong_be.api.sample.service;

import com.cholong.cholong_be.api.sample.mapper.SampleMapper;
import com.cholong.cholong_be.api.sample.vo.SampleVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class SampleServiceImpl implements SampleService{

    private final SampleMapper sampleMapper;

    @Autowired
    public SampleServiceImpl(SampleMapper sampleMapper) {
        this.sampleMapper = sampleMapper;
    }

    @Override
    public List<SampleVO> getSampleList(SampleVO sampleVO) {
        return sampleMapper.getSampleList(sampleVO);
    }

    @Override
    public SampleVO getSample(int col1) {
        return sampleMapper.getSample(col1);
    }

    @Override
    public int addSample(SampleVO sampleVO) {
        return sampleMapper.addSample(sampleVO);
    }

    @Override
    public int updateSample(SampleVO sampleVO) {
        return sampleMapper.updateSample(sampleVO);
    }

    @Override
    public int deleteSample(ArrayList<Integer> deleteList) {
        return sampleMapper.deleteSample(deleteList);
    }
}
