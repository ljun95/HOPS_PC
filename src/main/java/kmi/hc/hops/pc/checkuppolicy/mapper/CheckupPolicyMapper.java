package kmi.hc.hops.pc.checkuppolicy.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CheckupPolicyMapper {
	
	// 검진제도안내 가져오기
	Map<String, Object> companycheckuppolicy(String userId);

}
