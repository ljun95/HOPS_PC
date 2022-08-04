package kmi.hc.hops.pc.reserv.reservresult.resultpage.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kmi.hc.hops.pc.reserv.reservresult.resultpage.mapper.ResultPageMapper;
import kmi.hc.hops.pc.reserv.reservresult.resultpage.model.ResultPageDto;



@Service
public class ResultPageService {
	

	@Autowired
	private ResultPageMapper mapper;
	
	// My 건강검진 이력 리스트
	public List<ResultPageDto> examinationResultList(String user_id) {		
		return mapper.examinationResultList(user_id);
	}	

}
