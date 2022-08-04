package kmi.hc.hops.pc.reserv.reservresult.resultpage.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kmi.hc.hops.pc.reserv.reservresult.resultpage.mapper.ResultPageMapper;
import kmi.hc.hops.pc.reserv.reservresult.resultpage.service.ResultPageService;

@RestController
@RequestMapping("/resultpage")
public class ResultPageAjaxController {
	
	// 서비스 주입
	private ResultPageService service;

	@Autowired
	public ResultPageAjaxController(ResultPageService service) {
		this.service = service;
	}
	
	@Autowired
	private ResultPageMapper mapper;
	
	
	// 종합소견
	@ResponseBody 
	@GetMapping("/examinationresultlookupinformation")
	public Map<String, Object> examinationresultlookupinformation(@RequestParam("partnerCenterId")  String partnerCenterId, @RequestParam("checkupNo")  String checkupNo, @RequestParam("checkupProposNo")  String checkupProposNo ) {
		Map<String, Object> map = new HashMap<String, Object>();
		String user_id = "gogil123"; 	
		map.put("partnerCenterId", partnerCenterId);
		map.put("user_id", user_id);		
		map.put("checkupNo", checkupNo);						
		map.put("checkupProposNo", checkupProposNo);						
		return mapper.examinationresultlookupinformation(map);
		
	}
	
	// 종합소견 비교하기
	@ResponseBody 
	@GetMapping("/comparisonofresults")
	public List<Object> comparisonofresults(@RequestParam("partnerCenterId")  String partnerCenterId,@RequestParam("checkupDt")  String checkupDt ) {
		Map<String, Object> map = new HashMap<String, Object>();
		String user_id = "gogil123"; 	
		map.put("partnerCenterId", partnerCenterId);
		map.put("user_id", user_id);				
		map.put("checkupDt", checkupDt);											
		return mapper.comparisonofresults(map);		
	}
	
	// 클릭한 데이터 리스트 가져와서 비교하기
	@ResponseBody 
	@GetMapping("/comparisonofresultslist")
	public List<Object> comparisonofresultsList(@RequestParam(value="partnerCenterId" , required=false)  String partnerCenterId,@RequestParam(value="checkupDt", required=false)  String checkupDt
											   ,@RequestParam(value="resultName", required=false)  String resultName , @RequestParam(value="midCategory", required=false) String midCategory) {
		Map<String, Object> map = new HashMap<String, Object>();
		String user_id = "gogil123"; 			
		map.put("partnerCenterId", partnerCenterId);
		map.put("user_id", user_id);		
		map.put("checkupDt", checkupDt);											
		map.put("resultName", resultName);											
		map.put("midCategory", midCategory);		
		return mapper.comparisonofresultsList(map);		
	}
	// 혈압비교하기 버튼 클릭
	@ResponseBody 
	@GetMapping("/bloodpressurecomparisonresult")
	public List<Object> bloodpressurecomparisonresult(@RequestParam(value="partnerCenterId" , required=false)  String partnerCenterId,@RequestParam(value="checkupDt", required=false)  String checkupDt
			,@RequestParam(value="resultName", required=false)  String resultName , @RequestParam(value="midCategory", required=false) String midCategory) {
		Map<String, Object> map = new HashMap<String, Object>();
		String user_id = "gogil123"; 			
		map.put("partnerCenterId", partnerCenterId);
		map.put("user_id", user_id);		
		map.put("checkupDt", checkupDt);											
		map.put("resultName", resultName);											
		map.put("midCategory", midCategory);		
		return mapper.bloodpressurecomparisonresult(map);		
	}
	
	// 종합소견 / 신체 계측 및 혈압검사 등등
	@ResponseBody 
	@GetMapping("/examinationresultlookupinformationList")
	public List<Object> examinationresultlookupinformationList(@RequestParam(value="partnerCenterId" , required=false)  String partnerCenterId, @RequestParam("checkupNo")  String checkupNo, @RequestParam("checkupProposNo")  String checkupProposNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		String user_id = "gogil123"; 	
		map.put("partnerCenterId", partnerCenterId);
		map.put("user_id", user_id);		
		map.put("checkupNo", checkupNo);		
		map.put("checkupProposNo", checkupProposNo);		
		List<Object> list = mapper.examinationresultlookupinformationList(map);		
		return list;
	
	}
	
	// 기초검사/청력검사 
	@ResponseBody 
	@GetMapping("/basichearingtest")
	public List<Object> basichearingtest(@RequestParam("partnerCenterId")  String partnerCenterId, @RequestParam("checkupNo")  String checkupNo, @RequestParam("checkupProposNo")  String checkupProposNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		String user_id = "gogil123"; 			
		map.put("partnerCenterId", partnerCenterId);
		map.put("user_id", user_id);		
		map.put("checkupNo", checkupNo);		
		map.put("checkupProposNo", checkupProposNo);	
		return  mapper.basichearingtest(map);				
	}
	
	// 검진결과 리스트 
	@ResponseBody 
	@GetMapping("/basalurinetest")
	public List<Object> basalurinetest(@RequestParam("partnerCenterId")  String partnerCenterId, @RequestParam(value="checkupNo" , required=false)  String checkupNo, @RequestParam(value="checkupProposNo" , required=false)  String checkupProposNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		String user_id = "gogil123"; 				
		map.put("partnerCenterId", partnerCenterId);
		map.put("user_id", user_id);		
		map.put("checkupNo", checkupNo);		
		map.put("checkupProposNo", checkupProposNo);		
		return  mapper.basalurinetest(map);				
	}
	
	//  장비검사 / 체성분 검사 ~
	@ResponseBody 
	@GetMapping("/inspectionresultlist")
	public Map<String, Object> inspectionresultlist(@RequestParam("partnerCenterId")  String partnerCenterId, @RequestParam("checkupNo")  String checkupNo, @RequestParam("checkupProposNo")  String checkupProposNo,  @RequestParam("checkupDt")  String checkupDt) {
		Map<String, Object> map = new HashMap<String, Object>();
		String user_id = "gogil123"; 				
		map.put("partnerCenterId", partnerCenterId);
		map.put("user_id", user_id);		
		map.put("checkupNo", checkupNo);		
		map.put("checkupProposNo", checkupProposNo);
		map.put("checkupDt", checkupDt);		
		map.put("currentResult", mapper.currentResult(map));		
		map.put("previousResults", mapper.previousResults(map));
				
		return  map;				
	}		
	
	
	
}
