package kmi.hc.hops.pc.reserv.reserv.requestreserv.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kmi.hc.hops.pc.reserv.reserv.requestreserv.mapper.ReservPageMapper;
import kmi.hc.hops.pc.reserv.reserv.requestreserv.service.ReservPageService;

@Controller
@RequestMapping("/chekupreserv")
public class ReservPageController {

	private ReservPageService service;
	
	@Autowired
	public ReservPageController(ReservPageService service) {
		this.service = service;
	}
	
	@Resource(name="reservPageMapper")
	private ReservPageMapper mapper;
}
