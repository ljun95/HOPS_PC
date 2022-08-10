package kmi.hc.hops.pc.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kmi.hc.hops.pc.main.mapper.MainMapper;
import kmi.hc.hops.pc.main.model.MainDto;

@Service
public class MainService {

	@Autowired
	private MainMapper mapper; 

	// 공지사항 리스트
	public List<MainDto> noticeList(String customerId) {
		return mapper.noticeList(customerId);
	}

}
