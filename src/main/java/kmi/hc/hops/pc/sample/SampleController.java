package kmi.hc.hops.pc.sample;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SampleController {
	
	@GetMapping("/a")
	public String mainPage(HttpServletRequest Request) {
		System.out.println("=========================");
		return "sample";
	}

}