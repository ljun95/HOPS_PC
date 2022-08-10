package kmi.hc.hops.pc.main.model;

public class MainDto {
	
	private int service_notice_no;
	private String customer_id, notice_type, notice_title, reg_dt, notice_st, update_dt;
	
	public int getService_notice_no() {
		return service_notice_no;
	}
	public void setService_notice_no(int service_notice_no) {
		this.service_notice_no = service_notice_no;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public String getNotice_type() {
		return notice_type;
	}
	public void setNotice_type(String notice_type) {
		this.notice_type = notice_type;
	}
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public String getReg_dt() {
		return reg_dt;
	}
	public void setReg_dt(String reg_dt) {
		this.reg_dt = reg_dt;
	}
	public String getNotice_st() {
		return notice_st;
	}
	public void setNotice_st(String notice_st) {
		this.notice_st = notice_st;
	} 
	public String getUpdate_dt() {
		return update_dt;
	}
	public void setUpdate_dt(String update_dt) {
		this.update_dt = update_dt;
	}
	
	@Override
	public String toString() {
		return "MainDto [service_notice_no=" + service_notice_no + ", customer_id="
				+ customer_id + ", notice_type=" + notice_type + ", notice_title=" + notice_title
				+ ", reg_dt=" + reg_dt + ", notice_st : " + notice_st +  ", update_dt" + update_dt + "]";		
		
	}
	
	
}
