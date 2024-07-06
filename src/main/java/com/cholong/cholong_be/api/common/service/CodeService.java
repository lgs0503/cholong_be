package com.cholong.cholong_be.api.common.service;

import com.cholong.cholong_be.api.common.vo.CodeVO;
import com.cholong.cholong_be.api.common.vo.UserVO;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;

public interface CodeService {

    List<CodeVO> getCodeList(CodeVO codeVO);

    CodeVO getCode(long idx);

    int addCode(CodeVO codeVO);

    int updateCode(CodeVO codeVO);

    int deleteCode(ArrayList<Integer> deleteList);

    int codeDuplicateChk(String code);
}
