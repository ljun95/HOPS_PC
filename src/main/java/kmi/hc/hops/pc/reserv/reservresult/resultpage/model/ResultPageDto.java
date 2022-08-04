package kmi.hc.hops.pc.reserv.reservresult.resultpage.model;

public class ResultPageDto {
	
	private int checkup_roster_no, checkup_no;
	private String roster_name, checkup_dt, checkup_div_cd, propos_title, partner_center_name,partner_center_id, checkup_propos_no;
	
	public int getCheckup_roster_no() {
		return checkup_roster_no;
	}
	public void setCheckup_roster_no(int checkup_roster_no) {
		this.checkup_roster_no = checkup_roster_no;
	}
	public String getRoster_name() {
		return roster_name;
	}
	public void setRoster_name(String roster_name) {
		this.roster_name = roster_name;
	}
	public String getCheckup_dt() {
		return checkup_dt;
	}
	public void setCheckup_dt(String checkup_dt) {
		this.checkup_dt = checkup_dt;
	}
	public String getCheckup_div_cd() {
		return checkup_div_cd;
	}
	public void setCheckup_div_cd(String checkup_div_cd) {
		this.checkup_div_cd = checkup_div_cd;
	}
	public String getPropos_title() {
		return propos_title;
	}
	public void setPropos_title(String propos_title) {
		this.propos_title = propos_title;
	}
	public String getPartner_center_name() {
		return partner_center_name;
	}
	public void setPartner_center_name(String partner_center_name) {
		this.partner_center_name = partner_center_name;
	}
	public String getPartner_center_id() {
		return partner_center_id;
	}
	public void setPartner_center_id(String partner_center_id) {
		this.partner_center_id = partner_center_id;
	}
	public int getCheckup_no() {
		return checkup_no;
	}
	public void setCheckup_no(int checkup_no) {
		this.checkup_no = checkup_no;
	}
	public String getCheckup_propos_no() {
		return checkup_propos_no;
	}
	public void setCheckup_propos_no(String checkup_propos_no) {
		this.checkup_propos_no = checkup_propos_no;
	}
	
	@Override
	public String toString() {
		return "ResultPageDto [checkup_roster_no=" + checkup_roster_no + ", roster_name="
				+ roster_name + ", checkup_dt=" + checkup_dt + ", checkup_div_cd=" + checkup_div_cd
				+ ", propos_title=" + propos_title + ", partner_center_name : " + partner_center_name +
				", partner_center_id" + partner_center_id + ", checkup_no" + checkup_no + ",checkup_propos_no" + checkup_propos_no +  "]";
		
	}


	
	
	
}
