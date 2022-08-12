package kmi.hc.hops.pc.reserv.reserv.requestreserv.model;

public class SaveReserv {

	private String saveChekupRosterNo;		//검진대상자 번호
	
	private String savePartnerCenterId;		//협력병원아이디
	private String saveCheckupProductNo;	//검진상품번호
	
		
	private String saveCustomerId;			//고객사아이디	(협력병원상세보기에 사용)
	private String savePoilcyYear;			//정책연도		(협력병원상세보기에 사용)
	
	public SaveReserv() {
		// TODO Auto-generated constructor stub
	}

	public SaveReserv(String saveChekupRosterNo, String savePartnerCenterId, String saveCheckupProductNo,
			String saveCustomerId, String savePoilcyYear) {
		super();
		this.saveChekupRosterNo = saveChekupRosterNo;
		this.savePartnerCenterId = savePartnerCenterId;
		this.saveCheckupProductNo = saveCheckupProductNo;
		this.saveCustomerId = saveCustomerId;
		this.savePoilcyYear = savePoilcyYear;
	}

	public String getSaveChekupRosterNo() {
		return saveChekupRosterNo;
	}

	public void setSaveChekupRosterNo(String saveChekupRosterNo) {
		this.saveChekupRosterNo = saveChekupRosterNo;
	}

	public String getSavePartnerCenterId() {
		return savePartnerCenterId;
	}

	public void setSavePartnerCenterId(String savePartnerCenterId) {
		this.savePartnerCenterId = savePartnerCenterId;
	}

	public String getSaveCheckupProductNo() {
		return saveCheckupProductNo;
	}

	public void setSaveCheckupProductNo(String saveCheckupProductNo) {
		this.saveCheckupProductNo = saveCheckupProductNo;
	}

	public String getSaveCustomerId() {
		return saveCustomerId;
	}

	public void setSaveCustomerId(String saveCustomerId) {
		this.saveCustomerId = saveCustomerId;
	}

	public String getSavePoilcyYear() {
		return savePoilcyYear;
	}

	public void setSavePoilcyYear(String savePoilcyYear) {
		this.savePoilcyYear = savePoilcyYear;
	}

	@Override
	public String toString() {
		return "SaveReserv [saveChekupRosterNo=" + saveChekupRosterNo + ", savePartnerCenterId=" + savePartnerCenterId
				+ ", saveCheckupProductNo=" + saveCheckupProductNo + ", saveCustomerId=" + saveCustomerId
				+ ", savePoilcyYear=" + savePoilcyYear + "]";
	}

}
