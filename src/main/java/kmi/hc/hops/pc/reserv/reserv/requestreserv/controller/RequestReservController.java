package kmi.hc.hops.pc.reserv.reserv.requestreserv.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kmi.hc.hops.pc.reserv.reserv.requestreserv.mapper.RequestReservMapper;
import kmi.hc.hops.pc.reserv.reserv.requestreserv.model.CenterEquipment;
import kmi.hc.hops.pc.reserv.reserv.requestreserv.model.CenterStaff;
import kmi.hc.hops.pc.reserv.reserv.requestreserv.model.CheckupProduct;
import kmi.hc.hops.pc.reserv.reserv.requestreserv.model.CheckupRoster;
import kmi.hc.hops.pc.reserv.reserv.requestreserv.model.PartnerCenter;
import kmi.hc.hops.pc.reserv.reserv.requestreserv.model.ProductTestItem;
import kmi.hc.hops.pc.reserv.reserv.requestreserv.model.SaveReserv;
import kmi.hc.hops.pc.reserv.reserv.requestreserv.model.TestItemCd;
import kmi.hc.hops.pc.reserv.reserv.requestreserv.service.RequestReservService;
/**
 * AjaxController
 *
 * @author ljun
 * @version 1.0
 *
 */

@Controller
@RequestMapping("/chekupreserv")
public class RequestReservController {

	private RequestReservService service;

	@Autowired
	public RequestReservController(RequestReservService service) {
		this.service = service;
	}
	
	@Resource(name = "requestReservMapper")
	private RequestReservMapper mapper;
	
	@GetMapping("rosterchoice")
	public String rosterchoice(Model model, HttpSession session) {
		String id = "abc0719";
		
		List<CheckupRoster> cr = service.crSearch(id);
		int count = service.countCr(id);
				
		model.addAttribute("list", cr);
		model.addAttribute("count", count);
		return "checkupreserv/rosterchoice";
	}
	
	@GetMapping("partnerhospital")
	public String partnerhospital(Model model, HttpSession session, SaveReserv sr) {
		SaveReserv srs = service.getPolicy(sr.getSaveChekupRosterNo());
		List<PartnerCenter> partnerCenterId = service.getId(sr.getSaveChekupRosterNo());
		String parCenCount = service.getParCenCount(sr.getSaveChekupRosterNo());
		model.addAttribute("partnerCenterId", partnerCenterId);
		model.addAttribute("partnerCenterId2", partnerCenterId);
		model.addAttribute("SaveReserv", sr);
		model.addAttribute("srs", srs);
		model.addAttribute("parCenCount", parCenCount);
		
		return "checkupreserv/partnerhospital";
	}
	
	@PostMapping("chekupreserv/productdetail")
	public String productdetail(Model model, HttpSession session, @RequestParam("ci")String ci,
								@RequestParam("py")String py, @RequestParam("pc")String pc) {
		
		SaveReserv sr = new SaveReserv();
		sr.setSaveCustomerId(ci);
		sr.setSavePoilcyYear(py);
		sr.setSavePartnerCenterId(pc);
		
		String pcName = service.getPcName(pc);
		List<CheckupProduct> cpList = service.getCpList(sr);
		model.addAttribute("cpList", cpList);
		model.addAttribute("sr", sr);
		model.addAttribute("pcName", pcName);
		return "checkupreserv/testitemdetail";
	}
	
	@GetMapping("choicecheckup")
	public String choiceCheckup(Model model, HttpSession session, ProductTestItem pti) {
		List<ProductTestItem> groupNum = service.getChoiceGroupNum(pti);
		List<ProductTestItem> productList = service.getChoiceList(pti);
		
		model.addAttribute("groupNum", groupNum);
		model.addAttribute("productList", productList);
		return "checkupreserv/choiceCheckup";
	}
	
	@PostMapping(value="chekupreserv/partnercenterdetail")
	public String partnercenterdetail(Model model, HttpSession session, @RequestParam("partnerId")String partnerId) {
		PartnerCenter parCenDetail = service.getParCen(partnerId);
		model.addAttribute("parCenDetail", parCenDetail);
		
		return "checkupreserv/modal/centerguidedetail";
	}
	
	@PostMapping(value = "chekupreserv/gocenterstaffdetail")
	public String centerstaffdetail(Model model, HttpSession session, @RequestParam("centerId")String partnerId) {
		String staffCount = service.getStaffCount(partnerId);
		List<CenterStaff> cenStaffList = service.getStaffList(partnerId);
		model.addAttribute("staffCount", staffCount);
		model.addAttribute("cenStaffList", cenStaffList);
		model.addAttribute("cenStaffList2", cenStaffList);
		return "checkupreserv/modal/centerstaffdetail";
	}
	
	@PostMapping("chekupreserv/goequipment")
	public String equipment(Model model, HttpSession session, @RequestParam("centerId")String partnerId) {
		List<CenterEquipment> ceList = service.getCeList(partnerId);
		model.addAttribute("ceList", ceList);
		
		return "checkupreserv/modal/centerequipmentdetail";
	}
	
	@GetMapping("addtest")
	public String addtest(Model model, HttpSession session, ProductTestItem pti) {
		List<TestItemCd> testItemList = service.getTestItemList(pti);
		List<ProductTestItem> groupList = service.getGroupList(pti);
		System.out.println(testItemList);
		model.addAttribute("testItemList", testItemList);
		model.addAttribute("groupList", groupList);
		return "checkupreserv/addtest";
	}
	
	@GetMapping("checkupdaylist")
	public String checkupdaylist(Model model, HttpSession session) {
		
		return "checkupreserv/checkupday";
	}
	
	@GetMapping("checkupinfolist")
	public String checkupinfolist(Model model, HttpSession session, @RequestParam("rosterNum")String rosterNum) {
		CheckupRoster chkRoster = service.getRosterInfo(rosterNum);
		model.addAttribute("chkRoster", chkRoster);
		return "checkupreserv/checkupinfo";
	}
	
	@GetMapping("finalconfirmlist")
	public String finalconfirmlist(Model model, HttpSession session, @RequestParam("svpartnercenterid")String partnerId,
									@RequestParam("itemnum")String itemNum, @RequestParam("chekuprosterno")String chekuprosterno) {
		ProductTestItem pti = new ProductTestItem();
		pti.setPartnerCenterId(partnerId);
		pti.setCheckupProductNo(itemNum);
		String productPrice = service.getProductPrice(itemNum);
		String settle = service.getSettle(chekuprosterno);
		PartnerCenter parcenDetail = service.getParCen(partnerId);
		CheckupProduct productData = service.getProductData(itemNum);
		List<ProductTestItem> groupNum = service.getChoiceGroupNum(pti);
		List<ProductTestItem> productList = service.getChoiceList(pti);
		model.addAttribute("productPrice", productPrice);
		model.addAttribute("groupNum", groupNum);
		model.addAttribute("productList", productList);
		model.addAttribute("partnerId", parcenDetail);
		model.addAttribute("productData", productData);
		model.addAttribute("settle", settle);
		return "checkupreserv/finalconfirm";
	}
	
	@GetMapping("reservcomplete")
	public String reservcomplete(Model model, HttpSession session) {

		return "checkupreserv/reservComplete";
	}
}