package kmi.hc.hops.pc.reserv.reservresult.resultpage.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kmi.hc.hops.pc.reserv.reservresult.resultpage.model.ResultPageDto;
import kmi.hc.hops.pc.reserv.reservresult.resultpage.service.ResultPageService;


@RequestMapping("/resultpage")
@Controller
public class ResultPageController {
	
	// 서비스 주입
	private ResultPageService service;

	@Autowired
	public ResultPageController(ResultPageService service) {
		this.service = service;
	}

	
	// 홈화면
	@GetMapping("/resultinfo")
	public String resultinfo(HttpServletRequest Request, Model model) {					
		String user_id = "gogil123";		
		List<ResultPageDto> infoList =  service.examinationResultList(user_id); // My 건강검진 이력 리스트							
		model.addAttribute("examinationResultList", infoList);				
		return "reservresult/examinationResult";
	}
	
	// 기초검사 화면
	@GetMapping("/basicinspection")
	public String basicinspection(HttpServletRequest Request, Model model) {					
		return "reservresult/basicInspection";
	}
	
	// 혈액검사 화면
	@GetMapping("/bloodtest")
	public String bloodtest(HttpServletRequest Request, Model model) {						
		return "reservresult/bloodTest";
	}
	
	// 장비검사 화면
	@GetMapping("/equipmentinspection")
	public String equipmentInspection(HttpServletRequest Request, Model model) {						
		return "reservresult/equipmentInspection";
	}
	
	// 기타검사 화면
	@GetMapping("/otherinspection")
	public String otherinspection(HttpServletRequest Request, Model model) {					
		return "reservresult/otherInspection";
	}

}
