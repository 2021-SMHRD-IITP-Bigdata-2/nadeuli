package Model;

public class CommuDTO {
	
	private int commu_no;
	private String title ;
	private String contesnts;
	private String commu_date;
	private String img_link;
	private String city_name;
	private String email;
	private int cnt;
	
	public CommuDTO() {}
	
	
	public CommuDTO(int commu_no, String title, String contesnts, String commu_date, String img_link, String city_name,
			String email, int cnt) {
		this.commu_no = commu_no;
		this.title = title;
		this.contesnts = contesnts;
		this.commu_date = commu_date;
		this.img_link = img_link;
		this.city_name = city_name;
		this.email = email;
		this.cnt = cnt;
	}


	public int getCommu_no() {
		return commu_no;
	}


	public void setCommu_no(int commu_no) {
		this.commu_no = commu_no;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getContesnts() {
		return contesnts;
	}


	public void setContesnts(String contesnts) {
		this.contesnts = contesnts;
	}


	public String getCommu_date() {
		return commu_date;
	}


	public void setCommu_date(String commu_date) {
		this.commu_date = commu_date;
	}


	public String getImg_link() {
		return img_link;
	}


	public void setImg_link(String img_link) {
		this.img_link = img_link;
	}


	public String getCity_name() {
		return city_name;
	}


	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public int getCnt() {
		return cnt;
	}


	public void setCnt(int cnt) {
		this.cnt = cnt;
	}


	@Override
	public String toString() {
		return "CommuDTO [commu_no=" + commu_no + ", title=" + title + ", contesnts=" + contesnts + ", commu_date="
				+ commu_date + ", img_link=" + img_link + ", city_name=" + city_name + ", email=" + email + ", cnt="
				+ cnt + "]";
	}
	
	
	
	

}
