package kmi.hc.hops.pc.resultcounsel.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kmi.hc.hops.pc.resultcounsel.mapper.ResultCounselMapper;
import kmi.hc.hops.pc.resultcounsel.model.ResultCounselListDto;

@RestController
@RequestMapping("/resultcounsel")
public class ResultCounselAjaxController {

	@Autowired
	private ResultCounselMapper mapper;
	
	// 상담신청 
	@ResponseBody 
	@GetMapping("/counselappl")
	public int counselapplinsert(@RequestParam Map<String, Object> param) {				
		int counselapplinsert = mapper.counselapplinsert(param);					
		return counselapplinsert;
	}
	
	// 상담신청 이력 상세보기 
	@ResponseBody 
	@GetMapping("/counselresultview")
	public List<ResultCounselListDto> counselresultview(@RequestParam(required = false) int resultCounselNo) {
		String userId = "gogil123";
		ResultCounselListDto dto = new ResultCounselListDto();
		dto.setUser_id(userId);
		dto.setResult_counsel_no(resultCounselNo);				
		return mapper.counselresultview(dto);
	}
}
