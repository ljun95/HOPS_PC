package kmi.hc.hops.pc.reserv.reservresult.resultpage.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kmi.hc.hops.pc.reserv.reservresult.resultpage.model.ResultPageDto;

@Mapper
public interface ResultPageMapper {
	
	// ============================= 종합소견 ================================
	// MY 건강검진 이력 리스트
	List<ResultPageDto> examinationResultList(String user_id);		
	// 종합소견 
	Map<String, Object> examinationresultlookupinformation(Map<String, Object> map);	
	// 종합소견 비교하기
	List<Object> comparisonofresults(Map<String, Object> map);
	// 비교하기 버튼 클릭한 데이터 리스트 가져오기
	List<Object> comparisonofresultsList(Map<String, Object> map);
	// 혈압 비교하기 버튼 클릭 
	List<Object> bloodpressurecomparisonresult(Map<String, Object> map);
	// 신체계측 검사 및 혈압 검사 등등 리스트
	List<Object> examinationresultlookupinformationList(Map<String, Object> map);

	// ============================= 기초검사 ================================
	// 기초검사/청력검사
	List<Object> basichearingtest(Map<String, Object> map);
	// 기초검사/소변변검사
	List<Object> basalurinetest(Map<String, Object> map);
	// 두번째로 큰 날짜 데이터 가져오기
	List<Object> currentResult(Map<String, Object> map);	
	// 가장 큰 날짜 데이터 가져오기
	List<Object> previousResults(Map<String, Object> map);
	  
	
	

	

	
	

}
