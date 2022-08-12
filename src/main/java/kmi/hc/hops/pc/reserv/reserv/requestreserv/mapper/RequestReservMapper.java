package kmi.hc.hops.pc.reserv.reserv.requestreserv.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

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

@Mapper
public interface RequestReservMapper {

	List<CheckupRoster> crSearch(String id);

	int countCr(String id);

	List<PartnerCenter> getId(String rNum);

	SaveReserv getPolicy(String saveChekupRosterNo);

	List<TestItemCd> testItemList(SaveReserv sr);

	List<CheckupProduct> getCpList(SaveReserv sr);

	String getPcName(String pc);

	void insertCheckupRoster(CheckupRoster checkupRoster);

	CheckupRoster getSuperChkRosterNo(String id);

	CheckupProduct selectCp(String cpnum);

	PartnerCenter getPartnerData(String partnerId);

	List<CheckupItemCd> getProductList(CheckupProduct cp);

	List<ProductTestItem> getChoiceGroupNum(ProductTestItem pti);

	List<ProductTestItem> getChoiceList(ProductTestItem pti);

	PartnerCenter getParCen(String partnerId);

	List<CenterStaff> getStaffList(String partnerId);

	String getStaffCount(String partnerId);

	List<CenterEquipment> getCeList(String partnerId);

	String getParCenCount(String rNum);

	List<TestItemCd> getTestItemList(ProductTestItem pti);

	List<ProductTestItem> getGroupList(ProductTestItem pti);

	ProductTestItem getGroupNum(String testCd);

	CheckupRoster getRosterInfo(String rosterNum);

	CheckupProduct getProductData(String itemNum);

	String getProductPrice(String itemNum);

	String getSettle(String chekuprosterno);

	String getReservNo();

	void insertReserv(Reserv rsv);

    void insertChoiceChkItem(ProductTestItem proTestItem);

	void insertAddTestItem(ProductTestItem proTestItem);
}
