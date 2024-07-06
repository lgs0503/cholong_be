package com.cholong.cholong_be.api.common.service;


import com.cholong.cholong_be.api.common.mapper.CodeMapper;
import com.cholong.cholong_be.api.common.vo.CodeVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CodeServiceImpl implements CodeService{

    private final CodeMapper codeMapper;

    @Autowired
    public CodeServiceImpl(CodeMapper codeMapper) {
        this.codeMapper = codeMapper;
    }

    @Override
    public List<CodeVO> getCodeList(CodeVO codeVO) {
        return codeMapper.getCodeList(codeVO);
    }

    @Override
    public CodeVO getCode(long idx) {
        return codeMapper.getCode(idx);
    }

    @Override
    public int addCode(CodeVO codeVO) {
        return codeMapper.addCode(codeVO);
    }

    @Override
    public int updateCode(CodeVO codeVO) {
        return codeMapper.updateCode(codeVO);
    }

    @Override
    public int deleteCode(ArrayList<Integer> deleteList) {
        return codeMapper.deleteCode(deleteList);
    }

    @Override
    public int codeDuplicateChk(String code) {
        return codeMapper.codeDuplicateChk(code);
    }
}
