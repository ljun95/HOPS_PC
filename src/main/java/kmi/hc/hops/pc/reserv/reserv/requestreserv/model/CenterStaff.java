package kmi.hc.hops.pc.reserv.reserv.requestreserv.model;

public class CenterStaff {
	
	private String partnerCenterId = ""; 	
	private String staffName = "";			//의료진이름
	private String staffPosition = "";		//의료진직위
	private String staffDepartment = ""; 	//의료진부서
	private String eduacation = ""; 		//의료진학력
	private String staffImageUrl = "";		//의료진이미지url
	
	public CenterStaff() {
		// TODO Auto-generated constructor stub
	}

	public CenterStaff(String partnerCenterId, String staffName, String staffPosition, String staffDepartment,
			String eduacation, String staffImageUrl) {
		super();
		this.partnerCenterId = partnerCenterId;
		this.staffName = staffName;
		this.staffPosition = staffPosition;
		this.staffDepartment = staffDepartment;
		this.eduacation = eduacation;
		this.staffImageUrl = staffImageUrl;
	}

	public String getPartnerCenterId() {
		return partnerCenterId;
	}

	public void setPartnerCenterId(String partnerCenterId) {
		this.partnerCenterId = partnerCenterId;
	}

	public String getStaffName() {
		return staffName;
	}

	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}

	public String getStaffPosition() {
		return staffPosition;
	}

	public void setStaffPosition(String staffPosition) {
		this.staffPosition = staffPosition;
	}

	public String getStaffDepartment() {
		return staffDepartment;
	}

	public void setStaffDepartment(String staffDepartment) {
		this.staffDepartment = staffDepartment;
	}

	public String getEduacation() {
		return eduacation;
	}

	public void setEduacation(String eduacation) {
		this.eduacation = eduacation;
	}

	public String getStaffImageUrl() {
		return staffImageUrl;
	}

	public void setStaffImageUrl(String staffImageUrl) {
		this.staffImageUrl = staffImageUrl;
	}

	@Override
	public String toString() {
		return "CenterStaff [partnerCenterId=" + partnerCenterId + ", staffName=" + staffName + ", staffPosition="
				+ staffPosition + ", staffDepartment=" + staffDepartment + ", eduacation=" + eduacation
				+ ", staffImageUrl=" + staffImageUrl + "]";
	}

}
