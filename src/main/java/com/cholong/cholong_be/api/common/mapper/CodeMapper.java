package com.cholong.cholong_be.api.common.mapper;

import com.cholong.cholong_be.api.common.vo.CodeVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;

@Mapper
public interface CodeMapper {

    List<CodeVO> getCodeList(CodeVO codeVO);

    CodeVO getCode(@Param("idx") long idx);

    int addCode(CodeVO codeVO);

    int updateCode(CodeVO codeVO);

    int deleteCode(@Param("deleteList") ArrayList<Integer> deleteList);

    int codeDuplicateChk(@Param("code") String code);
}
