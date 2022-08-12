package kmi.hc.hops.pc.reserv.reserv.requestreserv.model;

public class CenterEquipment {
	private String partnerCenterId = "";	//협력병원아이디
	private String equipName = ""; //장비이름
	private String equipModel = ""; //장비모델
	private String equipCount = ""; //장비수량
	private String equipGuide = ""; //장비안내
	private String equipImageUrl = ""; //장비이미지url
	
	public CenterEquipment() {
		// TODO Auto-generated constructor stub
	}

	public CenterEquipment(String partnerCenterId, String equipName, String equipModel, String equipCount,
			String equipGuide, String equipImageUrl) {
		super();
		this.partnerCenterId = partnerCenterId;
		this.equipName = equipName;
		this.equipModel = equipModel;
		this.equipCount = equipCount;
		this.equipGuide = equipGuide;
		this.equipImageUrl = equipImageUrl;
	}

	public String getPartnerCenterId() {
		return partnerCenterId;
	}

	public void setPartnerCenterId(String partnerCenterId) {
		this.partnerCenterId = partnerCenterId;
	}

	public String getEquipName() {
		return equipName;
	}

	public void setEquipName(String equipName) {
		this.equipName = equipName;
	}

	public String getEquipModel() {
		return equipModel;
	}

	public void setEquipModel(String equipModel) {
		this.equipModel = equipModel;
	}

	public String getEquipCount() {
		return equipCount;
	}

	public void setEquipCount(String equipCount) {
		this.equipCount = equipCount;
	}

	public String getEquipGuide() {
		return equipGuide;
	}

	public void setEquipGuide(String equipGuide) {
		this.equipGuide = equipGuide;
	}

	public String getEquipImageUrl() {
		return equipImageUrl;
	}

	public void setEquipImageUrl(String equipImageUrl) {
		this.equipImageUrl = equipImageUrl;
	}

	@Override
	public String toString() {
		return "CenterEquipment [partnerCenterId=" + partnerCenterId + ", equipName=" + equipName + ", equipModel="
				+ equipModel + ", equipCount=" + equipCount + ", equipGuide=" + equipGuide + ", equipImageUrl="
				+ equipImageUrl + "]";
	}
	
}
