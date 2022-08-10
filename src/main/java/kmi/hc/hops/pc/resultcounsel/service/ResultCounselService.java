package kmi.hc.hops.pc.resultcounsel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kmi.hc.hops.pc.resultcounsel.mapper.ResultCounselMapper;
import kmi.hc.hops.pc.resultcounsel.model.ResultCounselDto;
import kmi.hc.hops.pc.resultcounsel.model.ResultCounselListDto;
import kmi.hc.hops.pc.resultcounsel.model.ResultCounselListParam;

@Service
public class ResultCounselService {
	
	@Autowired
	private ResultCounselMapper mapper;
	
	// 검진 이력 리스트
	public List<ResultCounselDto> checkupHistList(String userId) {
		return mapper.checkupHistList(userId);
	}
	
	//결과 상담내역 조회
	public List<ResultCounselListDto> counselresultlist(ResultCounselListParam param) {		
		return mapper.counselresultlist(param);
	}
	// 결과 상담내역 페이징
	public ResultCounselListParam page(ResultCounselListParam param) {
		int skip = param.getPageNo();		
		int amount = Integer.parseInt(param.getListSize().toString());
		int pageno = (skip-1)*amount;		
		int curPage = param.getPageNo();								
		int BLOCK_SCALE = 10;
		int PAGE_SCALE = Integer.parseInt(param.getListSize().toString());		
		int count = mapper.count(param);				
		int totPage = (int) Math.ceil(count*1.0 / PAGE_SCALE);		
		int totBlock = (int)Math.ceil(totPage / BLOCK_SCALE);		
	    int curBlock = (int)Math.ceil((curPage-1) / BLOCK_SCALE)+1;	   
	    int blockBegin = (curBlock-1)*BLOCK_SCALE+1;	   
	    int blockEnd = blockBegin+BLOCK_SCALE-1;	    
	    if(blockEnd > totPage) blockEnd = totPage;	    
	    double paginationStart = (double)(skip - 1) / amount * amount + 1;
		double paginationEnd = (double)paginationStart + 1;									   	    	
	    int prevPage = (int)paginationStart - 1;
		int nextPage = (int)paginationEnd;	    	    	   	   
	    if(nextPage >= totPage) nextPage = totPage;	    
	    param.setBLOCK_SCALE(BLOCK_SCALE);
	    param.setCount(count);
	    param.setTotPage(totPage);
	    param.setTotBlock(totBlock);
	    param.setCurBlock(curBlock);
	    param.setBlockBegin(blockBegin);
	    param.setBlockEnd(blockEnd);
	    param.setPrevPage(prevPage);
	    param.setNextPage(nextPage);
		param.setAmount(amount);
	    param.setSkip(pageno);
		return param;
	}

	

		
}
