package kmi.hc.hops.pc.reserv.reserv.requestreserv.model;

public class CheckupProduct {

	private String checkupProductNo;
	private String partnerCenterName;
	private String partnerCenterId;
	private String checkupProductTitle;
	private String checkupProductContent;
	private String checkupPrice;
	private String discountRate;
	private String productSt;
	private String peoductEd;
	
	public CheckupProduct() {
		// TODO Auto-generated constructor stub
	}

	public CheckupProduct(String checkupProductNo, String partnerCenterName, String partnerCenterId,
			String checkupProductTitle, String checkupProductContent, String checkupPrice, String discountRate,
			String productSt, String peoductEd) {
		super();
		this.checkupProductNo = checkupProductNo;
		this.partnerCenterName = partnerCenterName;
		this.partnerCenterId = partnerCenterId;
		this.checkupProductTitle = checkupProductTitle;
		this.checkupProductContent = checkupProductContent;
		this.checkupPrice = checkupPrice;
		this.discountRate = discountRate;
		this.productSt = productSt;
		this.peoductEd = peoductEd;
	}

	public String getCheckupProductNo() {
		return checkupProductNo;
	}

	public void setCheckupProductNo(String checkupProductNo) {
		this.checkupProductNo = checkupProductNo;
	}

	public String getPartnerCenterName() {
		return partnerCenterName;
	}

	public void setPartnerCenterName(String partnerCenterName) {
		this.partnerCenterName = partnerCenterName;
	}

	public String getPartnerCenterId() {
		return partnerCenterId;
	}

	public void setPartnerCenterId(String partnerCenterId) {
		this.partnerCenterId = partnerCenterId;
	}

	public String getCheckupProductTitle() {
		return checkupProductTitle;
	}

	public void setCheckupProductTitle(String checkupProductTitle) {
		this.checkupProductTitle = checkupProductTitle;
	}

	public String getCheckupProductContent() {
		return checkupProductContent;
	}

	public void setCheckupProductContent(String checkupProductContent) {
		this.checkupProductContent = checkupProductContent;
	}

	public String getCheckupPrice() {
		return checkupPrice;
	}

	public void setCheckupPrice(String checkupPrice) {
		this.checkupPrice = checkupPrice;
	}

	public String getDiscountRate() {
		return discountRate;
	}

	public void setDiscountRate(String discountRate) {
		this.discountRate = discountRate;
	}

	public String getProductSt() {
		return productSt;
	}

	public void setProductSt(String productSt) {
		this.productSt = productSt;
	}

	public String getPeoductEd() {
		return peoductEd;
	}

	public void setPeoductEd(String peoductEd) {
		this.peoductEd = peoductEd;
	}

	@Override
	public String toString() {
		return "CheckupProduct [checkupProductNo=" + checkupProductNo + ", partnerCenterName=" + partnerCenterName
				+ ", partnerCenterId=" + partnerCenterId + ", checkupProductTitle=" + checkupProductTitle
				+ ", checkupProductContent=" + checkupProductContent + ", checkupPrice=" + checkupPrice
				+ ", discountRate=" + discountRate + ", productSt=" + productSt + ", peoductEd=" + peoductEd + "]";
	}

}
