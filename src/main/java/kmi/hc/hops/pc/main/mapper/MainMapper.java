package kmi.hc.hops.pc.main.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kmi.hc.hops.pc.main.model.MainDto;

@Mapper
public interface MainMapper {
	
	// 공지사항 리스트
	List<MainDto> noticeList(String customerId);

}
