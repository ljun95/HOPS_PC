package kmi.hc.hops.pc.reserv.reserv.requestreserv.model;

public class CheckupItemCd {

	private String checkupItemCd;
	private String checkupMainCategoryCd;
	private String checkupMidCategoryCd;
	private String itemName;
	private String standardPrice;
	private String relationDiseaseContent;
	private String genderCd;
	private String regDt;
	private String checkupItemSt;
	
	public CheckupItemCd() {
		// TODO Auto-generated constructor stub
	}

	public CheckupItemCd(String checkupItemCd, String checkupMainCategoryCd, String checkupMidCategoryCd,
			String itemName, String standardPrice, String relationDiseaseContent, String genderCd, String regDt,
			String checkupItemSt) {
		super();
		this.checkupItemCd = checkupItemCd;
		this.checkupMainCategoryCd = checkupMainCategoryCd;
		this.checkupMidCategoryCd = checkupMidCategoryCd;
		this.itemName = itemName;
		this.standardPrice = standardPrice;
		this.relationDiseaseContent = relationDiseaseContent;
		this.genderCd = genderCd;
		this.regDt = regDt;
		this.checkupItemSt = checkupItemSt;
	}

	public String getCheckupItemCd() {
		return checkupItemCd;
	}

	public void setCheckupItemCd(String checkupItemCd) {
		this.checkupItemCd = checkupItemCd;
	}

	public String getCheckupMainCategoryCd() {
		return checkupMainCategoryCd;
	}

	public void setCheckupMainCategoryCd(String checkupMainCategoryCd) {
		this.checkupMainCategoryCd = checkupMainCategoryCd;
	}

	public String getCheckupMidCategoryCd() {
		return checkupMidCategoryCd;
	}

	public void setCheckupMidCategoryCd(String checkupMidCategoryCd) {
		this.checkupMidCategoryCd = checkupMidCategoryCd;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getStandardPrice() {
		return standardPrice;
	}

	public void setStandardPrice(String standardPrice) {
		this.standardPrice = standardPrice;
	}

	public String getRelationDiseaseContent() {
		return relationDiseaseContent;
	}

	public void setRelationDiseaseContent(String relationDiseaseContent) {
		this.relationDiseaseContent = relationDiseaseContent;
	}

	public String getGenderCd() {
		return genderCd;
	}

	public void setGenderCd(String genderCd) {
		this.genderCd = genderCd;
	}

	public String getRegDt() {
		return regDt;
	}

	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}

	public String getCheckupItemSt() {
		return checkupItemSt;
	}

	public void setCheckupItemSt(String checkupItemSt) {
		this.checkupItemSt = checkupItemSt;
	}

	@Override
	public String toString() {
		return "CheckupItemCd [checkupItemCd=" + checkupItemCd + ", checkupMainCategoryCd=" + checkupMainCategoryCd
				+ ", checkupMidCategoryCd=" + checkupMidCategoryCd + ", itemName=" + itemName + ", standardPrice="
				+ standardPrice + ", relationDiseaseContent=" + relationDiseaseContent + ", genderCd=" + genderCd
				+ ", regDt=" + regDt + ", checkupItemSt=" + checkupItemSt + "]";
	}
}
