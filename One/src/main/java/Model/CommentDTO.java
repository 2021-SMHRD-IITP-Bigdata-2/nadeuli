package Model;

public class CommentDTO {
	
	
	private int commen_no;
	private int commu_no;
	private String comment_text;
	private String email;
	private String comment_date;
	
	public CommentDTO() {}
	
	

	

	public CommentDTO(int commen_no, int commu_no, String comment_text, String email, String comment_date) {
		this.commen_no = commen_no;
		this.commu_no = commu_no;
		this.comment_text = comment_text;
		this.email = email;
		this.comment_date = comment_date;
	}

	public CommentDTO(int commu_no, String comment_text, String email) {
		this.commu_no = commu_no;
		this.comment_text = comment_text;
		this.email = email;
	}



	public int getCommen_no() {
		return commen_no;
	}



	public void setCommen_no(int commen_no) {
		this.commen_no = commen_no;
	}



	public int getCommu_no() {
		return commu_no;
	}



	public void setCommu_no(int commu_no) {
		this.commu_no = commu_no;
	}



	public String getComment_text() {
		return comment_text;
	}



	public void setComment_text(String comment_text) {
		this.comment_text = comment_text;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getComment_date() {
		return comment_date;
	}



	public void setComment_date(String comment_date) {
		this.comment_date = comment_date;
	}



	@Override
	public String toString() {
		return "CommentDTO [commen_no=" + commen_no + ", commu_no=" + commu_no + ", comment_text=" + comment_text
				+ ", email=" + email + ", comment_date=" + comment_date + "]";
	}
	
	
	
	
	

}
