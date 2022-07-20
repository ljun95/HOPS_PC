package kmi.hc.hops.pc.reserv.reserv.requestreserv.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kmi.hc.hops.pc.reserv.reserv.requestreserv.mapper.RequestReservMapper;
import kmi.hc.hops.pc.reserv.reserv.requestreserv.service.RequestReservService;

@Controller
@RequestMapping("/chekupreserv")
public class RequestReservController {

	private RequestReservService service;

	@Autowired
	public RequestReservController(RequestReservService service) {
		this.service = service;
	}
	
	//@Resource(name = "requestReservMapper")
	//private RequestReservMapper mapper;
	
	@GetMapping("rosterchoice")
	public String rosterchoice(Model model, HttpSession session) {
		String id = "abc0719";
		
		
		return "checkupreserv/rosterchoice";
	}
}