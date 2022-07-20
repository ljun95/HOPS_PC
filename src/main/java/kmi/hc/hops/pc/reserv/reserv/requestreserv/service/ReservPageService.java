package kmi.hc.hops.pc.reserv.reserv.requestreserv.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kmi.hc.hops.pc.reserv.reserv.requestreserv.mapper.ReservPageMapper;

@Service
public class ReservPageService {

	@Resource(name="reservPageMapper")
	public ReservPageMapper mapper;
	
}
