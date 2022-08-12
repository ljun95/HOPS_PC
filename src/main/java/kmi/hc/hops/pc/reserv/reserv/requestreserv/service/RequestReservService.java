package kmi.hc.hops.pc.reserv.reserv.requestreserv.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kmi.hc.hops.pc.reserv.reserv.requestreserv.mapper.RequestReservMapper;
import kmi.hc.hops.pc.reserv.reserv.requestreserv.model.CenterEquipment;
import kmi.hc.hops.pc.reserv.reserv.requestreserv.model.CenterStaff;
import kmi.hc.hops.pc.reserv.reserv.requestreserv.model.CheckupItemCd;
import kmi.hc.hops.pc.reserv.reserv.requestreserv.model.CheckupProduct;
import kmi.hc.hops.pc.reserv.reserv.requestreserv.model.CheckupRoster;
import kmi.hc.hops.pc.reserv.reserv.requestreserv.model.PartnerCenter;
import kmi.hc.hops.pc.reserv.reserv.requestreserv.model.ProductTestItem;
import kmi.hc.hops.pc.reserv.reserv.requestreserv.model.Reserv;
import kmi.hc.hops.pc.reserv.reserv.requestreserv.model.SaveReserv;
import kmi.hc.hops.pc.reserv.reserv.requestreserv.model.TestItemCd;

@Service
public class RequestReservService {
	
	@Resource(name= "requestReservMapper")
	public RequestReservMapper mapper;

	public List<CheckupRoster> crSearch(String id) {
		return mapper.crSearch(id);
	}

	public int countCr(String id) {
		return mapper.countCr(id);
	}

	public List<PartnerCenter> getId(String rNum) {
		return mapper.getId(rNum);
	}

	public SaveReserv getPolicy(String saveChekupRosterNo) {
		// TODO Auto-generated method stub
		return mapper.getPolicy(saveChekupRosterNo);
	}

	public List<TestItemCd> testItemList(SaveReserv sr) {
		// TODO Auto-generated method stub
		return mapper.testItemList(sr);
	}

	public List<CheckupProduct> getCpList(SaveReserv sr) {
		// TODO Auto-generated method stub
		return mapper.getCpList(sr);
	}

	public String getPcName(String pc) {
		// TODO Auto-generated method stub
		return mapper.getPcName(pc);
	}

	public void insertCheckupRoster(CheckupRoster checkupRoster) {
		mapper.insertCheckupRoster(checkupRoster);
		
	}

	public CheckupRoster getSuperChkRosterNo(String id) {
		return mapper.getSuperChkRosterNo(id);
	}

	public CheckupProduct selectCp(String cpnum) {
		return mapper.selectCp(cpnum);
	}

	public PartnerCenter getPartnerData(String partnerId) {
		return mapper.getPartnerData(partnerId);
	}

	public List<CheckupItemCd> getProductList(CheckupProduct cp) {
		return mapper.getProductList(cp);
	}

	public List<ProductTestItem> getChoiceGroupNum(ProductTestItem pti) {
		return mapper.getChoiceGroupNum(pti);
	}

	public List<ProductTestItem> getChoiceList(ProductTestItem pti) {
		return mapper.getChoiceList(pti);
	}

	public PartnerCenter getParCen(String partnerId) {
		return mapper.getParCen(partnerId);
	}

	public List<CenterStaff> getStaffList(String partnerId) {
		return mapper.getStaffList(partnerId);
	}

	public String getStaffCount(String partnerId) {
		return mapper.getStaffCount(partnerId);
	}

	public List<CenterEquipment> getCeList(String partnerId) {
		return mapper.getCeList(partnerId);
	}

	public String getParCenCount(String rNum) {
		return mapper.getParCenCount(rNum);
	}

	public List<TestItemCd> getTestItemList(ProductTestItem pti) {
		return mapper.getTestItemList(pti);
	}

	public List<ProductTestItem> getGroupList(ProductTestItem pti) {
		return mapper.getGroupList(pti);
	}

	public ProductTestItem getGroupNum(String testCd) {
		return mapper.getGroupNum(testCd);
	}

	public CheckupRoster getRosterInfo(String rosterNum) {
		return mapper.getRosterInfo(rosterNum);
	}

	public CheckupProduct getProductData(String itemNum) {
		return mapper.getProductData(itemNum);
	}

	public String getProductPrice(String itemNum) {
		return mapper.getProductPrice(itemNum);
	}

	public String getSettle(String chekuprosterno) {
		return mapper.getSettle(chekuprosterno);
	}

	public String getReservNo() {
		return mapper.getReservNo();
	}

	public void insertReserv(Reserv rsv) {
		mapper.insertReserv(rsv);
	}

	public void insertChoiceChkItem(ProductTestItem proTestItem) {
		mapper.insertChoiceChkItem(proTestItem);
	}

	public void insertAddTestItem(ProductTestItem proTestItem) {
		mapper.insertAddTestItem(proTestItem);
	}



	
}
