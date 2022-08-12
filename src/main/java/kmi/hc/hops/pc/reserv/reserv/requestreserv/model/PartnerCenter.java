package kmi.hc.hops.pc.reserv.reserv.requestreserv.model;

public class PartnerCenter {
	private String partnerCenterId;//협력병원아이디
	private String partnerCenterName;//협력병원이름
	private String ceoName;
	private String phoneNo;
	private String guidePhoneNo;
	private String fax;
	private String hompageUrl;
	private String resultReceiveWayCd;
	private String corpNo;
	private String area;
	private String addrress;
	private String addrressDetail;
	private String zipCd;
	private String specialCheckUpYn;
	private String spercialCheckupCountYn;
	private String nhisBillYn;
	private String onpayNy;
	private String colonscopyYn;
	private String reservSmsServiceYn;
	private String mainImageUrl;
	private String companyLogoUrl;
	private String minWaitingDay;
	private String mapUrl;
	private String apinetworkingUrl;
	private String regDt;
	private String partnerCenterSt;
	private String partnerCebterType;
	private String note;
	private String salesAdminId;
	private String adminId;
	
	private String placeGuide;	//장소안내
	private String checkupTimeGuide; //검진시간안내
	private String closedGuide; //휴무안내
	private String reservUqGuide; //예약특이사항안내
	private String partnerCenterGuide; //협력병원안내
	private String subwayGuide; //지하철 안내
	private String busGuide;	//버스안내
	private String woncarGuide; //자가용안내
	private String parkingGuide;//주차안내
	private String etcTrafficGuide; //기타교통안내
	
	private String centerPlaceId; //병원장소아이디
	
	public PartnerCenter() {
		// TODO Auto-generated constructor stub
	}

	public PartnerCenter(String partnerCenterId, String partnerCenterName, String ceoName, String phoneNo,
			String guidePhoneNo, String fax, String hompageUrl, String resultReceiveWayCd, String corpNo, String area,
			String addrress, String addrressDetail, String zipCd, String specialCheckUpYn,
			String spercialCheckupCountYn, String nhisBillYn, String onpayNy, String colonscopyYn,
			String reservSmsServiceYn, String mainImageUrl, String companyLogoUrl, String minWaitingDay, String mapUrl,
			String apinetworkingUrl, String regDt, String partnerCenterSt, String partnerCebterType, String note,
			String salesAdminId, String adminId, String placeGuide, String checkupTimeGuide, String closedGuide,
			String reservUqGuide, String partnerCenterGuide, String subwayGuide, String busGuide, String woncarGuide,
			String parkingGuide, String etcTrafficGuide, String centerPlaceId) {
		super();
		this.partnerCenterId = partnerCenterId;
		this.partnerCenterName = partnerCenterName;
		this.ceoName = ceoName;
		this.phoneNo = phoneNo;
		this.guidePhoneNo = guidePhoneNo;
		this.fax = fax;
		this.hompageUrl = hompageUrl;
		this.resultReceiveWayCd = resultReceiveWayCd;
		this.corpNo = corpNo;
		this.area = area;
		this.addrress = addrress;
		this.addrressDetail = addrressDetail;
		this.zipCd = zipCd;
		this.specialCheckUpYn = specialCheckUpYn;
		this.spercialCheckupCountYn = spercialCheckupCountYn;
		this.nhisBillYn = nhisBillYn;
		this.onpayNy = onpayNy;
		this.colonscopyYn = colonscopyYn;
		this.reservSmsServiceYn = reservSmsServiceYn;
		this.mainImageUrl = mainImageUrl;
		this.companyLogoUrl = companyLogoUrl;
		this.minWaitingDay = minWaitingDay;
		this.mapUrl = mapUrl;
		this.apinetworkingUrl = apinetworkingUrl;
		this.regDt = regDt;
		this.partnerCenterSt = partnerCenterSt;
		this.partnerCebterType = partnerCebterType;
		this.note = note;
		this.salesAdminId = salesAdminId;
		this.adminId = adminId;
		this.placeGuide = placeGuide;
		this.checkupTimeGuide = checkupTimeGuide;
		this.closedGuide = closedGuide;
		this.reservUqGuide = reservUqGuide;
		this.partnerCenterGuide = partnerCenterGuide;
		this.subwayGuide = subwayGuide;
		this.busGuide = busGuide;
		this.woncarGuide = woncarGuide;
		this.parkingGuide = parkingGuide;
		this.etcTrafficGuide = etcTrafficGuide;
		this.centerPlaceId = centerPlaceId;
	}

