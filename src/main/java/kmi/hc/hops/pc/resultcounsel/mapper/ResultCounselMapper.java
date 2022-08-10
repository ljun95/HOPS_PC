package kmi.hc.hops.pc.resultcounsel.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kmi.hc.hops.pc.resultcounsel.model.ResultCounselDto;
import kmi.hc.hops.pc.resultcounsel.model.ResultCounselListDto;
import kmi.hc.hops.pc.resultcounsel.model.ResultCounselListParam;

@Mapper
public interface ResultCounselMapper {
	
	//검진이력 리스트
	List<ResultCounselDto> checkupHistList(String userId);
	// 상담문의 저장
	int counselapplinsert(Map<String, Object> param);
	// 결과 상담내역 조회
	List<ResultCounselListDto> counselresultlist(ResultCounselListParam param);
	// 결과 상담내역 총 개수
	int count(ResultCounselListParam param);
	// 상담신청 내역 상세보기
	List<ResultCounselListDto> counselresultview(ResultCounselListDto dto);

	

}
