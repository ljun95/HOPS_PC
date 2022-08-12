package kmi.hc.hops.pc.reserv.reserv.requestreserv.model;

public class ProductTestItem {
	
	private String checkupProductNo;
	private String partnerCenterId;
	private String testItemCd;
	private String choiceGroupNo;
	private String choiceCount;
	private String productProposType;
	private String regDt;
	private String testItemName;
	private String testItemGuide;
	private String genderCd;
	private String standardPrice;
	private String count;
	
	public ProductTestItem() {
		// TODO Auto-generated constructor stub
	}

	public ProductTestItem(String checkupProductNo, String partnerCenterId, String testItemCd, String choiceGroupNo,
			String choiceCount, String productProposType, String regDt, String testItemName, String testItemGuide,
			String genderCd, String standardPrice, String count) {
		super();
		this.checkupProductNo = checkupProductNo;
		this.partnerCenterId = partnerCenterId;
		this.testItemCd = testItemCd;
		this.choiceGroupNo = choiceGroupNo;
		this.choiceCount = choiceCount;
		this.productProposType = productProposType;
		this.regDt = regDt;
		this.testItemName = testItemName;
		this.testItemGuide = testItemGuide;
		this.genderCd = genderCd;
		this.standardPrice = standardPrice;
		this.count = count;
	}

	public String getCheckupProductNo() {
		return checkupProductNo;
	}

	public void setCheckupProductNo(String checkupProductNo) {
		this.checkupProductNo = checkupProductNo;
	}

	public String getPartnerCenterId() {
		return partnerCenterId;
	}

	public void setPartnerCenterId(String partnerCenterId) {
		this.partnerCenterId = partnerCenterId;
	}

	public String getTestItemCd() {
		return testItemCd;
	}

	public void setTestItemCd(String testItemCd) {
		this.testItemCd = testItemCd;
	}

	public String getChoiceGroupNo() {
		return choiceGroupNo;
	}

	public void setChoiceGroupNo(String choiceGroupNo) {
		this.choiceGroupNo = choiceGroupNo;
	}

	public String getChoiceCount() {
		return choiceCount;
	}

	public void setChoiceCount(String choiceCount) {
		this.choiceCount = choiceCount;
	}

	public String getProductProposType() {
		return productProposType;
	}

	public void setProductProposType(String productProposType) {
		this.productProposType = productProposType;
	}

	public String getRegDt() {
		return regDt;
	}

	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}

	public String getTestItemName() {
		return testItemName;
	}

	public void setTestItemName(String testItemName) {
		this.testItemName = testItemName;
	}

	public String getTestItemGuide() {
		return testItemGuide;
	}

	public void setTestItemGuide(String testItemGuide) {
		this.testItemGuide = testItemGuide;
	}

	public String getGenderCd() {
		return genderCd;
	}

	public void setGenderCd(String genderCd) {
		this.genderCd = genderCd;
	}

	public String getStandardPrice() {
		return standardPrice;
	}

	public void setStandardPrice(String standardPrice) {
		this.standardPrice = standardPrice;
	}

	public String getCount() {
		return count;
	}

	public void setCount(String count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "ProductTestItem [checkupProductNo=" + checkupProductNo + ", partnerCenterId=" + partnerCenterId
				+ ", testItemCd=" + testItemCd + ", choiceGroupNo=" + choiceGroupNo + ", choiceCount=" + choiceCount
				+ ", productProposType=" + productProposType + ", regDt=" + regDt + ", testItemName=" + testItemName
				+ ", testItemGuide=" + testItemGuide + ", genderCd=" + genderCd + ", standardPrice=" + standardPrice
				+ ", count=" + count + "]";
	}

}
