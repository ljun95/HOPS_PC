package kmi.hc.hops.pc.checkuppolicy.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/checkuppolicy")
@Controller
public class CheckupPolicyController {
	
	// 국가건강검진제도안내 화면
	@GetMapping("countrycheckuppolicy")
	public String countrycheckuppolicy(HttpServletRequest Request, Model model) {				
		return "checkuppolicy/countryCheckupPolicy";
	}
	
	// 우리회사검진제도안내 화면
	@GetMapping("companycheckuppolicy")
	public String companycheckuppolicy(HttpServletRequest Request, Model model) {				
		return "checkuppolicy/companyCheckupPolicy";
	}
}
