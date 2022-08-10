package kmi.hc.hops.pc.resultcounsel.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kmi.hc.hops.pc.resultcounsel.model.ResultCounselDto;
import kmi.hc.hops.pc.resultcounsel.model.ResultCounselListDto;
import kmi.hc.hops.pc.resultcounsel.model.ResultCounselListParam;
import kmi.hc.hops.pc.resultcounsel.service.ResultCounselService;

@Controller
public class ResultCounselController {

	// 서비스 주입
	private ResultCounselService service;

	@Autowired
	public ResultCounselController(ResultCounselService service) {
		this.service = service;
	}
	
	// 결과상담 / 결과상담하기
	@GetMapping("resultcounsel")
	public String resultcounsel(HttpServletRequest Request, Model model) {
		String userId = "gogil123";
		List<ResultCounselDto> list = service.checkupHistList(userId); // 검진이력 리스트
		model.addAttribute("checkupHistList", list);
		return "resultcounsel/resultCounselPage";
	}
	// 결과상담 / 상담이력(결과 상담내역 조회)
	@GetMapping("/counselresultlist")
	public String counselresultlist(HttpServletRequest Request, Model model) {
		String userId = "gogil123";
		ResultCounselListParam param = new ResultCounselListParam();
		param.setPageNo(1);
		param.setListSize("10");
		param.setUserId(userId);		
		ResultCounselListParam page = service.page(param);
		List<ResultCounselListDto> list =  service.counselresultlist(param);		
		model.addAttribute("counselresultlist", list);		
		model.addAttribute("pageMap", page);
		
		return "resultcounsel/resultCounselListPage";
	}
	// 결과상담 / 상담이력(결과 상담내역 조회 페이징)
	@GetMapping("/counselresultselect")
	public String counselresultselect(HttpServletRequest Request, Model model, ResultCounselListParam param) {
		String userId = "gogil123";
		param.setUserId(userId);
		ResultCounselListParam page = service.page(param);
		List<ResultCounselListDto> list =  service.counselresultlist(param);		
		model.addAttribute("counselresultlist", list);		
		model.addAttribute("pageMap", page);		
		return "resultcounsel/resultCounselListPage";
	}
}
