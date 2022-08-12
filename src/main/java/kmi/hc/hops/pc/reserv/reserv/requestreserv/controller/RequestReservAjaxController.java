package kmi.hc.hops.pc.reserv.reserv.requestreserv.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kmi.hc.hops.pc.reserv.reserv.requestreserv.mapper.RequestReservMapper;
import kmi.hc.hops.pc.reserv.reserv.requestreserv.model.CheckupItemCd;
import kmi.hc.hops.pc.reserv.reserv.requestreserv.model.CheckupProduct;
import kmi.hc.hops.pc.reserv.reserv.requestreserv.model.CheckupRoster;
import kmi.hc.hops.pc.reserv.reserv.requestreserv.model.ProductTestItem;
import kmi.hc.hops.pc.reserv.reserv.requestreserv.model.Reserv;
import kmi.hc.hops.pc.reserv.reserv.requestreserv.service.RequestReservService;
/**
 * AjaxController
 *
 * @author ljun0903
 * @version 1.0
 *
 */
@RestController
@RequestMapping("/chekupreserv")
public class RequestReservAjaxController {

	private RequestReservService service;

	@Autowired
	public RequestReservAjaxController(RequestReservService service) {
		this.service = service;
	}
	
	@Resource(name = "requestReservMapper")
	private RequestReservMapper mapper;
	private Object itemNum;
	
	@PostMapping(value="chekupreserv/addroster", produces = "application/text; charset=utf8")	//검진대상자 추가
	@ResponseBody
	public void addroster(HttpSession session, @RequestParam("employCheckupRoster")String employCheckupRoster, 
			@RequestParam("rosterName")String rosterName, @RequestParam("genderCd")String genderCd, 
			@RequestParam("birthday")String birthday, @RequestParam("domesticYn")String domesticYn,
			@RequestParam("nationality")String nationality, @RequestParam("phoneNum")String phoneNum) {
		String id = "abc0719";	//로그인 아이디
		CheckupRoster superChkRosterNo = service.getSuperChkRosterNo(id);
		
		CheckupRoster checkupRoster = new CheckupRoster();
		checkupRoster.setUserId(id);	
		checkupRoster.setEmployRelationType(employCheckupRoster);
		checkupRoster.setRosterName(rosterName);	
		checkupRoster.setGenderType(genderCd);
		checkupRoster.setBirthday(birthday);	
		checkupRoster.setDomsticYn(domesticYn);
		checkupRoster.setPhoneNo(phoneNum);	
		checkupRoster.setSuperCheckupRosterNo(superChkRosterNo.getSuperCheckupRosterNo());
		checkupRoster.setCustomerId(superChkRosterNo.getCustomerId());
		checkupRoster.setPolicyYear(superChkRosterNo.getPolicyYear());
		
		service.insertCheckupRoster(checkupRoster);
	}
	
	@PostMapping(value="chekupreserv/addcompare", produces = "application/json; charset=utf8")	//상품 비교하기 추가 
	@ResponseBody
	public CheckupProduct addcompare(HttpSession session, @RequestParam("num")String cpnum) {	
		CheckupProduct chkProduct = service.selectCp(cpnum);
		
		return chkProduct;
	}
	
	@PostMapping(value="chekupreserv/productmodal", produces = "application/json; charset=utf8")	//상품세부항목 
	@ResponseBody
	public List<CheckupItemCd> productmodal(HttpSession session, @RequestParam("prNum")String prNum, @RequestParam("pcId")String pcId) {	
		CheckupProduct cp = new CheckupProduct();
		cp.setCheckupProductNo(prNum);
		cp.setPartnerCenterId(pcId);
		
		List<CheckupItemCd> itemCdList = service.getProductList(cp);
		return itemCdList;
	}
	
	@PostMapping(value="chekupreserv/getgroupnum", produces = "application/json; charset=utf8")	//상품 비교하기 추가 
	@ResponseBody
	public ProductTestItem getgroupnum(HttpSession session, @RequestParam("testCd")String testCd) {	
		ProductTestItem groupNum = service.getGroupNum(testCd);
		return groupNum;
	}
	
	@PostMapping(value = "chekupreserv/getreservcapa", produces = "application/json; charset=utf8")	
	@ResponseBody
	public String getreservcapa(HttpSession session,@RequestParam Map<String, Object> params) {
		return "";
	}
	
	@PostMapping(value = "chekupreserv/reservcomplete", produces = "application/json; charset=utf8")	
	@ResponseBody
	public void reservcomplete(HttpSession session, @RequestParam("itemNum")String itemNum, @RequestParam("chekupRosterNo")String chekupRosterNo,
			@RequestParam("partnerCsenterId")String partnerCsenterId, @RequestParam("allPrice")String allPrice, @RequestParam("rsvHopeDate01")String rsvHopeDate01,
			@RequestParam("rsvHopeDate02")String rsvHopeDate02, @RequestParam("checkupRequest")String checkupRequest, @RequestParam("resultReceive")String resultReceive, 
			@RequestParam("testItemCount")String testItemCount, @RequestParam(value="testItemCd[]")String[] testItemCd, @RequestParam("chked")String chked, 
			@RequestParam(value="addItemCd[]")String[] addItemCd) {
		
		//1.검색해서 최신 예약번호+1 select
		String reservNo = service.getReservNo();		
		//2.최신 예약번호 예약 insert
		Reserv rsv = new Reserv();
		rsv.setReservNo(reservNo);
		rsv.setCheckupProductNo(itemNum);
		rsv.setCheckupRosterNo(chekupRosterNo);
		rsv.setPartnerCenterId(partnerCsenterId);
		rsv.setSelfPayAmount(allPrice);
		rsv.setReserv1thHopeDay(rsvHopeDate01);
		rsv.setReserv2thHopeDay(rsvHopeDate02);
		rsv.setRequestContent(checkupRequest);
		rsv.setResultReceiveWayCd(resultReceive);
		service.insertReserv(rsv);
		int tCount = Integer.parseInt(testItemCount);
		//3.선택검사 루프 돌려서 예약번호 가지고 insert
		for(int i=0; i<tCount; i++) {
			ProductTestItem proTestItem = new ProductTestItem();
			proTestItem.setTestItemCd(testItemCd[i]);
			proTestItem.setPartnerCenterId(partnerCsenterId);
			proTestItem.setCheckupProductNo(reservNo);
			service.insertChoiceChkItem(proTestItem);
		}
		//4.추가검사 루프 돌려서 예약번호 가지고 insert
		int aCount = Integer.parseInt(chked);
		for(int i=0; i<aCount; i++) {
			ProductTestItem proTestItem = new ProductTestItem();
			proTestItem.setTestItemCd(addItemCd[i]);
			proTestItem.setPartnerCenterId(partnerCsenterId);
			proTestItem.setCheckupProductNo(reservNo);
			service.insertAddTestItem(proTestItem);
		}
	}
}