	public String getPartnerCenterId() {
		return partnerCenterId;
	}

	public void setPartnerCenterId(String partnerCenterId) {
		this.partnerCenterId = partnerCenterId;
	}

	public String getPartnerCenterName() {
		return partnerCenterName;
	}

	public void setPartnerCenterName(String partnerCenterName) {
		this.partnerCenterName = partnerCenterName;
	}

	public String getCeoName() {
		return ceoName;
	}

	public void setCeoName(String ceoName) {
		this.ceoName = ceoName;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getGuidePhoneNo() {
		return guidePhoneNo;
	}

	public void setGuidePhoneNo(String guidePhoneNo) {
		this.guidePhoneNo = guidePhoneNo;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getHompageUrl() {
		return hompageUrl;
	}

	public void setHompageUrl(String hompageUrl) {
		this.hompageUrl = hompageUrl;
	}

	public String getResultReceiveWayCd() {
		return resultReceiveWayCd;
	}

	public void setResultReceiveWayCd(String resultReceiveWayCd) {
		this.resultReceiveWayCd = resultReceiveWayCd;
	}

	public String getCorpNo() {
		return corpNo;
	}

	public void setCorpNo(String corpNo) {
		this.corpNo = corpNo;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getAddrress() {
		return addrress;
	}

	public void setAddrress(String addrress) {
		this.addrress = addrress;
	}

	public String getAddrressDetail() {
		return addrressDetail;
	}

	public void setAddrressDetail(String addrressDetail) {
		this.addrressDetail = addrressDetail;
	}

	public String getZipCd() {
		return zipCd;
	}

	public void setZipCd(String zipCd) {
		this.zipCd = zipCd;
	}

	public String getSpecialCheckUpYn() {
		return specialCheckUpYn;
	}

	public void setSpecialCheckUpYn(String specialCheckUpYn) {
		this.specialCheckUpYn = specialCheckUpYn;
	}

	public String getSpercialCheckupCountYn() {
		return spercialCheckupCountYn;
	}

	public void setSpercialCheckupCountYn(String spercialCheckupCountYn) {
		this.spercialCheckupCountYn = spercialCheckupCountYn;
	}

	public String getNhisBillYn() {
		return nhisBillYn;
	}

	public void setNhisBillYn(String nhisBillYn) {
		this.nhisBillYn = nhisBillYn;
	}

	public String getOnpayNy() {
		return onpayNy;
	}

	public void setOnpayNy(String onpayNy) {
		this.onpayNy = onpayNy;
	}

	public String getColonscopyYn() {
		return colonscopyYn;
	}

	public void setColonscopyYn(String colonscopyYn) {
		this.colonscopyYn = colonscopyYn;
	}

	public String getReservSmsServiceYn() {
		return reservSmsServiceYn;
	}

	public void setReservSmsServiceYn(String reservSmsServiceYn) {
		this.reservSmsServiceYn = reservSmsServiceYn;
	}

	public String getMainImageUrl() {
		return mainImageUrl;
	}

	public void setMainImageUrl(String mainImageUrl) {
		this.mainImageUrl = mainImageUrl;
	}

	public String getCompanyLogoUrl() {
		return companyLogoUrl;
	}

	public void setCompanyLogoUrl(String companyLogoUrl) {
		this.companyLogoUrl = companyLogoUrl;
	}

	public String getMinWaitingDay() {
		return minWaitingDay;
	}

	public void setMinWaitingDay(String minWaitingDay) {
		this.minWaitingDay = minWaitingDay;
	}

	public String getMapUrl() {
		return mapUrl;
	}

	public void setMapUrl(String mapUrl) {
		this.mapUrl = mapUrl;
	}

	public String getApinetworkingUrl() {
		return apinetworkingUrl;
	}

	public void setApinetworkingUrl(String apinetworkingUrl) {
		this.apinetworkingUrl = apinetworkingUrl;
	}

	public String getRegDt() {
		return regDt;
	}

	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}

	public String getPartnerCenterSt() {
		return partnerCenterSt;
	}

	public void setPartnerCenterSt(String partnerCenterSt) {
		this.partnerCenterSt = partnerCenterSt;
	}

	public String getPartnerCebterType() {
		return partnerCebterType;
	}

	public void setPartnerCebterType(String partnerCebterType) {
		this.partnerCebterType = partnerCebterType;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getSalesAdminId() {
		return salesAdminId;
	}

	public void setSalesAdminId(String salesAdminId) {
		this.salesAdminId = salesAdminId;
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public String getPlaceGuide() {
		return placeGuide;
	}

	public void setPlaceGuide(String placeGuide) {
		this.placeGuide = placeGuide;
	}

	public String getCheckupTimeGuide() {
		return checkupTimeGuide;
	}

	public void setCheckupTimeGuide(String checkupTimeGuide) {
		this.checkupTimeGuide = checkupTimeGuide;
	}

	public String getClosedGuide() {
		return closedGuide;
	}

	public void setClosedGuide(String closedGuide) {
		this.closedGuide = closedGuide;
	}

	public String getReservUqGuide() {
		return reservUqGuide;
	}

	public void setReservUqGuide(String reservUqGuide) {
		this.reservUqGuide = reservUqGuide;
	}

	public String getPartnerCenterGuide() {
		return partnerCenterGuide;
	}

	public void setPartnerCenterGuide(String partnerCenterGuide) {
		this.partnerCenterGuide = partnerCenterGuide;
	}

	public String getSubwayGuide() {
		return subwayGuide;
	}

	public void setSubwayGuide(String subwayGuide) {
		this.subwayGuide = subwayGuide;
	}

	public String getBusGuide() {
		return busGuide;
	}

	public void setBusGuide(String busGuide) {
		this.busGuide = busGuide;
	}

	public String getWoncarGuide() {
		return woncarGuide;
	}

	public void setWoncarGuide(String woncarGuide) {
		this.woncarGuide = woncarGuide;
	}

	public String getParkingGuide() {
		return parkingGuide;
	}

	public void setParkingGuide(String parkingGuide) {
		this.parkingGuide = parkingGuide;
	}

	public String getEtcTrafficGuide() {
		return etcTrafficGuide;
	}

	public void setEtcTrafficGuide(String etcTrafficGuide) {
		this.etcTrafficGuide = etcTrafficGuide;
	}

	public String getCenterPlaceId() {
		return centerPlaceId;
	}

	public void setCenterPlaceId(String centerPlaceId) {
		this.centerPlaceId = centerPlaceId;
	}

	@Override
	public String toString() {
		return "PartnerCenter [partnerCenterId=" + partnerCenterId + ", partnerCenterName=" + partnerCenterName
				+ ", ceoName=" + ceoName + ", phoneNo=" + phoneNo + ", guidePhoneNo=" + guidePhoneNo + ", fax=" + fax
				+ ", hompageUrl=" + hompageUrl + ", resultReceiveWayCd=" + resultReceiveWayCd + ", corpNo=" + corpNo
				+ ", area=" + area + ", addrress=" + addrress + ", addrressDetail=" + addrressDetail + ", zipCd="
				+ zipCd + ", specialCheckUpYn=" + specialCheckUpYn + ", spercialCheckupCountYn="
				+ spercialCheckupCountYn + ", nhisBillYn=" + nhisBillYn + ", onpayNy=" + onpayNy + ", colonscopyYn="
				+ colonscopyYn + ", reservSmsServiceYn=" + reservSmsServiceYn + ", mainImageUrl=" + mainImageUrl
				+ ", companyLogoUrl=" + companyLogoUrl + ", minWaitingDay=" + minWaitingDay + ", mapUrl=" + mapUrl
				+ ", apinetworkingUrl=" + apinetworkingUrl + ", regDt=" + regDt + ", partnerCenterSt=" + partnerCenterSt
				+ ", partnerCebterType=" + partnerCebterType + ", note=" + note + ", salesAdminId=" + salesAdminId
				+ ", adminId=" + adminId + ", placeGuide=" + placeGuide + ", checkupTimeGuide=" + checkupTimeGuide
				+ ", closedGuide=" + closedGuide + ", reservUqGuide=" + reservUqGuide + ", partnerCenterGuide="
				+ partnerCenterGuide + ", subwayGuide=" + subwayGuide + ", busGuide=" + busGuide + ", woncarGuide="
				+ woncarGuide + ", parkingGuide=" + parkingGuide + ", etcTrafficGuide=" + etcTrafficGuide
				+ ", centerPlaceId=" + centerPlaceId + "]";
	}

}
