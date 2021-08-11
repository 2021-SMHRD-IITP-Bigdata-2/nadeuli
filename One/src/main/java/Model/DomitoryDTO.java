package Model;

public class DomitoryDTO {
	
	private String d_name;
	private String city_name;
	private String d_address;
	private String d_tel;
	private String d_type;
	private String d_url;
	private String d_img;
	
	public DomitoryDTO() {}
	
	
	public DomitoryDTO(String d_name, String city_name, String d_address, String d_tel, String d_type, String d_url,
			String d_img) {
		this.d_name = d_name;
		this.city_name = city_name;
		this.d_address = d_address;
		this.d_tel = d_tel;
		this.d_type = d_type;
		this.d_url = d_url;
		this.d_img = d_img;
	}


	public String getD_name() {
		return d_name;
	}


	public void setD_name(String d_name) {
		this.d_name = d_name;
	}


	public String getCity_name() {
		return city_name;
	}


	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}


	public String getD_address() {
		return d_address;
	}


	public void setD_address(String d_address) {
		this.d_address = d_address;
	}


	public String getD_tel() {
		return d_tel;
	}


	public void setD_tel(String d_tel) {
		this.d_tel = d_tel;
	}


	public String getD_type() {
		return d_type;
	}


	public void setD_type(String d_type) {
		this.d_type = d_type;
	}


	public String getD_url() {
		return d_url;
	}


	public void setD_url(String d_url) {
		this.d_url = d_url;
	}


	public String getD_img() {
		return d_img;
	}


	public void setD_img(String d_img) {
		this.d_img = d_img;
	}


	@Override
	public String toString() {
		return "DomitoryDTO [d_name=" + d_name + ", city_name=" + city_name + ", d_address=" + d_address + ", d_tel="
				+ d_tel + ", d_type=" + d_type + ", d_url=" + d_url + ", d_img=" + d_img + "]";
	}
	
	
	
	
	
	

}
