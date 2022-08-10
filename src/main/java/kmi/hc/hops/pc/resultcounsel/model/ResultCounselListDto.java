package kmi.hc.hops.pc.resultcounsel.model;

public class ResultCounselListDto {
	
	private int checkup_roster_no, checkup_no, result_counsel_no;
	private String customer_id, user_id, roster_name, reg_dt, question_title, result_counsel_st, question_contents, answer_contents;	
	public int getCheckup_roster_no() {
		return checkup_roster_no;
	}
	public void setCheckup_roster_no(int checkup_roster_no) {
		this.checkup_roster_no = checkup_roster_no;
	}
	public int getCheckup_no() {
		return checkup_no;
	}
	public void setCheckup_no(int checkup_no) {
		this.checkup_no = checkup_no;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getRoster_name() {
		return roster_name;
	}
	public void setRoster_name(String roster_name) {
		this.roster_name = roster_name;
	}
	public String getReg_dt() {
		return reg_dt;
	}
	public void setReg_dt(String reg_dt) {
		this.reg_dt = reg_dt;
	}
	public String getQuestion_title() {
		return question_title;
	}
	public void setQuestion_title(String question_title) {
		this.question_title = question_title;
	}
	public String getResult_counsel_st() {
		return result_counsel_st;
	}
	public void setResult_counsel_st(String result_counsel_st) {
		this.result_counsel_st = result_counsel_st;
	}
	public int getResult_counsel_no() {
		return result_counsel_no;
	}
	public void setResult_counsel_no(int result_counsel_no) {
		this.result_counsel_no = result_counsel_no;
	}
	public String getQuestion_contents() {
		return question_contents;
	}
	public void setQuestion_contents(String question_contents) {
		this.question_contents = question_contents;
	}
	public String getAnswer_contents() {
		return answer_contents;
	}
	public void setAnswer_contents(String answer_contents) {
		this.answer_contents = answer_contents;
	}
	@Override
	public String toString() {
		return "ResultCounselListDto [checkup_roster_no=" + checkup_roster_no + ", checkup_no=" + checkup_no
				+ ", result_counsel_no=" + result_counsel_no + ", customer_id=" + customer_id + ", user_id=" + user_id
				+ ", roster_name=" + roster_name + ", reg_dt=" + reg_dt + ", question_title=" + question_title
				+ ", result_counsel_st=" + result_counsel_st + ", question_contents=" + question_contents
				+ ", answer_contents=" + answer_contents + "]";
	}


	




	
	

}
