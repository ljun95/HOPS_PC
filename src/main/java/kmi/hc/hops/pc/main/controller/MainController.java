package kmi.hc.hops.pc.main.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kmi.hc.hops.pc.main.model.MainDto;
import kmi.hc.hops.pc.main.service.MainService;

@RequestMapping("/main")
@Controller
public class MainController {
	
		// 서비스 주입
		private MainService service;

		@Autowired
		public MainController(MainService service) {
			this.service = service;
		}
	
	// 홈화면
	@GetMapping
	public String main(HttpServletRequest Request, Model model) {		
		String customerId = "CMCD10";		
		// 공지사항 리스트		
		List<MainDto> list =  service.noticeList(customerId); 		
		model.addAttribute("noticeList", list);
		System.out.println("확인 : " + list);
		return "main/mainPage";
	}
}
