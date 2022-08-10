package kmi.hc.hops.pc.resultcounsel.model;

public class ResultCounselDto {
	private int checkup_no;
	private String user_id, partner_center_name, partner_center_id, checkup_dt, result_counsel_type;
	
	public int getCheckup_no() {
		return checkup_no;
	}
	public void setCheckup_no(int checkup_no) {
		this.checkup_no = checkup_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
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
	public String getCheckup_dt() {
		return checkup_dt;
	}
	public void setCheckup_dt(String checkup_dt) {
		this.checkup_dt = checkup_dt;
	}
	
	@Override
	public String toString() {
		return "ResultCounselDto [checkup_no=" + checkup_no + ", user_id=" + user_id + ", partner_center_name="
				+ partner_center_name + ", partner_center_id=" + partner_center_id + ", checkup_dt=" + checkup_dt + "]";
	}
}
