package kmi.hc.hops.pc.checkuppolicy.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import kmi.hc.hops.pc.checkuppolicy.mapper.CheckupPolicyMapper;

@RestController
@RequestMapping("/checkuppolicy")
public class CheckupPolicyAjaxController {
	
	@Autowired
	private CheckupPolicyMapper mapper;
	
	// 우리회사검진제도안내 화면
	@PostMapping("companycheckuppolicy")
	public Map<String, Object> companycheckuppolicy(@RequestParam("userId")String userId) {
		System.out.println("확인 : " + userId);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("companycheckuppolicy", mapper.companycheckuppolicy(userId));
		return map;
	}
}
